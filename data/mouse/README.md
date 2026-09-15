# Mouse paw trajectories

Ten running bouts supplied by Josh Shaevitz on 2026-08-22. SLEAP pose tracking assigned a labeled position to each paw in every movie frame. Each CSV contains the resulting synchronized one-dimensional trajectories for four identified paws sampled at 80 frames/s.

| Column | Meaning |
| --- | --- |
| `frame` | Frame index in the source recording |
| `LF` | Left front paw |
| `RF` | Right front paw |
| `LH` | Left hind paw |
| `RH` | Right hind paw |

The trajectories were normalized separately to remove translational drift and scale each paw approximately to the interval $[-1,1]$. They are therefore unitless; the original unnormalized trajectories remain in Josh's source package.

`mouse-bout-08.csv` contains 131 samples and is synchronized frame-for-frame with `media/mouse-running.mp4`.

Lecture 4 uses the paw order 1=LF, 2=RF, 3=LH, 4=RH. The original bout CSVs remain unchanged; notebook computations select columns by paw name in this order.

## Digitized full-data fit

`mouse-full-fit-digitized.csv` reconstructs the instructor-supplied 30,000-bout fit graphics, not the ten-bout trajectory fit. The first source image, `media/mouse-coupling-fit-small-dataset.png`, shows coupling strengths in s⁻¹; the second, `media/mouse-coupling-fit-large-dataset.png`, shows phase offsets in radians despite its incorrect axis label. Josh confirmed the quantity and the direction convention on 2026-09-15.

Each row retains the original pair label, its remapped pair label, and explicit receiver/source anatomy. In both numberings, pair ij means influence j→i. Original numbering was 1=LF, 2=RH, 3=RF, 4=LH; current numbering is 1=LF, 2=RF, 3=LH, 4=RH. Matching by anatomy prevents reordering from reversing an interaction.

The `coupling` and `phase_offset` columns are bar heights; each `_lower`/`_upper` column stores the corresponding error-bar endpoint. Both endpoints are preserved independently, including small asymmetries. The source images do not specify whether these intervals represent SD, SE, or confidence intervals; the notebook does not assign a statistical interpretation or recompute them.

Digitization used a linear calibration through the centers of the four labeled y-axis ticks (0, 1, 2, 3): pixel y = 730.20 − 218.30 × value for coupling and y = 737.45 − 191.05 × value for offset. Colored bar interiors locate each top border, and the short black horizontal segments locate the two error-bar caps. Values are rounded to two decimal places; image resolution and border thickness limit accuracy to approximately 0.01–0.02 in the stated units. This digitization uncertainty is distinct from the displayed fit intervals. The original PNGs are retained for comparison.

## Source-file mapping

| Repository file | Source file in `josh_package.zip` |
| --- | --- |
| `mouse-bout-01.csv` | `mouse_01_OFT-0071-00.predictions_18.csv` |
| `mouse-bout-02.csv` | `mouse_02_OFT-0147-00.predictions_96.csv` |
| `mouse-bout-03.csv` | `mouse_03_OFT-0243-00.predictions_34.csv` |
| `mouse-bout-04.csv` | `mouse_04_OFT-0303-00.predictions_11.csv` |
| `mouse-bout-05.csv` | `mouse_05_OFT-0327-00.predictions_6.csv` |
| `mouse-bout-06.csv` | `mouse_06_OFT-0166-00.predictions_116.csv` |
| `mouse-bout-07.csv` | `mouse_07_OFT-0190-00.predictions_46.csv` |
| `mouse-bout-08.csv` | `mouse_08_OFT-0186-00.predictions_78.csv` |
| `mouse-bout-09.csv` | `mouse_09_OFT-0181-00.predictions_59.csv` |
| `mouse-bout-10.csv` | `mouse_10_OFT-0125-00.predictions_249.csv` |
