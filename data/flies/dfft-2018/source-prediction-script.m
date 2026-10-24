%Run this script to generate the prediction graphs for figure 3. Be sure to
%add in the subfunctions code.

load('All densities for figure 3.mat')

%Experiment information. Relative areas of bins are used to convert the
%frustration for a discrete density from the rectangular experiment to the
%experiments to be predicted.
Area_rectangle = 0.1493;
Area_square = 0.1389;
Area_stairs = 0.6065;
Area_C = 0.3514;

%Number of flies in high density experiments
N_square = 125;
N_stairs = 220;
N_C = 189;

%Extract Vexations from low density observations.
[~,~,V_square,CovMat_square,~,VError_square]=extract_params_DFFT(occ_square_1fly);
[~,~,V_stairs,CovMat_stairs,~,VError_stairs]=extract_params_DFFT(occ_stairs_3flies);
[~,~,V_C,CovMat_C,~,VError_C]=extract_params_DFFT(occ_C_2flies);

%Extract frustration from the rectangular shaped chamber.
[~,f_rectangle,~,CovMat_rectangle,fError_rectangle,~]=extract_params_DFFT(occ_rectangle_96flies);

%Convert the frustration for the new bin size since frustration has a
%factor of the area of a bin in it.
[f_square ,fError_square] = CoarseFrustration(f_rectangle, fError_rectangle, Area_rectangle, Area_square, 0);
CovMat_f_square = CovMat_rectangle; CovMat_f_square(ismember(CovMat_square,fError_rectangle)) = 0;
[f_stairs ,fError_stairs] = CoarseFrustration(f_rectangle, fError_rectangle, Area_rectangle, Area_stairs, 0);
CovMat_f_stairs = CovMat_rectangle; CovMat_f_stairs(ismember(CovMat_stairs,fError_rectangle)) = 0;
[f_C ,fError_C] = CoarseFrustration(f_rectangle, fError_rectangle, Area_rectangle, Area_C, 0);
CovMat_f_C = CovMat_rectangle; CovMat_f_C(ismember(CovMat_C,fError_rectangle)) = 0;

%DFFT Predictions
[predictedAv_square, errorbars_square, ~] = predav(f_square,V_square,CovMat_rectangle,CovMat_square,N_square,0,0);
[predictedAv_stairs, errorbars_stairs, ~] = predav(f_stairs,V_stairs,CovMat_rectangle,CovMat_stairs,N_stairs,0,0);
[predictedAv_C, errorbars_C, ~] = predav(f_C,V_C,CovMat_rectangle,CovMat_C,N_C,0,0);

%Naive Poisson Vexations
[V_Poiss_square,CovMat_Poiss_square,VPoissError_square]=extract_params_Poiss(occ_square_1fly,0);
[V_Poiss_stairs,CovMat_Poiss_stairs,VPoissError_stairs]=extract_params_Poiss(occ_stairs_3flies,0);
[V_Poiss_C,CovMat_Poiss_C,VPoissError_C]=extract_params_Poiss(occ_C_2flies,0);

%Naive Predictions
[predictedAvNaive_square, errorbarsNaive_square, ~] = predavNaive(V_Poiss_square,CovMat_Poiss_square,N_square);
[predictedAvNaive_stairs, errorbarsNaive_stairs, ~] = predavNaive(V_Poiss_stairs,CovMat_Poiss_stairs,N_stairs);
[predictedAvNaive_C, errorbarsNaive_C, ~] = predavNaive(V_Poiss_C,CovMat_Poiss_C,N_C);

%Observed average densities
[tau_square,~,~,~,~,~]=extract_params_DFFT(occ_square_125flies);
[tau_stairs,~,~,~,~,~]=extract_params_DFFT(occ_stairs_220flies);
[tau_C,~,~,~,~,~]=extract_params_DFFT(occ_C_189flies);
[~, ~, ExpAv_square, Expmeanerr_square]=experimentAnalysis(occ_square_125flies',tau_square);
[~, ~, ExpAv_stairs, Expmeanerr_stairs]=experimentAnalysis(occ_stairs_220flies',tau_stairs);
[~, ~, ExpAv_C, Expmeanerr_C]=experimentAnalysis(occ_C_189flies',tau_C);

figure
hold on
set(gca,'FontSize',20)
xlabel('Observed Average, N')
ylabel('Poisson Prediction, N')
errorbar(ExpAv_square,predictedAvNaive_square,Expmeanerr_square,Expmeanerr_square, errorbarsNaive_square, errorbars_square,'.')
errorbar(ExpAv_stairs,predictedAvNaive_stairs,Expmeanerr_stairs,Expmeanerr_stairs, errorbarsNaive_stairs, errorbars_stairs,'.')
errorbar(ExpAv_C,predictedAvNaive_C,Expmeanerr_C,Expmeanerr_C, errorbarsNaive_C, errorbars_C,'.')
plot([0 30],[0 30])
legend('square','stairs','C')
set(gca,'XLim',[0 30])
set(gca,'YLim',[0 30])

figure
hold on
set(gca,'FontSize',20)
xlabel('Observed Average, N')
ylabel('DFFT Prediction, N')
errorbar(ExpAv_square,predictedAv_square,Expmeanerr_square,Expmeanerr_square, errorbars_square, errorbars_square,'.')
errorbar(ExpAv_stairs,predictedAv_stairs,Expmeanerr_stairs,Expmeanerr_stairs, errorbars_stairs, errorbars_stairs,'.')
errorbar(ExpAv_C,predictedAv_C,Expmeanerr_C,Expmeanerr_C, errorbars_C, errorbars_C,'.')
plot([0 30],[0 30])
legend('square','stairs','C')
set(gca,'XLim',[0 30])
set(gca,'YLim',[0 30])
