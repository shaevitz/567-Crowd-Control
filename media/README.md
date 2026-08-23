# Course media sources

This directory contains lecture-ready media shared across the course. Keep source, license, and transformation notes here whenever a new asset is added.

## Circadian entrainment (Lecture 5)

### `circadian-across-life.png`

- **What it shows:** One day-night panorama connects cyanobacteria, a flowering plant, a fruit fly, and a mouse to the same daily environmental cycle.
- **Teaching use:** Opens the lecture with the biological reach and anticipatory value of circadian clocks before defining free-running and entrainment.
- **Source:** Original course illustration generated with the built-in OpenAI image-generation tool on 2026-08-23.
- **Generation prompt:** “Create a polished original illustration showing that organisms across biological kingdoms use circadian clocks to anticipate the daily light-dark cycle. Use one continuous 24-hour landscape transitioning from pre-dawn through daylight to dusk and moonlit night. Integrate four biological vignettes: microscopic cyanobacteria associated with daytime photosynthesis, a flowering plant opening toward daylight, a Drosophila fruit fly active around dawn or dusk, and a laboratory mouse active under moonlight. Connect them with a subtle circular timing arc. Use an elegant, biologically recognizable scientific editorial style and a restrained indigo, amber, blue, and green palette. Make it a 16:9 landscape readable when projected. No text, labels, equations, arrows, logos, watermark, mechanical clocks, anthropomorphism, or molecular machinery.”
- **Processing:** Copied from the generated PNG without further image edits. Notebook labels and biological explanations remain outside the image.

### `drosophila-light-pulse-actogram.png` and `drosophila-light-pulse-prc.png`

- **What they show:** A median double-plotted Drosophila locomotor actogram across light-dark cycles and constant darkness, including a light pulse and the resulting phase shift; and the corresponding phase-response curve for pulses delivered across circadian time.
- **Teaching use:** The actogram distinguishes an autonomous free-running rhythm from a light-driven output. The PRC returns at the end of the lecture to connect CRYPTOCHROME/TIMELESS resetting to the same phase-map logic developed with KaiABC.
- **Source:** Vinayak et al., “Exquisite Light Sensitivity of *Drosophila melanogaster* Cryptochrome,” *PLOS Genetics* 9 (2013), e1003615, Fig. 1. [doi:10.1371/journal.pgen.1003615](https://doi.org/10.1371/journal.pgen.1003615).
- **License:** Creative Commons Attribution 4.0 (CC BY 4.0).
- **Processing:** Downloaded from the publisher's large PNG and cropped into the actogram and PRC panels. Plot content was not otherwise altered.

## Phase-oscillator examples (Lecture 3)

### `mouse-running.mp4`

- **What it shows:** A mouse running from an overhead view.
- **Teaching use:** Treat the four limbs as oscillators. A gait is a stable pattern of phase differences among their stride cycles.
- **Source:** Original course video recorded by Joshua W. Shaevitz.
- **Processing:** The original H.264 video stream was copied from a MOV container into an MP4 container for reliable notebook playback. Timing, resolution, frame rate, and image content were unchanged.

## Temporal synchrony examples (Lecture 2)

### `human-crowd-millennium-bridge-sway.mp4`

- **What it shows:** A dense pedestrian crowd on London's Millennium Bridge visibly rocking from side to side with the moving bridge on its opening day in 2000. Nobody is dancing or deliberately marching in formation.
- **Teaching use:** The preferred human collective-oscillation example. Ask what is coupled to what: person–person, person–bridge, or both? Then ask whether synchronized upper-body sway proves synchronized footfalls. The historical interpretation emphasized spontaneous pedestrian synchrony, but later work shows that crowd-induced bridge instability can begin before footfall synchrony and that visible body sway alone is not sufficient evidence. This turns an impressive movie into a measurement problem rather than a canned answer.
- **Source:** mdepablo, [Millennium Bridge](https://www.youtube.com/watch?v=eAXVa__XWZ8), uploaded 2007; archival footage of the bridge's opening day. Scientific context: Strogatz et al., “Theoretical mechanics: Crowd synchrony on the Millennium Bridge,” *Nature* 438 (2005), 43–44, [doi:10.1038/438043a](https://doi.org/10.1038/438043a); and Bocian et al., “Emergence of the London Millennium Bridge instability without synchronisation,” *Nature Communications* 12 (2021), 7223, [doi:10.1038/s41467-021-27568-y](https://doi.org/10.1038/s41467-021-27568-y).
- **Rights note:** The YouTube upload does not state an open redistribution license, and the underlying archival-footage rights are not identified. Retained for private classroom teaching with full source attribution; do not include this file in a public repository without resolving permission.
- **Processing:** Complete 60.99-second source transcoded from AV1/Opus to H.264/AAC for reliable notebook playback and scaled from 320 × 240 to 640 × 480 for projection. Timing and playback speed were not changed; scaling does not add image detail.

### `fiddler-crab-synchronous-waving.mp4`

- **What it shows:** Male *Uca mjoebergi* (now *Austruca mjoebergi*) producing synchronized courtship claw waves.
- **Teaching use:** Ask whether synchrony is cooperative. The associated robot experiments instead support an origin in competition to be the slightly leading male.
- **Source:** Movie S1 from Reaney, Sims, Sims, Jennions, and Backwell, “Experiments with robots explain synchronized courtship in fiddler crabs,” *Current Biology* 18 (2008), R62–R63. [doi:10.1016/j.cub.2007.11.047](https://doi.org/10.1016/j.cub.2007.11.047); original supplementary filename `1-s2.0-S0960982207022865-mmc2.mp4`.
- **Rights note:** Publisher-hosted supplementary movie. Retained here for classroom teaching with full citation; the supplementary-file page does not state an open redistribution license. Recheck permissions before making this repository public.
- **Processing:** Renamed only; no change to the video stream.

### `cardiomyocyte-monolayer-calcium-hd.mp4`

- **What it shows:** Spontaneous calcium activations across a confluent monolayer of human iPSC-derived atrial cardiomyocytes loaded with Calbryte 520AM. The cellular texture remains visible while coordinated activation is conspicuous.
- **Teaching use:** Ask what the fluorescence reports, whether collective activation occurs everywhere at exactly the same time or propagates across the field, and whether simultaneous calcium elevation necessarily implies simultaneous mechanical contraction.
- **Source:** Supplementary Movie 2 from Saraithong et al., “AI-guided laser purification of human iPSC-derived cardiomyocytes for next-generation cardiac cell manufacturing,” *Communications Biology* 8 (2025), 745. [doi:10.1038/s42003-025-08162-0](https://doi.org/10.1038/s42003-025-08162-0).
- **License:** Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 (CC BY-NC-ND 4.0).
- **Processing and redistribution restriction:** Cropped from the original 1920 × 1080 frame to the 1146 × 846 microscope field to remove the publisher's caption and blank margins; timing and playback speed were not changed.

### `firefly-synchrony.mp4`

- **What it shows:** Several successive collective flash bursts of *Photinus carolinus* in Great Smoky Mountains National Park, including the dark intervals between bursts.
- **Teaching use:** The anchor example for moving from apparent synchrony to event data, raster plots, binning, and scalar metrics.
- **Source:** Sarfati, Hayes, and Peleg, “Three-dimensional time-resolved flash occurrences of swarming *Photinus carolinus* fireflies in their natural habitat,” Dryad dataset (2023). [doi:10.5061/dryad.2547d7wvn](https://doi.org/10.5061/dryad.2547d7wvn); source movie `20200611_GRSM_A1_0035.MP4`.
- **License:** Creative Commons Zero 1.0 (CC0 1.0), the Dryad dataset license.
- **Processing:** Excerpt from 00:40:13 through 00:40:45; scaled from 1920 × 1080 to 1280 × 720, transcoded to H.264 MP4, audio removed, and display gamma set to 1.45 so flashes remain visible on a classroom projector. Timing and playback speed were not changed. Use the unmodified source movie for quantitative analysis.

### `firefly-synchrony-analysis.mp4`

- **What it shows:** The same 32-second *P. carolinus* excerpt as `firefly-synchrony.mp4`, without the display gamma adjustment.
- **Teaching use:** Source frames for the Lecture 4 background-subtraction, thresholding, connected-component, and two-dimensional detection-table demonstration.
- **Source:** Sarfati, Hayes, and Peleg, Dryad dataset DOI [10.5061/dryad.2547d7wvn](https://doi.org/10.5061/dryad.2547d7wvn); source movie `20200611_GRSM_A1_0035.MP4`.
- **License:** Creative Commons Zero 1.0 (CC0 1.0), the Dryad dataset license.
- **Processing:** Excerpt from 00:40:13 through 00:40:45; scaled from 1920 × 1080 to 1280 × 720, transcoded to H.264 MP4, and audio removed. No gamma or other brightness adjustment was applied; timing and playback speed were unchanged.

### `firefly-photinus-carolinus-closeup.jpg`

- **What it shows:** A close-up of an adult *Photinus carolinus*, with the pale margins of the wing covers and the red patches beneath the pronotum visible.
- **Teaching use:** A species-level visual anchor for the natural-history introduction immediately before the class moves from observable flashes to the event-data table.
- **Source:** Abbott Nature Photography, via [Discover Life in America](https://dlia.org/event/fireflies-2022/synchronous-firefly-photinus-carolinus-credit-abbott-nature-photography/).
- **Processing:** Downloaded at 1200 × 900 pixels; no crop, color adjustment, or other transformation.

## Paper figures (Lecture 2)

### `firefly-stereo-camera-geometry.png`

- **What it shows:** Panels 1a–b compare the overlapping fields of view of two planar cameras with two 360° cameras and show the two-view ray geometry used to triangulate one world point.
- **Teaching use:** The planar-camera drawing in panel (a), left, is the relevant geometry for the 2021 ridge recordings. Panel (b) was drawn for the authors' earlier 360° setup but illustrates the same stereo principle: one detection in each calibrated camera defines two viewing rays whose intersection estimates a 3D position. This is a conceptual schematic, not a literal map or photograph of the 2021 Sony-camera placement.
- **Source:** Sarfati, Hayes, Sarfati, and Peleg, “Spatio-temporal reconstruction of emergent flash synchronization in firefly swarms via stereoscopic 360-degree cameras,” *Journal of the Royal Society Interface* 17 (2020), 20200179, Fig. 1a–b. [doi:10.1098/rsif.2020.0179](https://doi.org/10.1098/rsif.2020.0179).
- **License:** Creative Commons Attribution 4.0 (CC BY 4.0).
- **Processing:** Rendered from page 2 of the official Europe PMC PDF at 600 dpi, cropped to panels a–b, and arranged side by side for a notebook-friendly landscape layout without changing the panel content. Output dimensions are 3387 × 1000 pixels.

### `firefly-paper-figure-1-methods.png` and `firefly-paper-figure-1-results.png`

- **What they show:** The first image contains habitat and stereo reconstruction panels A–D. The second contains nightly activity, representative count signals, and fluctuation scaling panels E–H.
- **Teaching use:** The notebook first displays A–D while discussing the measurement pipeline, then reveals E–H after students have proposed their own synchrony metrics.
- **Source:** Sarfati, Hayes, and Peleg, “Self-organization in natural swarms of *Photinus carolinus* synchronous fireflies,” *Science Advances* 7 (2021), eabg9259. [doi:10.1126/sciadv.abg9259](https://doi.org/10.1126/sciadv.abg9259).
- **License:** Creative Commons Attribution-NonCommercial 4.0 (CC BY-NC 4.0).
- **Processing:** Rendered directly from page 2 of the publisher PDF at 600 dpi, then cropped to the A–D and E–H panel rows without altering the figure content. The output dimensions are 3680 × 890 and 3680 × 930 pixels. These replace the earlier 440 × 217 web thumbnail.

### `firefly-paper-figure-2-propagation.png`

- **What it shows:** Relative flash timing within bursts, the spatial progression of early to late flashes across the ridge, and the increase in median separation that defines the propagation speed.
- **Teaching use:** Connects the temporal onset of synchrony to the paper's proposed local relay mechanism.
- **Source:** Sarfati, Hayes, and Peleg, “Self-organization in natural swarms of *Photinus carolinus* synchronous fireflies,” *Science Advances* 7 (2021), eabg9259, Fig. 2. [doi:10.1126/sciadv.abg9259](https://doi.org/10.1126/sciadv.abg9259).
- **License:** Creative Commons Attribution-NonCommercial 4.0 (CC BY-NC 4.0).
- **Processing:** Extracted directly from page 3 of the publisher PDF with `pdfimages`, preserving the original panel content. Output dimensions are 1453 × 854 pixels.
