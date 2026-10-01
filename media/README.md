# Course media sources

This directory contains lecture-ready media shared across the course. Keep source, license, and transformation notes here whenever a new asset is added.

## Circadian entrainment (Lecture 5)

### `circadian-across-life.png`

- **What it shows:** One day-night panorama connects cyanobacteria, a flowering plant, a fruit fly, and a mouse to the same daily environmental cycle.
- **Teaching use:** Opens the lecture with the biological reach and anticipatory value of circadian clocks before defining free-running and entrainment.
- **Source:** Original course illustration generated with the built-in OpenAI image-generation tool on 2026-08-23.
- **Generation prompt:** “Create a polished original illustration showing that organisms across biological kingdoms use circadian clocks to anticipate the daily light-dark cycle. Use one continuous 24-hour landscape transitioning from pre-dawn through daylight to dusk and moonlit night. Integrate four biological vignettes: microscopic cyanobacteria associated with daytime photosynthesis, a flowering plant opening toward daylight, a Drosophila fruit fly active around dawn or dusk, and a laboratory mouse active under moonlight. Connect them with a subtle circular timing arc. Use an elegant, biologically recognizable scientific editorial style and a restrained indigo, amber, blue, and green palette. Make it a 16:9 landscape readable when projected. No text, labels, equations, arrows, logos, watermark, mechanical clocks, anthropomorphism, or molecular machinery.”
- **Processing:** Copied from the generated PNG without further image edits. Notebook labels and biological explanations remain outside the image.

### `kaiabc-cell-free-oscillator.png`

- **What it shows:** Purified KaiA, KaiB, KaiC, and ATP diffusing together in a cell-free test tube, with a molecular close-up of the approximately 24-hour KaiC phosphorylation cycle.
- **Teaching use:** Restored at Josh's request after the Lecture 5 test-tube introduction. The cartoon provides the molecular overview; the following two-site/four-state diagram explains the specific phosphorylation states.
- **Source:** Original course illustration generated with the built-in OpenAI image-generation tool on 2026-09-03.
- **Generation prompt:** “Create a polished 16:9 scientific illustration of the reconstituted cyanobacterial KaiABC circadian oscillator. Show purified KaiA, KaiB, KaiC, and ATP entering and freely diffusing through a transparent test tube. Add a magnified molecular cycle in which KaiA promotes KaiC phosphorylation, KaiB later binds and sequesters KaiA, and KaiC dephosphorylates and returns to its starting state over approximately 24 hours. Use a clean white background, a restrained indigo, amber, blue, green, and coral palette, and only the exact labels KaiA, KaiB, KaiC, ATP, and ≈24 h. Show no cell, DNA, transcription machinery, generic flowchart boxes, clocks, gears, or watermark.”
- **Processing:** Copied from the generated PNG without further image edits.

### `kaiabc-delayed-feedback.svg`

- **What it shows:** A course-authored feedback diagram for the KaiABC oscillator: free KaiA promotes phosphorylation; delayed progression produces the late $C_S$ state; the KaiB–$C_S$ complex sequesters KaiA through an explicit inhibition bar; dephosphorylation releases KaiA.
- **Teaching use:** The simple causal diagram follows the ordered KaiC state cycle in Lecture 6 and prepares the finite-KaiA kinetic model.
- **Source:** Editable SVG created for the lecture; no external image source.

### `stricker-negative-feedback-circuit.svg` and `stricker-2008-negative-feedback-traces.png`

- **Source:** Stricker et al., “A fast, robust and tunable synthetic gene oscillator,” *Nature* 456, 516–519 (2008), [DOI 10.1038/nature07389](https://doi.org/10.1038/nature07389). The original paper plus supplementary information was retrieved from an [iGEM-hosted copy](https://static.igem.org/mediawiki/2013/7/7c/HUST-5.pdf) on September 22, 2026; SHA-256 `a03ed006a549173f0a70f98d8610a32a6af96102607e8b1d729eb0cf9db23655`.
- **Circuit:** Course-authored editable SVG based on Figure 3a and the supplementary construction methods. The negative-feedback-only JS013 strain has two separate transcriptional units: the hybrid pLlacO-1 promoter drives ssrA-tagged lacI on a p15A plasmid and ssrA-tagged yemGFP on a ColE1 plasmid. This promoter combines phage lambda pL with lacO operator sites and requires no AraC activation. Active LacI represses both copies. Expression, folding, and multimerization supply an effective delay. The diagram omits plasmid backbones, degradation tags, and IPTG for clarity.
- **Experiment:** Original Supplementary Figure 5B, supplementary page 9 (combined PDF page 14). Single-cell GFP fluorescence from JS013 at 0.6 mM IPTG; the authors applied Savitzky–Golay smoothing. All displayed trajectories, axes, points, and colors are retained. Only the surrounding page and unrelated panel A were removed; no traces were generated or digitized.
- **Crop:** `pdftoppm -f 14 -l 14 -scale-to 3600 -x 740 -y 1140 -W 1310 -H 810 -png -singlefile INPUT.pdf stricker-2008-negative-feedback-traces`. Output is 1310 × 810 pixels, displayed at 760 pixels in the notebook.
- **Equation:** Supplementary equation (6), supplementary pages 28–29 (combined PDF pages 33–34). The notebook renames the paper's maximum production rate K to v_max to avoid colliding with the course's coupling strength K; the delayed Hill repression and linear degradation terms are unchanged. This is the minimal architectural model, not a fit to the displayed fluorescence trajectories.
- **Attribution:** The circuit is original course artwork; the experimental panel retains the original article's rights and is excluded from the course's original-content licenses.

### `kaiabc-kaia-sequestration.png`

- **What it shows:** KaiA binding to CII tails promotes U → T → ST phosphorylation. The representative pathway then separates T-phosphate loss (ST → S), binding of fold-switched KaiB to CI, capture of KaiA by CI-bound KaiB, and S-phosphate loss (S → U) followed by protein release. The S-P marker stays unchanged during KaiA capture. KaiC remains an intact hexamer throughout.
- **Teaching use:** Connects the four-state diagram to KaiA sequestration in Lecture 5. Purple KaiA, green KaiB, and blue KaiC retain the test-tube cartoon's molecular style. CII and CI labels distinguish activating KaiA–CII-tail binding from inhibitory KaiA–KaiB–CI assembly.
- **Source:** Original course illustration corrected with the built-in OpenAI image-generation tool on 2026-09-06. Binding logic follows [Chang et al. (2015)](https://pubmed.ncbi.nlm.nih.gov/26113641/) and [Tseng et al. (2017)](https://doi.org/10.1126/science.aag2516); the dominant phosphoform progression follows [Rust et al. (2007)](https://doi.org/10.1126/science.1148596).
- **Interpretation:** Qualitative representative contacts and a dominant S-state pathway, not atomic structures, complete occupancy counts, or an obligatory sequence for every hexamer. Binding, conformational changes, and phosphorylation can overlap and cooperate. T-P and S-P identify the two phosphosites of one representative CII subunit; their placement is schematic, not an atomic coordinate or the hexamer's total phosphate count. The diagram identifies the binding-competent fold of KaiB but omits its switching kinetics, CI nucleotide states, and cooperative assembly. KaiB is not a phosphatase. The release step dissociates KaiA and KaiB, not KaiC's six subunits.
- **Processing:** Replaced the preceding four-stage asset at Josh's request. Corrected the phosphate loss previously implied by the “KaiA capture” arrow and made the CII-tail and CI binding sites explicit. Prior versions remain recoverable in Git history. Copied the final generated PNG without further image processing.
- **Remake prompt:**

```text
Use case: scientific-educational.
Edit target: supplied KaiABC sequestration cartoon. Completely replace its THREE-stage composition with FOUR clearly separated molecular stages while preserving the same recognizable protein graphics, colors, softly shaded molecular surface texture, white background, and clean black sans-serif typography. This is a teaching correction, not an ornamental redesign.
Critical lesson: KaiB binds KaiC without needing KaiA attached; KaiC-bound KaiB can then capture KaiA. Distinguish DIRECT activating KaiA–KaiC binding from INHIBITORY KaiA–KaiB binding.
Canvas: broad landscape approximately 2:1, four equal columns in one left-to-right row, spacious margins. A small centered identity key across the top: the same purple two-lobed "KaiA", green "KaiB", blue "KaiC" graphics. No overall title, panel boxes, period number, or equations.
KaiC: keep the recognizable blue six-subunit ring, but show a consistent slightly oblique double-tier hexamer view in every stage: the two stacked domain rings of ONE KaiC hexamer, not two independent proteins. The upper CII tier is where phosphorylation and activating KaiA binding occur; the lower CI tier is where KaiB binds. Do NOT print CI/CII labels; this anatomical separation should be visual, not an extra lesson.
Stage 1 heading exactly "1. KaiA stimulates KaiC". Show ONE purple KaiA dimer physically attached to the upper outer edge / C-terminal tail region of the blue KaiC, with NO green KaiB at that contact. Purple must touch blue, not hover with an activation arrow. Two gold circular P markers on upper blue tier. Bottom text exactly "Direct KaiA–KaiC binding".
Stage 2 heading exactly "2. KaiB binds KaiC". Show phosphorylated blue KaiC with ONE green KaiB attached to the lower outer edge, with NO PURPLE PROTEIN ATTACHED to green or blue. One purple KaiA floating well away above/right in this column, visibly separate, with a small plain label "free KaiA". Four gold P markers on upper blue tier. Bottom text exactly "KaiB can bind without KaiA".
Stage 3 heading exactly "3. KaiA is sequestered". Preserve the blue+green contact from stage 2, but NOW physically attach the purple KaiA to the exposed outer face of GREEN KaiB. Green is the bridge touching both blue and purple. The purple is clearly at a different location from the activating top binding site in stage 1; no purple at that activating site. Two gold P markers remain on upper blue tier. Bottom text exactly "Bound KaiA cannot stimulate KaiC".
Stage 4 heading exactly "4. The complex disassembles". Blue KaiC with NO gold P markers. Green KaiB and purple KaiA float separately away from blue and away from EACH OTHER. Neither green nor purple is bound. Use small outward arrows only if needed for release. Bottom text exactly "KaiA is available again".
Connect the four stages with simple charcoal rightward progression arrows. Over the arrow from 2 to 3 label exactly "KaiA capture". Over the arrow from 3 to 4 label exactly "KaiC dephosphorylates". Keep these away from molecules and other labels. A fine return arrow along the bottom from stage 4 to stage 1 closes the cycle, no text on it.
Maintain one depicted purple dimer, one depicted green KaiB when present, and one blue hexamer in each stage; these are representative contacts, not exact occupancy counts. In stage 1 omit green KaiB entirely to avoid implying a role in stimulation. Use the same purple protein identity in each stage, and don't destroy or transform it. No phosphate markers on green or purple. No phosphate-release arrow starting from KaiB. Labels must be spelled exactly, legible on a classroom projector, with ample whitespace. No extra scientific prose, no generic warning or caveat captions, no test tube, no clock, no logos or watermarks. PRIORITY: unmistakable physical contacts and the KaiB–KaiC-only intermediate.
```

- **Final targeted correction prompt:**

```text
Edit this four-stage KaiABC classroom cartoon. Make exactly ONE text correction: replace the bottom text under stage 3, currently "Bound KaiA cannot stimulate KaiC", with exactly "KaiB-bound KaiA is inactive". This matters because KaiA bound directly to KaiC in stage 1 is active, whereas KaiA bound to KaiB in stage 3 is inactive. Preserve EVERYTHING else: four-stage layout, all molecular graphics and contacts, colors, two-tier blue KaiC rings, the unpaired KaiB–KaiC intermediate and free purple KaiA in stage 2, phosphate markers, all other text, arrows, spacing, white background, and dimensions. Match existing black sans-serif typography, with no new text or images.
```

- **September 6 kinetic correction prompt (built-in image edit):**

```text
Use case: scientific-educational.
Edit target: the supplied four-panel KaiABC sequestration cartoon. Correct the actual sequence of phosphate changes and protein binding while preserving the attractive blue/purple/green molecular-surface style, white background, four-column arrangement, and readable black sans-serif type. This is a graduate classroom figure. Keep it uncluttered.

Scientific content:
KaiC remains ONE INTACT HEXAMER through every stage. Each KaiC subunit has two stacked domains: CII above, CI below. Show two clearly distinct stacked blue rings in the SAME slightly side-on oblique orientation and size in every panel. KaiA stimulates phosphorylation by binding the flexible C-terminal tails protruding from CII. Fold-switched KaiB binds CI on the opposite lower face; KaiC-bound KaiB then binds and sequesters KaiA. KaiB does not remove phosphate. The dominant phosphoform progression is U -> T -> ST -> S -> U. Depict representative contacts, not complete binding stoichiometry.

Keep the small identity key at the top: purple KaiA dimer, green KaiB, blue double-ring KaiC. Keep all labels sharp and legible with generous spacing. No overall title or footer.

Four panels:
1. Heading exactly "1. KaiA stimulates phosphorylation".
Show a purple KaiA dimer contacting a short flexible tail extending from the upper CII ring of blue KaiC, with no green protein attached. Add small "CII" and "CI" callouts to identify the upper and lower rings ONLY in this first panel. Show TWO small gold site markers on one representative upper-ring subunit, explicitly labeled "T-P" and "S-P". These identify the doubly phosphorylated endpoint ST, not a count of phosphates over the whole hexamer. Near the upper part of this panel put the concise state progression "U → T → ST".
Bottom text exactly "KaiA binds the CII tails".

2. Heading exactly "2. KaiB binds nighttime KaiC".
Show the same intact double-ring KaiC. Remove the T-P marker and retain the single S-P marker in the SAME position on the upper CII ring. Show one compact green fold-switched KaiB monomer bound clearly to the lower CI face, far from the upper phosphorylation sites. Purple KaiA floats free above/right of KaiC, visibly unbound, with the label "free KaiA".
Bottom text exactly "Fold-switched KaiB binds CI".

3. Heading exactly "3. KaiB captures KaiA".
Copy the KaiC and green KaiB geometry from panel 2. Preserve the S-P marker EXACTLY: same position, same number, same label. Now show the purple KaiA dimer binding to the exposed face of CI-bound green KaiB. Green is the bridge between purple KaiA and blue CI; purple must not touch the upper CII tail. This is ONLY a protein-binding event. No phosphate is lost or added between panels 2 and 3.
Bottom text exactly "KaiB-bound KaiA is inactive".

4. Heading exactly "4. KaiA and KaiB are released".
Show the SAME intact blue double-ring hexamer in the SAME orientation, with no phosphate markers. Show green KaiB and purple KaiA separately released, with small outward arrows away from the lower CI face. Do not break KaiC into pieces or separate its two rings.
Bottom text exactly "KaiC remains a hexamer".

Inter-panel arrows are essential and must represent distinct kinetic events:
Between panels 1 and 2: rightward arrow labeled "T phosphate removed" (can wrap into two short lines). This represents the ST -> S transition preceding the representative S-state KaiB complex.
Between panels 2 and 3: rightward arrow labeled "KaiA binding". There is NO change in phosphorylation here.
Between panels 3 and 4: rightward arrow labeled "S phosphate removed" (can wrap into two short lines). This represents S -> U followed by release.
One thin return arrow along the very bottom from panel 4 back to panel 1, without text.

Preserve the original color identities and molecular texture. Distinguish upper CII from lower CI unmistakably; make the KaiA-CII tail contact in panel 1 and KaiB-CI/KaiA-KaiB contacts in panels 2-3 visible. Phosphate markers are ONLY on the upper blue CII ring; never on KaiA, KaiB, or lower CI. Keep all four panels comparable in size. Use a broad approximately 2:1 canvas and shorten line breaks cleanly where required. No ATP/ADP inset, no equations beyond the small U → T → ST progression, no numerical rate labels, no extra arrows, no invented reaction, no watermark.
```

### `drosophila-melanogaster-closeup.jpg`

- **What it shows:** Macro photograph of an adult female *Drosophila melanogaster*.
- **Teaching use:** Introduces the fruit fly immediately after jet-lag recovery and before the *period* mutants.
- **Photographer:** Rolf Dietrich Brecher, 13 March 2018.
- **Source:** [Original Flickr photograph](https://www.flickr.com/photos/rolfdietrichbrecher/38978426500/) and [Wikimedia Commons record](https://commons.wikimedia.org/wiki/File:Drosophila_melanogaster_%E2%99%80_(38978426500).jpg).
- **License:** [Creative Commons Attribution 2.0 Generic](https://creativecommons.org/licenses/by/2.0/).
- **Processing:** Downloaded the Flickr display image without further image edits; the notebook sets only the displayed width.

### `drosophila-light-pulse-actogram.png` and `drosophila-light-pulse-prc.png`

- **What they show:** A median double-plotted Drosophila locomotor actogram across light-dark cycles and constant darkness, including a light pulse and the resulting phase shift; and the corresponding phase-response curve for pulses delivered across circadian time.
- **Teaching use:** The PRC appears at the end of Lecture 5 as a qualitative example of phase-dependent CRYPTOCHROME/TIMELESS resetting and a bridge to Lecture 6. The detailed KaiABC phase-map block was removed on September 6. It shows the one-hour white-light pulse condition in Figure 1B. The six-hour pulse actogram in Figure 1A is retained as an earlier draft asset but is no longer displayed.
- **Source:** The displayed PRC is Figure 1B of Vinayak et al., “Exquisite Light Sensitivity of *Drosophila melanogaster* Cryptochrome,” *PLOS Genetics* 9 (2013), e1003615, which reproduces the one-hour white-light-pulse data from Kistenpfennig et al., “Phase-Shifting the Fruit Fly Clock without Cryptochrome,” *Journal of Biological Rhythms* 27:117–125 (2012). [Vinayak doi:10.1371/journal.pgen.1003615](https://doi.org/10.1371/journal.pgen.1003615); [Kistenpfennig doi:10.1177/0748730411434390](https://doi.org/10.1177/0748730411434390).
- **License:** Creative Commons Attribution 4.0 (CC BY 4.0).
- **Processing:** Downloaded from the publisher's large PNG and cropped into the actogram and PRC panels. Plot content was not otherwise altered.

### Notebook-native diagrams

Lecture 5 keeps the KaiC reaction network's TikZ/`tikz-cd` source in the `kaic-state-figure` notebook cell and the fly feedback-loop TikZ source in the `fly-clock-figure` cell. Each cell compiles its source with `latex` and `dvisvgm`, displays SVG with outlined fonts, and saves that figure in the notebook output; no separate source or image asset is needed. See the repository README for regeneration dependencies. The KaiC diagram shows four labeled subunit phosphorylation states with paired, equal-weight arrows. Clockwise reactions k1–k4 and their reverse reactions k−1–k−4 match the later kinetic equations; arrow weight does not encode rate magnitude or instantaneous net flux. The network follows Rust et al. (2007), [doi:10.1126/science.1148596](https://doi.org/10.1126/science.1148596). The fly diagram locates CRY-dependent TIM removal within the delayed negative-feedback loop described by Myers et al. (1996), [doi:10.1126/science.271.5256.1736](https://doi.org/10.1126/science.271.5256.1736). Quantitative figures are generated from the data documented in `../data/circadian/README.md` or from the explicitly identified phase model.

## Phase-oscillator examples (Lecture 3)

### `mouse-running.mp4`

- **What it shows:** A mouse running from an overhead view.
- **Teaching use:** Treat the four limbs as oscillators. A gait is a stable pattern of phase differences among their stride cycles.
- **Source:** Original course video recorded by Joshua W. Shaevitz.
- **Processing:** The original H.264 video stream was copied from a MOV container into an MP4 container for reliable notebook playback. Timing, resolution, frame rate, and image content were unchanged.

## Pose tracking (Lecture 4)

### `gait-trot.gif`, `gait-pace.gif`, and `gait-gallop.gif`

- **What they show:** Animated canine trot, pace, and transverse-gallop limb sequences.
- **Teaching use:** The local copies make the gait-motion slide load reliably while students compare each pattern with the relative-phase event plots.
- **Source:** Vicki L. Datt and Thomas F. Fletcher, [“Gaits”](https://vanat.ahc.umn.edu/gaits/), University of Minnesota College of Veterinary Medicine; the three GIFs were downloaded from the linked trot, pace, and transverse-gallop pages on 2026-09-14.
- **Processing:** Downloaded unchanged at 428 × 220 pixels. The notebook displays each at 360 pixels wide.

### `drosophila-gait-slide.png`, `drosophila-gait-umap.png`, and `drosophila-gait-examples.png`

- **What they show:** A density map of the two-dimensional UMAP projection of five independent fruit-fly leg-phase differences, plus six-leg phase trajectories sampled from seven numbered locations in that gait space.
- **Teaching use:** Extends Lecture 4's relative-phase description from four mouse paws to six fly legs and shows how wave, tripod, tetrapod, and partial-synchrony patterns occupy a broader coordination space.
- **Source:** Instructor-supplied composite slide provided on 2026-09-16. The related gait-space study is DeAngelis et al., “The manifold structure of limb coordination in walking Drosophila,” *eLife* 8 (2019), e46409, [doi:10.7554/eLife.46409](https://doi.org/10.7554/eLife.46409), which is also cited in the notebook Sources.
- **Processing:** The 1691 × 951 supplied PNG is preserved unchanged as `drosophila-gait-slide.png`. The UMAP and example-trajectory panels were cropped without rescaling; a fragment of the slide title outside the scientific content was masked white in the trajectory crop. Data graphics, labels, and colors were not altered.

### `centipede-flat-walking.mp4`

- **What it shows:** Slow-motion overhead recording of a freely walking *Scolopendra subspinipes mutilans* on flat terrain. The animal advances while its leg-movement wave propagates posteriorly.
- **Teaching use:** Loops immediately after the centipede phase-lag slide in Lecture 4, making the retrograde metachronal wave visible before the final comparison across leg numbers.
- **Source:** Supplementary Movie S1 from Yasui, Kano, Standen, Aonuma, Ijspeert, and Ishiguro, [“Decoding the essential interplay between central and peripheral control in adaptive locomotion of amphibious centipedes”](https://doi.org/10.1038/s41598-019-53258-3), *Scientific Reports* 9, 18288 (2019).
- **License:** Creative Commons Attribution 4.0 International (CC BY 4.0), the article and supplementary-material license.
- **Processing:** Downloaded from the Europe PMC supplementary-material archive. The H.264 source was cropped from 640 × 512 to 480 × 300 to enlarge the animal and remove empty margins, then re-encoded as H.264/yuv420p without changing its 30 fps timing or 2.73-second duration; the source contains no audio.

### `mouse_pose.mp4`

- **What it shows:** A mouse shown as raw imagery, pose-estimation confidence maps, and tracked body keypoints.
- **Teaching use:** Introduces CNN-based keypoint pose tracking before the lecture extracts paw trajectories from a running mouse.
- **Source:** Instructor-supplied replacement file `mouse_pose.mp4`, added on 2026-09-14; its original publication and license have not yet been recorded.
- **Processing:** Retained unchanged. The H.264 video is 1152 × 384 pixels at 34 frames/s and runs for approximately 29.4 seconds. It replaces the earlier fly pose-tracking movie.

### `mouse-coupling-fit-small-dataset.png` and `mouse-coupling-fit-large-dataset.png`

- **What they show:** Coupling strengths (first PNG) and phase offsets (second PNG) from the full analysis of 30,000 locomotor bouts. Josh confirmed on 2026-09-15 that the second PNG's “coupling strength” axis label is incorrect. The historical filenames do not distinguish datasets.
- **Teaching use:** Original evidence for the editable full-data fit figures in Lecture 4, following the separately computed ten-bout teaching fit.
- **Source:** Instructor-supplied graphics provided on 2026-09-02; the underlying analysis provenance and license have not yet been recorded.
- **Processing:** Copied byte-for-byte from the supplied PNG attachments. The images are 1166 × 866 and 1190 × 888 pixels, respectively.
- **Reconstruction:** Bar heights and both error-bar cap endpoints were digitized on 2026-09-15 into `data/mouse/mouse-full-fit-digitized.csv`. Values are approximate, not the original numerical fit output. The original labels use 1=LF, 2=RH, 3=RF, 4=LH, and pair ij denotes influence j→i. The notebook remaps anatomy to 1=LF, 2=RF, 3=LH, 4=RH and uses one shared pair order for both fits. Originals remain unchanged.

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
- **Teaching use:** Source frames for the Lecture 4 thresholding, connected-component, and two-dimensional detection-table demonstration.
- **Source:** Sarfati, Hayes, and Peleg, Dryad dataset DOI [10.5061/dryad.2547d7wvn](https://doi.org/10.5061/dryad.2547d7wvn); source movie `20200611_GRSM_A1_0035.MP4`.
- **License:** Creative Commons Zero 1.0 (CC0 1.0), the Dryad dataset license.
- **Processing:** Excerpt from 00:40:13 through 00:40:45; scaled from 1920 × 1080 to 1280 × 720, transcoded to H.264 MP4, and audio removed. No gamma or other brightness adjustment was applied; timing and playback speed were unchanged.

### `firefly-photinus-carolinus-closeup.jpg`

- **What it shows:** A close-up of an adult *Photinus carolinus*, with the pale margins of the wing covers and the red patches beneath the pronotum visible.
- **Teaching use:** A species-level visual anchor for the natural-history introduction immediately before the class moves from observable flashes to the event-data table.
- **Source:** Abbott Nature Photography, via [Discover Life in America](https://dlia.org/event/fireflies-2022/synchronous-firefly-photinus-carolinus-credit-abbott-nature-photography/).
- **Processing:** Downloaded at 1200 × 900 pixels; no crop, color adjustment, or other transformation.

## KaiABC kinetic simulation (Lecture 5)

The notebook implements the autonomous four-state model of [Rust et al. (2007)](https://doi.org/10.1126/science.1148596), whose Figure 4 reports a roughly 21-hour cycle predicted from partial-reaction kinetics. Numerical coefficients are transcribed from the Rust-model rate list in [Li, Zhang, and Song (2020), Section 2](https://doi.org/10.1088/1674-1056/aba615); their additional CikA/quinone mechanism is not included. The source's doubly phosphorylated state D is called ST in this course.

The rate law is `k = k0 + kA * free_KaiA / (0.43 + free_KaiA)`, with rates in inverse hours and concentrations in micromolar:

| Transition | k0 | kA |
|---|---:|---:|
| U → T | 0 | 0.479077 |
| T → ST | 0 | 0.212923 |
| S → ST | 0 | 0.505692 |
| U → S | 0 | 0.0532308 |
| T → U | 0.21 | 0.0798462 |
| ST → T | 0 | 0.173 |
| ST → S | 0.31 | -0.319385 |
| S → U | 0.11 | -0.133077 |

Use the original model's total KaiC 3.4 µM and total KaiA 1.3 µM. Free KaiA is `max(0, 1.3 - 2*S)`: concentrations count subunits, and one S-state KaiC sequesters one KaiA dimer. These are effective transition rates, not ATPase turnover constants.

The lecture now teaches the U → T rate directly, rounding its saturating coefficient to 0.48 per hour; the code retains every coefficient listed above. Clockwise k1–k4 correspond to U → T, T → ST, ST → S, S → U; k−1–k−4 label the reverse reactions. The former generic rate-law slide and four-row rate table are removed. The simulation begins with all KaiC unphosphorylated and measures the late peak spacing without time rescaling: approximately 20.7 hours. Its control holds free KaiA at 1.3 µM with all other parameters unchanged. Neither curve is experimental data or a fit to the separate 26-hour Rust 2011 trace used later for phase conversion.

## Pedal locomotion (Lecture 5)

### `bob-full-locomotion-ted-excerpt.mp4` and `bob-full-locomotion-ted-excerpt-vscode.mp4`

- Source: Josh's archived teaching compilation, `/Users/jshaevitz/Documents/Teaching/PHY412 Biological Physics/2008-2009/Course Materials/Lecture_14 Bob Full Ted videos.mov` (90,275,451 bytes). The container has two sequential video/audio track pairs, with the second beginning at 742.236667 s.
- Content: Robert Full's locomotion and robotics presentation, corresponding to material in [Robots inspired by cockroach ingenuity](https://www.ted.com/talks/robert_full_robots_inspired_by_cockroach_ingenuity), TED2002. This local file is an archival teaching excerpt, not the complete current TED-hosted talk.
- Processing: first track pair only (video stream 1 and audio stream 0), remuxed without re-encoding into a single-track H.264/AAC MP4 with fast-start indexing. The VS Code variant preserves the H.264 video and transcodes only the unsupported AAC audio to MP3. Duration 742.236667 s, source resolution 432 × 240. The original compilation remains unchanged.
- Notebook cue: local 03:00–05:45 covers spring templates and passive mechanics. The cell has editable start/stop seconds and audio-enabled controls. These times refer to the archival excerpt, not the current TED website.
- Third-party TED material; the course's original-content license does not cover it. Packaged for the private development draft. Review the excerpt's availability and redistribution terms before any public release.

### `cockroach-jetpack.mp4`

- Source: Josh's archived movie, `/Users/jshaevitz/Library/CloudStorage/Dropbox/Movies/Misc Motility/First_Cockroach_Jetpack_Movie.mp4`.
- Content: overhead high-speed footage of a running cockroach receiving a brief lateral impulse from the apparatus carried on its back.
- Processing: H.264 video remuxed without re-encoding; AAC audio transcoded to MP3 for playback in VS Code notebook webviews. Duration 21.867 s, resolution 240 × 210.
- Teaching role: introduces the perturbation experiment immediately before the Jindrich–Full recovery-time measurements.
- Archived third-party teaching material; the course's original-content license does not cover it. Packaged for the private development draft; review before public release.

### `locomotion-force-and-template.png` and `locomotion-cockroach-forces.png`

- Source: Dickinson, Farley, Full, Koehl, Kram, and Lehman, “How Animals Move: An Integrative View,” *Science* 288, 100–106 (2000), [doi:10.1126/science.288.5463.100](https://doi.org/10.1126/science.288.5463.100), Figure 1 on printed p. 101.
- Local supplied copy: `/Users/jshaevitz/Documents/Teaching/PHY412 Biological Physics/2009-2010/Reading Assignments/15.Locomotion Paper.pdf`, PDF page 2.
- Processing: Poppler rendering at a 3200-pixel page height and rectangular extraction. First image preserves panels A–B; second preserves panel C. No figure content was redrawn or recolored. Figure captions and article prose are excluded from the crops and notebook slides; scientific citations are in Sources.
- Teaching role: A–B connect force vectors to the pendulum and spring templates; C shows simultaneous braking, propulsion, and lateral forces in a cockroach. These are source illustrations, not newly collected data.
- Third-party AAAS figures; the course's original-content license does not cover them. Packaged for the private development draft; review before public release.

All other Lecture 5 schematics, curves, and the spring-leg animation are generated by code inside the notebook. The contact pulses, Froude curves, spring-leg trajectories, spring–damper responses, collision curves, and two-variable return map are teaching models, not digitized experimental measurements. The Jindrich–Full timing table uses published mean ± SD and sample counts; no synthetic trace is presented as experimental data.

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


### `firefly-luciferase-structure.jpg`

- **What it shows:** Molecular illustration of Japanese firefly luciferase (PDB 2D1S), with the bound luciferyl-adenylate analogue in yellow. This is a representative firefly enzyme structure, not a structure from *Photinus carolinus*.
- **Source:** David S. Goodsell / RCSB PDB-101, [Luciferase, Molecule of the Month (June 2006)](https://pdb101.rcsb.org/motm/78), [original image](https://cdn.rcsb.org/pdb101/motm/78/78_2d1s.jpg), [PDB 2D1S](https://www.rcsb.org/structure/2D1S).
- **Processing:** Downloaded unchanged; displayed at 360 pixels wide. The adjacent lecture prose distinguishes the luciferase enzyme from the luciferin substrate and excited oxyluciferin emitter.


### `firefly-luciferin-structure.png`

- **What it shows:** Stereochemical structure of firefly D-luciferin, the substrate of luciferase.
- **Source:** [PubChem CID 92934](https://pubchem.ncbi.nlm.nih.gov/compound/92934); [original PNG](https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/cid/92934/PNG?image_size=large).
- **Processing:** Downloaded unchanged. Paired with the luciferase protein illustration in Lecture 2; the reaction uses native Markdown `mhchem` with `\ce{...}` (VS Code rendering unresolved; the attempted local renderer extension was removed after a notebook-loading failure) in the `luciferase-reaction-figure` notebook cell; arrow labels distinguish ATP activation, oxygenation, and photon emission.


## Human circadian experiments — Lecture 6 (September 19, 2026)

**Initial September 20 revision:** The entire human teaching sequence was replaced with the approved concept-led outline. The September 19 inventory below remains provenance for retained repository assets, not the current notebook contents. The initial 35-cell human section used the restored Siffre photograph, explicitly identified as his 1972 camp; Mars500 actograms; Czeisler's 28-hour record; Wyatt's measured sleep efficiency and reaction-time results; hunger; a higher-resolution reproduction of the Khalsa PRC; camping; and Sack's melatonin-entrainment measurements. It removes the illustrative drift, two-process, pain, submarine-period, tablet, and photoperiod plots, the Mars500 spectra, and the interval-timing/chronotype detours. All cells from Cyanobacteria through Sources are preserved unchanged, including their stored outputs. New studies are linked inline in the human cells so that the protected Sources cell need not be changed.

### September 20 teaching-flow refinement

The current human section has 43 cells. The initial September 20 crop inventory below remains provenance for existing assets; the notebook now redraws the sleep and reaction-time results from documented digitizations and shows one cycle with readable axes. A new measured-profile plot introduces physiological phase; the hunger replot uses the same circadian-hour convention and retains the published 95% confidence band. See `data/circadian/README.md` for exact pixel calibrations, intervals, and limitations. The circuit and resetting diagrams remain; the forced-desynchrony schematic now shows continuous elapsed time, a repeating 20-hour sleep schedule, and four-hours-after-waking tests against an ideal 24-hour internal cycle. The jet-lag example is a pair of explicit time-conversion tables, not a recovery simulation.

- **`human-wyatt-1999-figure-2.png`, `human-wyatt-1999-figure-4.png`:** original embedded images from PDF pages 5 and 7, extracted without resizing or modification using `pdfimages`. These preserve the source points and uncertainty for the CSV digitizations. Wyatt et al. (1999), DOI 10.1152/ajpregu.1999.277.4.R1152.
- **`human-light-reset-khalsa-2003.jpg`:** unmodified Figure 2 from Khalsa et al. (2003), DOI 10.1113/jphysiol.2003.040477. [Original image](https://cdn.ncbi.nlm.nih.gov/pmc/blobs/bbd3/2342968/89de0e2ed6ba/tjp0549-0945-f2.jpg). Participant 1843; melatonin measured before, during, and after the 6.7-hour bright-light exposure. The pre-exposure fitted-amplitude 25% threshold (89.5 pmol/L) defines onset and offset. Their midpoint changes from 04:45 to 08:21, a measured −3.60 h shift; immediate suppression during exposure is distinct from subsequent phase resetting. As in the published PRC, this before/after shift includes the background free-running drift, shown separately by the PRC's dashed reference line.
- **`human-martian-periods-scheer-2007.png`:** Figure 2B from Scheer et al. (2007), DOI 10.1371/journal.pone.0000721. [Original 1993 × 2892 image](https://journals.plos.org/plosone/article/figure/image?size=large&id=10.1371/journal.pone.0000721.g002), crop `(left=0, top=1115, right=1993, bottom=2892)`. All seven participant estimates and original 95% CIs retained. The short and long imposed periods are 23.5 and 24.65 h. Observed periods are estimated from melatonin phase during the two-week conditions, excluding the first five cycles, not from sleep timing. Most CIs overlap the imposed periods; the lecture does not claim perfect locking of every participant or infer indefinite stability from this finite protocol.

The Sack placebo comparison reports six complete placebo records; participant 4's placebo record was incomplete, while all seven contributed melatonin-treatment records. The Siffre photograph remains in place. Inputs (light, melatonin, meal timing) now precede the entrainment-limit experiments. Cyanobacteria and all subsequent cells remain exactly unchanged.

### Figure extractions added September 20

The PDF crops below were rendered using `pdftoppm -scale-to 3200 -png -singlefile`; coordinates are pixels on that rendered page, given as `(x, y, width, height)`. Cropping and rearranging published panels do not create new measurements. These initial crops did not redraw or digitize data; the subsequent teaching replots are documented above.

- **`human-czeisler-28h-1999.png`:** Czeisler et al., *Science* 284 (1999), [DOI 10.1126/science.284.5423.2177](https://doi.org/10.1126/science.284.5423.2177), Figure 1 right panel, PDF page 2, crop `(1602,1790,655,825)`. [Source PDF](https://www.cet.org/wp-content/uploads/2014/06/Czeisler-1999-Science.pdf). Subject 1111's imposed 28-hour sleep/dark schedule and estimated temperature phase; the dashed line is a fitted physiological phase, not a sleep trajectory. Temperature period 24.28 h; distinguish this individual from the 24.18 h population mean. Each row begins 24 h later and displays 48 h. Sleep opportunities were 9 h 20 min below 0.03 lux, wake episodes 18 h 40 min near 15 lux.
- **`human-sleep-efficiency-wyatt-1999.png`:** Wyatt et al., *American Journal of Physiology* 277 (1999), [DOI 10.1152/ajpregu.1999.277.4.R1152](https://doi.org/10.1152/ajpregu.1999.277.4.R1152), Figure 2B left, PDF page 5. Body `(1070,756,725,224)` plus the original shared circadian x-axis `(1070,2394,725,200)`, joined with a 12-pixel white gap. A residual fragment of the unrelated panel letter in the upper-left margin was removed; data, axes, and error bars are unchanged. Sleep efficiency is percent of time in bed asleep; means and SEM across six subjects, with each subject weighted equally. The phase bins refer to the midpoint of the sleep episode; zero is the temperature minimum. Double plotting repeats one cycle and does not add samples.
- **`human-reaction-time-wyatt-1999.png`:** Same paper, Figure 4D, PDF page 7. Body `(1090,1078,1190,255)` plus the original shared x-axis `(1090,1837,1190,135)`, joined with a 12-pixel gap. Left: circadian phase. Right: elapsed time in the imposed sleep/wake schedule; hatched region denotes sleep. Values are within-subject deviations of median reaction time from the subject's overall mean, then averaged across six subjects, with SEM. The original inverted y-axis is retained and explicitly explained on the teaching slide. Both cycles are double plotted. These are marginal effects, not a plot of tests restricted to exactly four hours awake.
- **`human-light-prc-khalsa-2003-reproduction.jpg` and `human-light-prc-khalsa-2003-reproduction-night.png`:** The same Khalsa et al. (2003) Figure 3 as the earlier low-resolution asset, reproduced as Figure 1 in Duffy & Czeisler (2009), [Effect of Light on Human Circadian Physiology](https://pmc.ncbi.nlm.nih.gov/articles/PMC2717723/). [Unmodified 1050 × 764 image](https://cdn.ncbi.nlm.nih.gov/pmc/blobs/c480/2717723/24de6eaa3cdc/nihms128437f1.jpg). The PNG used in the notebook adds only two translucent gray overlays across the plotting area to mark the approximate biological night, phase 18–24 and 0–6; plotted data and labels are unchanged. Experimental details are taken from the primary Khalsa paper, which calls the exposure 6.7 h; the reproduction's caption rounds/describes it as 6.5 h. Circadian phase is the midpoint of the exposure; melatonin midpoint is assigned 22 h and estimated temperature minimum 0 h. Points from phases 6–18 are repeated. Dashed horizontal line: assumed −0.54 h drift between phase measurements.
- **`human-melatonin-entrainment-sack-2000.png`:** Sack et al., *NEJM* 343 (2000), [DOI 10.1056/NEJM200010123431503](https://doi.org/10.1056/NEJM200010123431503), Figure 2 treatment panel, PDF page 4, crop `(305,2070,905,828)`. [Source PDF](https://schoolstarttime.org/wp-content/uploads/2011/03/sack-entrainment-of-free-running-circadian-rhythms-by-melatonin-in-blind-people.pdf). Seven selected totally blind participants with documented free-running rhythms; nightly 10 mg melatonin or placebo about 1 h before preferred bedtime for 3–9 weeks per condition in a balanced crossover. Six entrained during melatonin; participant 7 continued to drift. Each symbol represents a person; dashed lines show baseline drift and solid lines treatment trajectories. Endogenous melatonin was sampled after withholding capsules on the sampling day and preceding one or two days. The treatment plot uses absolute clock time. The six responders cluster at stable phases but not identical phases.

### New experiment and schematic provenance

- **Meal timing:** Wehrens et al. (2017), [DOI 10.1016/j.cub.2017.04.059](https://doi.org/10.1016/j.cub.2017.04.059), [full primary paper](https://pmc.ncbi.nlm.nih.gov/articles/PMC5483233/). Ten young men, fixed light/sleep, early meals at 0.5/5.5/10.5 h after waking followed by meals delayed 5 h. Rhythms assessed in 37-hour constant routines with hourly isocaloric snacks. Main text reports glucose delay 5.69 ± 1.29 h (SEM); the Figure 2D caption inconsistently prints 5.59 h, so the teaching table rounds to about 5.7 h using the abstract/main text. Adipose PER2 delay 0.97 ± 0.29 h; no detected phase change in melatonin or cortisol. This is evidence of differential rhythm responses, not proof that every peripheral clock shifted by the same amount or that all metabolic phase measures directly read a tissue oscillator.
- **Forced-desynchrony schematic:** six imposed 20-hour cycles plotted against an ideal 24-hour internal phase, with wake 13 h 20 min and sleep opportunity 6 h 40 min. A four-hours-after-waking test highlights one of the actual two-hourly test slots; the plotted positions are protocol geometry, not participant measurements. Blank phase intervals are portions of the internal cycle outside the one displayed 20-hour episode.
- **Resetting/entrainment schematic:** ideal phase-marker records with an illustrative 25-hour free-running period to make drift visible, a single four-hour advance, and exact daily locking. The vertical coordinate counts cycles. These demonstrate definitions, not a human parameter fit or recovery prediction.
- **Retinal and jet-lag diagrams:** retain the circuit and schedule meanings documented in the earlier inventory, with fresh cells in the rewritten sequence. No human jet-lag recovery curve is inferred from these diagrams.

The human section is inserted between “Why have a circadian clock?” and “Cyanobacteria.” Published visual sources below are cached unchanged. Interpretive text and scientific references are in the notebook; provenance stays here.

| Local file | Source and use |
| --- | --- |
| `human-siffre-midnight-cave-1972.jpg` | Joshua Foer and Michel Siffre, *Cabinet* 30 (2008), “Caveman.” Photograph of the illuminated tent in the **1972** Midnight Cave experiment, not the 1962 experiment. The September 14/August 20 anecdote is Siffre's retrospective account of being notified in 1962, not a claim about his emergence date. |
| `human-interval-timing-spati-2015.jpg` | Späti et al. (2015), DOI 10.3389/fnint.2015.00015, Figure 3. Observed, loess-smoothed participant and group trajectories, **not** the model predictions in Figure 4. Production is panel A and estimation panel B; ratios use the stimulus duration as denominator. Original black/gray and solid/dashed encodings preserved. Article is CC BY. |
| `human-hunger-scheer-2013.jpg` | Scheer, Morris & Shea (2013), DOI 10.1002/oby.20351, Figure 1. Six circadian bins, cosinor fit, and 95% confidence band, double plotted. Twelve enrolled/completed, one excluded for incorrect scale use; appetite analysis n=11. The 17% peak-to-trough difference is relative to mean hunger, not 17 percentage points. |
| `human-light-prc-khalsa-2003.jpg` | Khalsa et al. (2003), DOI 10.1113/jphysiol.2003.040477, Figure 3. Published 6.7-hour bright-white-light PRC. Phase zero denotes estimated temperature minimum, melatonin midpoint is assigned 22 h; phase 6–18 h is repeated. Dashed line is expected −0.54 h drift. The original available image is 331 × 235 pixels; no invented higher-resolution data or curve. |
| `human-camping-phase-wright-2013.jpg` | Wright et al. (2013), DOI 10.1016/j.cub.2013.06.039, Figure 3. Melatonin and sleep timing, n=8; error bars are SD. Sequential usual-environment then camping comparison, not randomized crossover. |
| `human-camping-chronotype-wright-2013.jpg` | Same paper, Figure 4. Individual points: habitual free-day midsleep corrected for sleep debt versus melatonin onset before/after camping and phase advance. Eight individuals, not population chronotype estimates. |

The Cabinet photograph and non-CC-BY journal figures retain their respective source rights; availability through PMC does not establish a blanket reuse license. No public release was made as part of this development edit.

### Direct image retrieval URLs

- `human-siffre-midnight-cave-1972.jpg`: https://www.cabinetmagazine.org/issues/30/cabinet_030_foer_joshua_siffre_michel_001.jpg
- `human-interval-timing-spati-2015.jpg`: https://cdn.ncbi.nlm.nih.gov/pmc/blobs/f99f/4330698/06d6ec1b2054/fnint-09-00015-g0003.jpg
- `human-hunger-scheer-2013.jpg`: https://cdn.ncbi.nlm.nih.gov/pmc/blobs/b9d7/3655529/b611ae10188f/nihms435282f1.jpg
- `human-light-prc-khalsa-2003.jpg`: https://cdn.ncbi.nlm.nih.gov/pmc/blobs/bbd3/2342968/b926d7e4c46b/tjp0549-0945-f3.jpg
- `human-camping-phase-wright-2013.jpg`: https://cdn.ncbi.nlm.nih.gov/pmc/blobs/faf2/4020279/61e350c3244b/nihms511715f3.jpg
- `human-camping-chronotype-wright-2013.jpg`: https://cdn.ncbi.nlm.nih.gov/pmc/blobs/faf2/4020279/f4dbc0149385/nihms511715f4.jpg

### Editable notebook figures

The eight new plotting cells use existing course colors, standard Matplotlib, and hidden source by default. No plot titles were added.

- **Phase drift:** ideal phase-marker events at 24.18 h versus 24 h. The initial 21:00 phase is arbitrary. Thirty unforced cycles yield a 5.4-hour displacement; this is not a participant recording or a 30-day clinical forecast.
- **Two processes:** qualitative homeostatic relaxation and sinusoidal wake promotion. Wake/sleep time constants 18/4 h, amplitudes, and fixed schedule are illustrative; no model is fit and the display is not a quantitative predictor of sleep.
- **Forced desynchrony:** a 20-hour protocol with 13⅓ h wake and 6⅔ h sleep opportunity. Orange points illustrate testing 4 h after waking. The internal 24-hour period and phase zero are schematic; actual studies infer phase from physiology.
- **Heat pain:** measurement schematic and qualitative night/afternoon ordering from Daguet et al. (2022), DOI 10.1093/brain/awac147. Marker heights are categorical, not measured pain scores. The study concerns experimental heat pain; no universal clinical pain or treatment claim is made.
- **Retinal pathway:** schematic distinction between rod/cone vision and melanopsin ganglion-cell signaling to SCN. The blind-subject table uses Zaidi et al. (2007), DOI 10.1016/j.cub.2007.11.034: male subject, matched photon density, 6.5 h, 460/555 nm; 57%/no suppression, −1.2/−0.4 h phase shifts. Do not generalize these two subjects to all blindness.
- **Jet lag:** an illustrative +6 h destination offset. A habitual 23:00–07:00 interval maps to 05:00–13:00 at destination before resetting; the bars are schedules, not predicted sleep. The later phase-model section retains the existing KaiABC period and now explicitly identifies it as an illustrative model, not a human fit.
- **Tablet/print comparison:** Chang et al. (2015), DOI 10.1073/pnas.1418490112, Results. DLMO after print: 21:01 ±49 min; after tablet: 22:31 ±42 min. Sleep latency to N2: 15.75 ±13.09 versus 25.65 ±18.78 min. Values are means ±between-participant SD; they are not paired-effect confidence intervals. Randomized within-subject crossover n=12, maximum tablet brightness, ~4 h/night ×5 nights in dim room light. Spectrum and intensity are both changed.
- **Photoperiod:** 8/14 h dark intervals and qualitative one-/two-bout sleep. Bout locations/durations are schematic, not digitized records. Wehr (1992), DOI 10.1111/j.1365-2869.1992.tb00019.x, supports the 1–3 h intervening wake interval, not a universal ancestral or prescribed sleep schedule.

Other numerical anchors: caffeine 2.9 mg/kg 3 h before habitual bedtime, n=5, approximately 40 min additional delay versus dim-light placebo (Burke et al. 2015, DOI 10.1126/scitranslmed.aac5125); Mars example 24.65−24.18=0.47 h=28.2 min delay per cycle, with actual laboratory entrainment evidence from Scheer et al. 2007, DOI 10.1371/journal.pone.0000721. Social-jetlag sleep times are an explicitly constructed example of the sleep-midpoint definition in Wittmann et al. (2006), not participant data.

### Submarine duty cycles and Mars500 extension (September 19, 2026)

- **Submarine source:** Kelly et al., “Nonentrained Circadian Rhythms of Melatonin in Submariners Scheduled to an 18-Hour Day,” *Journal of Biological Rhythms* 14, 190–196 (1999), [DOI 10.1177/074873099129000597](https://doi.org/10.1177/074873099129000597), [PubMed abstract](https://pubmed.ncbi.nlm.nih.gov/10452330/). Twenty crew were studied aboard a Trident nuclear submarine; the reported 24.35 h mean and 0.18 h between-person SD concern the twelve who remained on the 18 h duty schedule. The plot's left panel is a schedule schematic (6 h duty / 12 h off duty), not recorded sleep; its start time is arbitrary. The right panel plots the published mean ± SD, not a confidence interval or individual data. This historical patrol does not establish current naval scheduling. The observed period under patrol conditions is not substituted for the controlled-laboratory 24.18 h intrinsic-period estimate elsewhere in the notebook.
- **Mars500 source:** Basner et al., “Mars 520-d mission simulation reveals protracted crew hypokinesis and alterations of sleep duration and timing,” *PNAS* 110, 2635–2640 (2013), [DOI 10.1073/pnas.1212646110](https://doi.org/10.1073/pnas.1212646110). [Author-hosted paper and supporting appendix](https://www.med.upenn.edu/uep/assets/user-content/documents/PNAS2013Basner1212646110withSupportingAppendix.pdf), paper page 4, Figure 3B–C. Six male crewmembers lived in the Moscow ground simulator in 2010–2011. Sleep was inferred from wrist actigraphy; this is neither a Mars flight nor an intrinsic-period assay. Crewmember B's dominant behavioral period averaged 24.98 h, with a smaller 24 h component attributed to breakfast attendance. Crewmember C is one illustrative 24 h comparison, not a group average.
- **`human-mars500-actograms-basner-2013.png`:** Figure 3B and 3C sleep rasters cropped from page 4 rendered at 300 dpi and placed side by side, B left and C right. Original labels, axes, black sleep marks, and white wake/rest intervals preserved. Double plotting shows consecutive 48 h windows offset by 24 h. Source rasters are not reconstructed or simulated.
- **`human-mars500-spectra-basner-2013.png`:** The corresponding original spectral plots, B left and C right, extracted from the same page. Periodograms use 90-day windows stepped by 10 days. The two vertical power scales differ and are retained; the teaching comparison concerns peak locations, not absolute power between people. Panels are cropped/rearranged without modifying their data. Original source rights apply; no public release is part of this addition.
- **Crop reproducibility:** On a page scaled to 1700 pixels high, raster rectangles `(left, top, right, bottom)` are B `(640, 548, 894, 833)` and C `(90, 833, 345, 1112)`; spectral rectangles are B `(894, 584, 1200, 824)` and C `(345, 867, 640, 1104)`. Scale coordinates by actual rendered height / 1700, round to integer pixels, and join each pair horizontally with a 28 × scale white gap. The source figure has finite raster resolution; rendering at higher dpi does not add observations.


## Chimera states (Problem Set 2)

Three original, unmodified downloads of the authors' published experimental movie files from [Erik Martens' supplementary page](https://erikmartens.net/index.php?page=supplementary_v2), acquired 2026-09-21. Associated paper: [Martens, Thutupalli, Fourrière, and Hallatschek, PNAS 110, 10563–10567 (2013)](https://doi.org/10.1073/pnas.1302880110). Each movie shows 15 metronomes per swing, with fluorescent pendulum markers and one reference marker on each swing. These are compressed, annotated experimental clips, not the camera-original full-length recordings or author trajectory tables. No synthetic observations were substituted.

| Local file | Author download | Bytes | SHA-256 |
| --- | --- | ---: | --- |
| `chimeras/martens-2013-chimera.mp4` | [MP4](https://erikmartens.net/mov/ChimeraState-MechChim.mp4) | 4287988 | `2ab6c90a89f9f072072f1f9c7418e9524898998df701c7efa3fcbfe83eacdde7` |
| `chimeras/martens-2013-in-phase.mp4` | [MP4](https://erikmartens.net/mov/In-Phase-MechChim.mp4) | 4332132 | `a713d627acc4f38f20c9b15626d538c6510f6289ea3188ac0c40b32e5e1a1dff` |
| `chimeras/martens-2013-anti-phase.mp4` | [MP4](https://erikmartens.net/mov/Anti-Phase-MechChim.mp4) | 4382314 | `ff29f0f692ce62f6a823c961ec03b16f638993948cc34c26606b172d3de471d7` |

The clips are 1280 × 720, 24 fps playback, and approximately 28 seconds including titles. Required analysis uses 8–26 seconds; reference phase statistics use 10–24 seconds after edge trimming. Acquisition/playback speed equivalence was not established, so the assignment uses movie time and frequency ratios. The named files avoid inconsistent movie numbering between the publisher and the author's page.

`homework/problem-set-02/problem-set-02-checks.py` tracks all 30 markers and both swings, subtracts swing translation, and validates the coherence contrast. A broad zero-phase 0.4–2.5 cycles/movie-second filter removes spurious phase turns caused by brief image artifacts; students must check apparent phase slips against the video. One missing frame in the optional in-phase movie is interpolated and reported. The required clips have no missing centroid frames. These automatic tracks establish teaching feasibility, not independently curated ground truth.

The files retain their original title cards, credits, and annotations. These third-party assets are excluded from the repository's original-content licenses. The student handout now links to these assets' eventual public-course GitHub locations; the original author links above retain provenance. Public-repository redistribution has not been performed.

## Spatial order — Lectures 8–9

The September 25, 2026 drafts use seven source figures under `spatial-order/`. Their original measurements, axes, panel labels, and color encodings are retained. All new telephone, Ising, response, and percolation figures are generated in the notebooks from explicitly specified models and random seeds. No simulated observations are presented as membrane or bird measurements.

### Lipid membranes

Source: Honerkamp-Smith et al. (2008), “Line tensions, correlation lengths, and critical exponents in lipid membranes near critical points,” *Biophysical Journal* 95, 236–246. [Article](https://doi.org/10.1529/biophysj.107.128421); [author manuscript](https://arxiv.org/pdf/0802.3359). The 29-page manuscript was retrieved September 25, 2026. Its canonical local PDF is in the Vault course folder, `Research Notes/spatial-order-sources/honerkamp-smith-2008-membrane-criticality.pdf`.

| File | Source and processing | Scientific use |
| --- | --- | --- |
| `spatial-order/honerkamp-smith-2008-membrane-sequence.png` | Figure 1, manuscript page 23; top nine microscopy panels, excluding the separate bottom-row Ising simulations. | One vesicle cooled through approximately 32.5 °C; 20 μm scale bar retained. |
| `spatial-order/honerkamp-smith-2008-figure-2.png` | Figure 2, manuscript page 24; full figure without prose caption. | Boundary shapes and capillary fluctuation spectra for a vesicle with transition near 31.7 °C. |
| `spatial-order/honerkamp-smith-2008-figure-4.png` | Figure 4, manuscript page 26; full figure without prose caption. | Structure factors at eight temperatures, and their rescaling with fitted correlation lengths; this vesicle has transition near 26.43 °C. |
| `spatial-order/honerkamp-smith-2008-figure-5.png` | Figure 5, manuscript page 27; full figure without prose caption. | Line tension below the transition and the inverse correlation length above it; same vesicle as Figure 4. Solid scaling lines use Ising exponent 1; dashed lines use mean-field exponent 1/2. |

Pages were rendered at 3.5 pixels per PDF point. The figure cutoffs, measured from the top of each PDF page, were 512.8, 487.9, 513.2, and 452.8 points for pages 23, 24, 26, and 27, respectively. White outer margins were trimmed with ten pixels of padding. The Figure 1 microscopy crop then retained rows 0–874 of the trimmed image. No data curves or observations were recreated. The reported exponent 1.2 ± 0.2 is the paper's result across five vesicles, not a new fit to these images. The fluorescence examples use model lipid vesicles, not intact living cells.

### Starling flocks

Source: Cavagna et al. (2010), “Scale-free correlations in starling flocks,” *PNAS* 107, 11865–11870. [Article](https://doi.org/10.1073/pnas.1005766107); [author manuscript](https://arxiv.org/pdf/0911.4393). The 24-page manuscript was retrieved September 25, 2026. Its canonical local PDF is in the Vault course folder, `Research Notes/spatial-order-sources/cavagna-2010-flock-correlations.pdf`.

| File | Source and processing | Scientific use |
| --- | --- | --- |
| `spatial-order/cavagna-2010-velocity-maps.png` | Original embedded Figure 1 image, 1069 × 1507 pixels; crop `(35, 275, 1045, 860)`. | Panels A–B: full velocities and deviations from the instantaneous mean. The original display uses different vector scales. |
| `spatial-order/cavagna-2010-speed-distribution.png` | Same original image; crop `(210, 905, 850, 1385)`. | Panel C: distributions of velocity and velocity-fluctuation magnitudes. This panel does not show the signed scalar speed fluctuation used later in the lecture. |
| `spatial-order/cavagna-2010-figure-2.png` | Original embedded Figure 2 image, 1013 × 1433 pixels; crop `(30, 250, 955, 1140)`. | Panels A–D: velocity/orientation and speed correlations, and first-zero-crossing range versus flock extent. Only surrounding whitespace and the external figure number were removed. |

Crop coordinates are `(left, top, right, bottom)` in the original embedded raster. Bird trajectories were not downloaded or reconstructed. The manuscript labels the velocity-fluctuation comparison “orientation.” The notebooks use `xi_0` for its operational first-zero-crossing range and reserve `xi` for the exponential length where that definition applies. The centered-field demonstration is explicitly synthetic and only tests the effect of mean subtraction.

These third-party figures retain their source rights and are excluded from the repository's original-content licenses. This checkpoint adds private teaching drafts; it does not publish the figures to the public course repository.

### Lecture 8 motivation additions — September 28, 2026

All pre-existing notebook cells were retained exactly during this additive pass. The new Markdown cells reuse the unmodified Cavagna velocity maps and Figure 2, and the Honerkamp-Smith membrane sequence documented above. These are published measurements. The three new SVGs below are original teaching graphics, not experimental data. They use the Lecture 8 palette and contain no plot titles.

| Asset | Construction and meaning |
| --- | --- |
| `spatial-order/chain-three-lengths.svg` | Schematic 21-site chain: adjacent sites are one bond apart; the illustrative correlation-length bracket spans six bonds; the full extent is 20 bonds. Correlation length is an exponential decay scale, not a hard interaction cutoff. |
| `spatial-order/fixed-correlation-length-growing-chain.svg` | Exact exponential correlation with fixed `xi = 10` bonds and `p_flip = (1 - exp(-1/10))/2 ≈ 0.0475813`. Curves are `exp[-u*(N-1)/10]`, with `u = n/(N-1)` and `N = 6, 21, 81`. The lines interpolate the discrete-site formula; endpoint markers are the last sites. Increasing N changes the physical distance represented by the same fractional position. |
| `spatial-order/ising-three-interpretations.svg` | One illustrative 5×5 binary pattern drawn as up/down moments, occupied/empty sites, and species A/B. The pattern is not an equilibrium sample. Reinterpretations of the state variable illustrate lattice models; physical parameters and constraints depend on the application. |

The accompanying physical examples use Tong's chapter 5 (already cited in the notebook), Ising (1925), and Onsager (1944), DOI `10.1103/PhysRev.65.117`. Neural-population modeling: Schneidman et al. (2006), DOI `10.1038/nature04701`, author manuscript <https://arxiv.org/abs/q-bio/0512013>. Associative memory: Hopfield (1982), DOI `10.1073/pnas.79.8.2554`. These are applications of generalized binary pair-interaction models, not claims that neural populations follow the homogeneous nearest-neighbor ferromagnetic chain. The membrane example concerns model lipid vesicles, not an assertion that all cell membranes are at criticality. The flock preview distinguishes the published first-zero-crossing range from the chain's exponential decay length and motivates later explanation of the flock measurements.

## Lecture 9 fresh draft — September 30, 2026

The fresh notebook uses the following curated dependencies, with all model and analysis code kept inside the notebook. Downloads and full selection records remain in `/Users/jshaevitz/Documents/Teaching/Swarming/lecture-09-data-exploration-2026-09-30/`. This checkpoint is in private development; it does not release the assets to the public repository.

### Cell-derived membrane and noncritical lipid-mixture movies

Source: Veatch et al. (2008), [Critical Fluctuations in Plasma Membrane Vesicles](https://doi.org/10.1021/cb800012x). Publisher archives: [Movie S1](https://acs.figshare.com/articles/media/Critical_Fluctuations_in_Plasma_Membrane_Vesicles/2938459), DOI `10.1021/cb800012x.s001`; [Movie S7](https://acs.figshare.com/articles/media/Critical_Fluctuations_in_Plasma_Membrane_Vesicles/2938423), DOI `10.1021/cb800012x.s007`; [original supplemental captions](https://acs.figshare.com/articles/journal_contribution/Critical_Fluctuations_in_Plasma_Membrane_Vesicles/2938438), DOI `10.1021/cb800012x.s008`.

- `membranes/gpmv-critical-cooling-reheating.mp4`: original S1, `cb800012x_si_001.mov`, 510 frames, 150 × 157 pixels; cooling and reheating a DiI-C12-labeled cell-derived giant plasma membrane vesicle. The vesicle is isolated from a cell, not an intact living cell.
- `membranes/lipid-mixture-noncritical-demixing.mp4`: original S7, `cb800012x_si_007.mov`, 100 frames, 151 × 157 pixels; noncritical demixing in an artificial 40/40/20 diPhyPC/DPPC/cholesterol membrane with 0.5 mol% DiI-C12, transition near 41.5 °C.

Both were converted to H.264/yuv420p with CRF 12 for notebook playback; odd dimensions were padded at the right/bottom to 150 × 158 and 152 × 158, respectively. No spatial rescaling or frame interpolation was performed. Source annotations and scale bars are retained. The supplement specifies 2 fps acquisition and 15 fps playback: playback is 7.5 times faster. Ten frames belong to each temperature step, separated by more than two minutes of equilibration. These files must not be treated as a continuous physical-time record across temperature steps. The S1 exposure is 250 ms and the scale bars represent 5 µm. Scale-bar pixel lengths differ between movies.

The notebook's image covariance uses three ten-frame S1 blocks under `data/membranes/`. The 23.6 °C block adds visible large domains and a much stronger covariance. Precision correlation-length scaling comes from the separate Honerkamp-Smith artificial-membrane experiment already documented above. No new exponent is fitted from these compressed movies.

### Measured jackdaw trajectory replay

`flocking/jackdaw-transit-04-reconstruction.mp4` is an original rendering of measured 3D trajectories from [Ling et al. (2019)](https://doi.org/10.1098/rsif.2019.0450), [official archive](https://rs.figshare.com/articles/dataset/Data_code_and_Movies_from_Collective_turns_in_jackdaw_flocks_kinematics_and_information_transfer/10011374). The selected transit event has 196 birds in 300 complete frames. The movie shows x-y positions relative to the moving flock center; analysis uses full 3D positions and velocities. Every third supplied frame is rendered at 20 fps, yielding a five-second replay at approximately acquisition speed. The clock displays actual source timestamps. No missing birds or simulated trajectories were introduced. The notebook regenerates the movie from `data/flocking/jackdaw-transit-04.csv`.

`flocking/jackdaw-raw-camera-related-study.mp4` is an eight-second, 960-pixel-wide excerpt of [Supplementary Movie 1](https://media.springernature.com/original/springer-static/esm/art%3A10.1038%2Fs41467-019-13281-4/MediaObjects/41467_2019_13281_MOESM4_ESM.mov) from [Ling et al., *Nature Communications* (2019)](https://doi.org/10.1038/s41467-019-13281-4), CC BY 4.0. The source movie places actual camera footage beside reconstructed 3D tracks. This is a different transit flock from the 196-bird event analyzed in the notebook. The excerpt was trimmed and resized for lecture playback; no other content was changed.

### Bacillus subtilis moving rafts and nonmotile clusters

Source: [Jeckel et al. (2019)](https://doi.org/10.1073/pnas.1811722116), [author-lab explorer](https://drescherlab.org/data/swarm/). The files are original, byte-identical author downloads:

- `bacterial-swarms/moving-rafts.mp4`: [movie 000360](https://drescherlab.org/data/swarm/data/movies/000360.mp4).
- `bacterial-swarms/nonmotile-clusters.mp4`: [movie 000536](https://drescherlab.org/data/swarm/data/movies/000536.mp4).

Both files are 512 × 512, 48 frames, 20 fps, and 2.4 seconds long, with original millisecond timestamps and 20 µm scale bars. The first shows moving bacterial rafts; the second shows predominantly nonmotile clusters. Both report density 5.4 cells per 100 µm² in the explorer, at different times and positions. The reported speed and rafting/nonmotile fractions are packaged in `data/bacterial-swarms/`; this is a descriptive comparison, not a matched causal experiment. The movies were decoded, inspected, and checked for notebook playback.

`moving-rafts-flow-overlay.mp4` and `nonmotile-clusters-flow-overlay.mp4` are course-generated derivatives, regenerated by the Lecture 9 notebook. Farnebäck optical flow is estimated between consecutive 5 ms source frames within the cell field, the frame-average flow is removed, and the field is smoothed and sampled every 32 pixels for legible arrows. Both clips use the same fixed arrow scale (0.25 display pixels per µm/s); displacements shorter than 2 display pixels appear as dots and arrows longer than 24 pixels are capped. These arrows show estimated image motion, not tracked individual bacteria. The original footage, timestamps, and scale bars remain visible underneath. Output is 512 × 512 H.264/yuv420p, 48 frames at 20 fps.

These third-party movies and source-derived data retain their source-specific terms and are excluded from the repository's original-content licenses. The trajectory replay is original course rendering of source observations.

### Packaged-file checksums

| File | Bytes | SHA-256 |
| --- | ---: | --- |
| `media/membranes/gpmv-critical-cooling-reheating.mp4` | 1,712,450 | `92dc34ecb02c783e2a3eaf0b705b834b21c75523663961c38df44f5593e4a52a` |
| `media/membranes/lipid-mixture-noncritical-demixing.mp4` | 669,600 | `f7ee355b65126bdfc5b585657471cf7f7496a503905292f035c7fb4ae93454a1` |
| `media/flocking/jackdaw-transit-04-reconstruction.mp4` | 191,840 | `8ad0272d3c2d111a4ec0e582881cbade04b83c733137f3b73d46f85e4725090f` |
| `media/flocking/jackdaw-raw-camera-related-study.mp4` | 1,619,985 | `c20d1d355e471e6fd99a850b63cac646a99a238718b230f28e6129e646cf0edd` |
| `media/bacterial-swarms/moving-rafts.mp4` | 1,330,413 | `1ba962f38cc39b836552c62785bd82ca1720065b728766c14779af9b62e3d62a` |
| `media/bacterial-swarms/nonmotile-clusters.mp4` | 365,175 | `45a589650145611af1125805de00db6d7c1f988302d9b119a57f6104a2b86766` |
| `media/bacterial-swarms/moving-rafts-flow-overlay.mp4` | 2,006,901 | `48ada7af392cd50f0aff6ded3f3ccecd51dcefb281494cc31c853f8f4d613a98` |
| `media/bacterial-swarms/nonmotile-clusters-flow-overlay.mp4` | 512,022 | `38b859e5e351de7829876528f688f6b087e2a6cd7bce7fd431cd5d2fade5652f` |
| `data/membranes/gpmv-three-temperature-blocks.npz` | 157,630 | `ea4faafc0a7988213efd70461f7fed8b6c3f2e80bcd2f0632380af3be27f59c4` |
| `data/flocking/jackdaw-transit-04.csv` | 4,403,659 | `a71b35317bc9c5ae55338a31e430fbe6c12078e20bf93c58a55cf169c88a2585` |
| `data/bacterial-swarms/raft-cluster-comparison.csv` | 378 | `77f7e30deda48eb00c02795b1a14dbd8d8171e8225cdf5b4b457807eab105c0e` |
### Lecture 9 membrane discussion graphics — September 30, 2026

- `membranes/membrane-molecular-cutaway.png`: AI-generated conceptual molecular rendering of an isolated phospholipid and a bilayer with cholesterol and a transmembrane protein. Replaces the earlier Matplotlib schematic.
- `membranes/membrane-shape-packing-charge.png`: AI-generated conceptual comparison of amphiphile geometry, chain packing, and electrostatic screening. The molecular surfaces and bead chains are schematic, not chemically exact structures or simulation output; object counts and sizes are illustrative.

Generated with the built-in image-generation tool at Josh's request. Inspected for head/tail orientation, two opposing leaflets, aqueous versus hydrophobic compartments, curvature geometry, and signs of charge/screening. Source teaching perspective: Josh's PHY412 handwritten *Lecture 9: Membrane Mechanics*, pages 1–2 and 5–8, at `/Users/jshaevitz/Documents/Teaching/PHY412 Biological Physics/2008-2009/Lecture Notes PDF/Lecture_9_MembraneMechanics.pdf`. The comparisons add standard cis-chain-packing and electrostatic-screening concepts. Notebook text keeps the graphics conceptual and returns to the measured Veatch movie for evidence of temperature-dependent domains.

<details>
<summary>Generation prompt: molecular cutaway</summary>

```text
Use case: scientific-educational.
Asset: wide 16:9 high-resolution university biophysics lecture graphic. Generate a sophisticated, visually arresting molecular 3D scientific rendering, with the material depth and lighting of a professional molecular visualization, not a flat cartoon, vector clip art, or a generic infographic.
Subject: "From one lipid to a living membrane", but NO title rendered. Near-white warm background, generous whitespace, dark charcoal sans-serif labels readable on a projector. Blue/teal polar heads, warm amber hydrocarbon chains, a few rose heads, gold cholesterol and muted plum membrane protein.
Composition: left 25% a large isolated phospholipid with a clearly distinguishable small polar headgroup on a glycerol backbone and TWO connected hydrocarbon tails, one mostly extended zigzag and one with a distinct cis kink. Represent atoms as tactile small spheres and bonds, scientifically schematic rather than an exact species; do not draw chemical formulas. Three clean fine leader lines, accurate labels exactly "Polar head", "Hydrocarbon tails", "Cis kink".
Right 70%: a large three-quarter perspective CUTAWAY of a fluid lipid bilayer ribbon with two clearly opposed leaflets, approximately 25 lipids across the front section and several rows extending back in depth. The top leaflet heads face the water above; bottom leaflet heads face water below. Every lipid has a head at its water-facing exterior connected to two tails pointing inward. The opposing tails meet in the middle; NO heads in the hydrocarbon core, NO water in the hydrocarbon core. Show a slightly undulating membrane, varied extended and kinked chains, crowded but intelligible. Small gold cholesterol molecules have a short polar tip at headgroup depth and a compact rigid hydrophobic body among the upper tails, NOT spanning the bilayer. One convincing lobed plum transmembrane protein spans the entire bilayer with aqueous parts protruding both sides, no large empty pore. Some tiny water molecule motifs outside only, leave the water transparent rather than dark blue.
Exactly these additional labels with short precise leader lines: "Water" above and below, "Two leaflets" pointing to both exterior head layers using a branching leader, "Hydrophobic core" pointing to the tail interior at the front edge, "Cholesterol" pointing to one gold molecule, "Membrane protein" pointing to the plum protein.
Use correct architecture, realistic molecular crowding, elegant soft shadows, crisp focus throughout, strong depth, exquisite visual clarity. This is a conceptual rendering, not microscopy. No unrelated decorations, no panel border, no paragraphs, no legend, no captions, no equations, no extra text.
```

</details>

<details>
<summary>Generation prompt: shape, packing, charge</summary>

```text
Use case: scientific-educational.
Create a beautiful wide 16:9 molecular biophysics teaching graphic on clean warm white, with large readable charcoal labels. Premium tactile 3D molecular rendering, elegant soft shadows, exquisite detail and clear compositions, NOT flat vector art, not stick-and-circle clipart. Coordinate blue/teal hydrophilic heads, amber hydrocarbon tails, rose negatively charged heads, gold positive ions. Three spacious columns separated by whitespace, with two comparison scenes per column stacked vertically. Each scene should be a real visual argument, not decorative.
Column 1 heading exactly "SHAPE". Upper scene: six cylindrical two-tailed amphiphiles each in a very faint translucent cylindrical packing envelope; head width and tail bundle width are comparable, arranged side by side with heads on an approximately flat line and tails beneath, label "Flat packing". Lower scene: six wedge-shaped amphiphiles, each with a wide head and narrow single tail, arranged as a convex circular ARC, heads on outer circumference and tails pointing radially inward. A faint translucent wedge envelope on one molecule makes the geometry visible. Label "Curved packing". Only a short arc, not a full sphere, tails never outward.
Column 2 heading exactly "TAILS". Upper scene: a close-up row of six blue-headed, two-tailed lipids with straight extended hydrocarbon chains tightly aligned, amber small spherical beads joined by bonds, distinct neighboring chains in close lateral contact. Label "Close contacts". Lower scene: a comparable row of six blue-headed two-tailed lipids, every other chain with a strong cis bend in its middle; less uniform close packing with visible gaps among chains. Label "Kinks disrupt packing". Keep same number of lipids and same overall scale. No false suggestion of breaking tails; connected chains only.
Column 3 heading exactly "CHARGE". Upper scene: four rose lipid headgroups each with a clearly printed minus sign, amber tails downward, diffuse pale hydration halos, two horizontal opposing arrows between central heads pointing apart. Label "Like charges repel". Lower scene: same four negative rose headgroups and tails; several small gold spheres each clearly marked plus in the water ABOVE the heads, concentrated near but not glued onto the negative heads, no gold ions in the tails. Label "Ions screen repulsion". Use short weaker opposing arrows to indicate reduced repulsion, not attraction.
No other text. Do not add molecular formulas, numerical values, equations, border boxes, captions, title or watermark. Maintain schematic educational accuracy over invented atom-level chemistry. Make this visually rich yet immediately comprehensible across a lecture hall. Headgroups contact water; tails remain clearly identifiable. Strong coherent 3D lighting and generous white space.
```

</details>
