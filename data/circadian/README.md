# Circadian data

This directory contains the compact teaching datasets used by Lecture 6.

## Leypunskiy et al. 2017

The files under `source/` retain the filenames supplied with Leypunskiy et al., “The cyanobacterial circadian clock follows midday in vivo and in vitro,” *eLife* 6:e23539 (2017), DOI 10.7554/eLife.23539. They were downloaded from the article's public source-data links on 2026-08-23. The article metadata returned by the eLife API is preserved as `elife-23539-article.json` so each file can be traced to its figure and DOI.

Lecture 5 uses the Figure 2 source data for metabolically driven KaiABC reactions and the phase of peak KaiC phosphorylation as simulated day length changes. The original source-data files are not modified.

The plotted observable is the percentage of KaiC subunits carrying at least one phosphate, not mean occupancy of the two phosphosites. With the four subunit states U, T, ST, S, the numerator is T + ST + S and the denominator is total KaiC. This convention agrees with the decomposition of total phosphorylation in Rust et al., [“Ordered phosphorylation governs oscillation of a three-protein circadian clock”](https://doi.org/10.1126/science.1148596), Figure 1B: unphosphorylated KaiC is 100% minus total phosphorylation. The two-site occupancy formula used in an earlier lecture draft was a different observable and has been removed.

Figure 2 source-data file 1 contains the phosphorylation traces. File 2 supplies fitted peak times for the third cycle with period held at 24 h; Lecture 5 selects the six `%P-KaiC` rows. Their `peak_time_error` values are errors in fitted phase, not independent biological-replicate standard deviations. Dawn-, midday-, and dusk-tracking predictions are compared by their slopes (0, 1/2, 1), allowing a constant offset from each environmental landmark. Input strips depict nominal day/night ATP fractions (approximately 1 and 0.25); they are imposed conditions, not an independently measured ATP time series.

## Rust et al. 2011

The September 6 scope revision removes the detailed KaiABC pulse traces, PRC, and repeated-pulse map from the main Lecture 5 sequence. Their data and provenance remain available for optional use. The control trace still supplies the lecture's experimental free-running rhythm.

`rust-2011-figure-2-traces-digitized.csv` and `rust-2011-figure-2-prc-digitized.csv` are teaching tables digitized from Figure 2A-C of Rust, Golden, and O'Shea, “Light-driven changes in energy metabolism directly entrain the cyanobacterial circadian oscillator,” *Science* 331:220-223 (2011), DOI 10.1126/science.1197243.

The author-hosted PDF was rendered at 400 dpi. Marker centers were detected from the vector-rendered colors and marker interiors, then mapped to the published axes. Values therefore reproduce the plotted measurements rather than instrument-level source data. The two pulse traces correspond to the blue and red conditions in Figure 2A-B. The second pulse occurs in a relatively insensitive portion of the cycle and is described as refractory in the lecture. The PRC table uses the plotted convention that positive values are phase advances.

The September 4 source audit corrected the treatment shading to approximately 26–31 h and 34–39 h, read from the published Figure 2A/B axes. The free-running control peaks occur near 28 h and 54 h in the plotted record, giving a teaching estimate of 26 h for the period. PRC pulse times are converted to radians with this period and phase zero at the 28 h peak; response hours use the same 26 h conversion. They must not be wrapped modulo 24 h merely because the environmental day is 24 h. The source paper estimates lasting shifts by sinusoidal fitting; the double arrow between next peaks in the teaching figure illustrates the sign of an advance rather than re-estimating the published fitted PRC.

The repeated-pulse map uses only the measured descending branch from pulse times 30–46 h, interpolated without extrapolation. It uses the complete measured fixed-strength reset (epsilon = 1), not a dose-rescaled infinitesimal response. The finite five-hour treatment is replaced by an effective kick equal to its lasting shift relative to the unperturbed clock; free evolution during the pulse is already included in the reference trajectory. The 26 h clock driven every 24 h needs a reset equivalent to two hours of free-running advance. Iteration demonstrates local stability on this measured branch; it does not establish global entrainment or fit the continuous-forcing model to KaiABC.

## Konopka and Benzer 1971

`konopka-benzer-1971-period-mutants.csv` records the female locomotor periods reported in Konopka and Benzer, “Clock mutants of *Drosophila melanogaster*,” *PNAS* 68:2112-2116 (1971), DOI 10.1073/pnas.68.9.2112. The uncertainties and sample sizes are transcribed from the paper; `per0` was arrhythmic and therefore has no period estimate.

## Human rhythms: Wyatt et al. 1999

`human-wyatt-1999-digitized.csv` reproduces selected panels of Wyatt et al., “Circadian temperature and melatonin rhythms, sleep, and neurobehavioral function in humans living on a 20-h day,” [DOI 10.1152/ajpregu.1999.277.4.R1152](https://doi.org/10.1152/ajpregu.1999.277.4.R1152). These are approximate digitizations of published group figures, not participant-level source data. All internal-phase axes use 24 circadian hours per cycle, with phase zero at the temperature minimum; this does not assert a 24-hour intrinsic period.

The Lecture 6 notebook uses the digitized mean melatonin and temperature profiles to introduce physiological phase, the sleep-efficiency means and SEM to show circadian variation in sleep, and the reaction-time means and SEM to separate circadian phase from elapsed wakefulness. Stored decimals support plotting and inversion of the source-image calibration, not additional measurement precision.
