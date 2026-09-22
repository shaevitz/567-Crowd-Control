# Course media sources

This directory contains lecture-ready media shared across the course. Keep source, license, and transformation notes here whenever a new asset is added.

## Circadian entrainment (Lecture 6)

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
- **Teaching use:** Follows the ordered KaiC state cycle in Lecture 6 and prepares the finite-KaiA kinetic model.
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

Lecture 6 keeps the KaiC reaction network's TikZ/`tikz-cd` source in the `kaic-state-figure` notebook cell and the fly feedback-loop TikZ source in the `fly-clock-figure` cell. Each cell compiles its source with `latex` and `dvisvgm`, displays SVG with outlined fonts, and saves that figure in the notebook output; no separate source or image asset is needed. See the repository README for regeneration dependencies. The KaiC diagram shows four labeled subunit phosphorylation states with paired, equal-weight arrows. Clockwise reactions k1–k4 and their reverse reactions k−1–k−4 match the later kinetic equations; arrow weight does not encode rate magnitude or instantaneous net flux. The network follows Rust et al. (2007), [doi:10.1126/science.1148596](https://doi.org/10.1126/science.1148596). The fly diagram locates CRY-dependent TIM removal within the delayed negative-feedback loop described by Myers et al. (1996), [doi:10.1126/science.271.5256.1736](https://doi.org/10.1126/science.271.5256.1736). Quantitative figures are generated from the data documented in `../data/circadian/README.md` or from the explicitly identified phase model.

### Human circadian experiments

- **`human-siffre-midnight-cave-1972.jpg`:** Michel Siffre's illuminated camp during his 1972 Midnight Cave isolation experiment, from Joshua Foer and Michel Siffre, “Caveman,” *Cabinet* 30 (2008). Downloaded from the [publisher-hosted image](https://www.cabinetmagazine.org/issues/30/cabinet_030_foer_joshua_siffre_michel_001.jpg) without modification.
- **`human-mars500-actograms-basner-2013.png`:** Sleep actograms for crewmembers B and C from Figure 3 of Basner et al., *PNAS* 110, 2635–2640 (2013), [DOI 10.1073/pnas.1212646110](https://doi.org/10.1073/pnas.1212646110). Panels were cropped from the paper and placed side by side without altering the data.
- **`human-czeisler-28h-1999.png`:** Figure 1 right panel from Czeisler et al., *Science* 284, 2177–2181 (1999), [DOI 10.1126/science.284.5423.2177](https://doi.org/10.1126/science.284.5423.2177). Cropped from the article PDF; the plotted schedule and temperature-phase estimate are unchanged.
- **`human-light-prc-khalsa-2003-reproduction.jpg` and `human-light-prc-khalsa-2003-reproduction-night.png`:** Reproduction of the human bright-light phase-response curve from Khalsa et al. (2003), as published by Duffy and Czeisler (2009), [PMC2717723](https://pmc.ncbi.nlm.nih.gov/articles/PMC2717723/). The PNG used in the notebook adds only two translucent gray overlays to mark the approximate biological night, phase 18–24 and 0–6; plotted data and labels are unchanged.
- **`human-melatonin-entrainment-sack-2000.png`:** Treatment panel from Figure 2 of Sack et al., *NEJM* 343, 1070–1077 (2000), [DOI 10.1056/NEJM200010123431503](https://doi.org/10.1056/NEJM200010123431503). Cropped from the article PDF without altering the plotted records.
- **`human-martian-periods-scheer-2007.png`:** Figure 2B from Scheer et al., *PLOS ONE* 2, e721 (2007), [DOI 10.1371/journal.pone.0000721](https://doi.org/10.1371/journal.pone.0000721). Cropped from the publisher image with all participant estimates and confidence intervals retained.

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

### `drosophila-gait-umap.png` and `drosophila-gait-examples.png`

- **What they show:** A density map of the two-dimensional UMAP projection of five independent fruit-fly leg-phase differences, plus six-leg phase trajectories sampled from seven numbered locations in that gait space.
- **Teaching use:** Extends Lecture 4's relative-phase description from four mouse paws to six fly legs and shows how wave, tripod, tetrapod, and partial-synchrony patterns occupy a broader coordination space.
- **Source:** Crops from an instructor-supplied composite slide provided on 2026-09-16. The related gait-space study is DeAngelis et al., “The manifold structure of limb coordination in walking Drosophila,” *eLife* 8 (2019), e46409, [doi:10.7554/eLife.46409](https://doi.org/10.7554/eLife.46409), which is also cited in the notebook Sources.
- **Processing:** The UMAP and example-trajectory panels were cropped without rescaling; a fragment of the slide title outside the scientific content was masked white in the trajectory crop. Data graphics, labels, and colors were not altered.

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

### `bob-full-locomotion-ted-excerpt-vscode.mp4`

- Source: Josh's archived teaching compilation, `/Users/jshaevitz/Documents/Teaching/PHY412 Biological Physics/2008-2009/Course Materials/Lecture_14 Bob Full Ted videos.mov`.
- Content: Robert Full's locomotion and robotics presentation, corresponding to material in [Robots inspired by cockroach ingenuity](https://www.ted.com/talks/robert_full_robots_inspired_by_cockroach_ingenuity), TED2002. This local file is an archival teaching excerpt, not the complete current TED-hosted talk.
- Processing: The first track pair was extracted; the H.264 video is preserved and the unsupported AAC audio was transcoded to MP3 for VS Code notebook playback. Duration 742.236667 s, source resolution 432 × 240.
- Notebook cue: local 03:00–05:45 covers spring templates and passive mechanics. The cell has editable start/stop seconds and audio-enabled controls.
- Third-party TED material; the course's original-content license does not cover it.

### `cockroach-jetpack.mp4`

- Source: Josh's archived teaching movie, `First_Cockroach_Jetpack_Movie.mp4`.
- Content: Overhead high-speed footage of a running cockroach receiving a brief lateral impulse from the apparatus carried on its back.
- Processing: H.264 video remuxed without re-encoding; AAC audio transcoded to MP3 for playback in VS Code notebook webviews. Duration 21.867 s, resolution 240 × 210.
- Teaching role: Introduces the perturbation experiment immediately before the Jindrich–Full recovery-time measurements.
- Archived third-party teaching material; the course's original-content license does not cover it.

### `locomotion-force-and-template.png`

- Source: Dickinson, Farley, Full, Koehl, Kram, and Lehman, “How Animals Move: An Integrative View,” *Science* 288, 100–106 (2000), [doi:10.1126/science.288.5463.100](https://doi.org/10.1126/science.288.5463.100), Figure 1A–B on printed p. 101.
- Processing: Rendered from the article PDF at high resolution and cropped to panels A–B. Figure content was not redrawn or recolored.
- Teaching role: Connects force vectors to the pendulum and spring mechanical templates.
- Third-party AAAS figure; the course's original-content license does not cover it.

All other Lecture 5 schematics, curves, and the spring-leg animation are generated by code inside the notebook. The Jindrich–Full timing table uses published mean ± SD and sample counts; no synthetic trace is presented as experimental data.

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
