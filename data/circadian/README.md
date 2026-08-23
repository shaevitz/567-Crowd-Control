# Circadian data

This directory contains the compact teaching datasets used by Lecture 5.

## Leypunskiy et al. 2017

The files under `source/` retain the filenames supplied with Leypunskiy et al., “The cyanobacterial circadian clock follows midday in vivo and in vitro,” *eLife* 6:e23539 (2017), DOI 10.7554/eLife.23539. They were downloaded from the article's public source-data links on 2026-08-23. The article metadata returned by the eLife API is preserved as `elife-23539-article.json` so each file can be traced to its figure and DOI.

Lecture 5 uses the Figure 2 source data for metabolically driven KaiABC reactions and the phase of peak KaiC phosphorylation as simulated day length changes. The original source-data files are not modified.

## Rust et al. 2011

`rust-2011-figure-2-traces-digitized.csv` and `rust-2011-figure-2-prc-digitized.csv` are teaching tables digitized from Figure 2A-C of Rust, Golden, and O'Shea, “Light-driven changes in energy metabolism directly entrain the cyanobacterial circadian oscillator,” *Science* 331:220-223 (2011), DOI 10.1126/science.1197243.

The author-hosted PDF was rendered at 400 dpi. Marker centers were detected from the vector-rendered colors and marker interiors, then mapped to the published axes. Values therefore reproduce the plotted measurements rather than instrument-level source data. The two pulse traces correspond to the blue and red conditions in Figure 2A-B. The second pulse occurs in a relatively insensitive portion of the cycle and is described as refractory in the lecture. The PRC table uses the plotted convention that positive values are phase advances.

## Konopka and Benzer 1971

`konopka-benzer-1971-period-mutants.csv` records the female locomotor periods reported in Konopka and Benzer, “Clock mutants of *Drosophila melanogaster*,” *PNAS* 68:2112-2116 (1971), DOI 10.1073/pnas.68.9.2112. The uncertainties and sample sizes are transcribed from the paper; `per0` was arrhythmic and therefore has no period estimate.
