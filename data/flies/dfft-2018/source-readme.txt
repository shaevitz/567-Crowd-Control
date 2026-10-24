All data used to produce the figures in the article "The Density-Functional Fluctuation Theory of Crowds" are available here in the Matlab format. 

##FORMAT OF DATA
Within each subfolder, you will find "occ" variables. The occ variable is of dimension [Number of observations x bin number]. The corresponding locations of the bins in the experiment can be found in the "bins" variable. For example, the 5th column of "occ" catalogs the number of flies found in the bins labelled with the value 5. You can see this bin via the Matlab command "imagesc(bins==5)".

All analysis was checked on a PC running Windows 10 and Matlab 2017b and takes less than 30 seconds on a typical PC.

##Figure 2:
The local densitied for the quasi-1D heated rectangle experiment are available here. Calculation of the pseudo-free energy as described in the paper for each bin will provide the plot shown in figure 2f. By performing linear shifts on all those pseudo-free energies for each individual bin, you can obtain figure 2g.

##Figure 3:
For the predictions shown in figure 3, the frustration extracted from the rectangular experiment can be used to predict the results from the other three experiments. To see an example, open the folder for figure 3. Add the subfolder "subfunctions" to your Matlab path, then run the script "DFFT_prediction_graph" to reproduce the plots shown in the paper. 
NOTE: For the latest version of the code to analyze DFFT density data, see the github repository cited in the paper.

##Figure 4:
Find here the density measurements for the four behaviors shown in figure 4. Open the subfolder "Figure 4", add the subfunctions folder to your path, then run the script "plot_behaviors" to regenerate the analysis and graphs. Note that one point with a very large uncertainty bar corresponds to an unobserved density so that point and the one following it were excluded from the plot shown in the paper.
NOTE: For the latest version of the code to analyze DFFT density data, see the github repository cited in the paper.