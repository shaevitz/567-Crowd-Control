# Mouse paw trajectories

Ten running bouts supplied by Josh Shaevitz on 2026-08-22. SLEAP pose tracking assigned a labeled position to each paw in every movie frame. Each CSV contains the resulting synchronized one-dimensional trajectories for four identified paws sampled at 80 frames/s.

| Column | Meaning |
| --- | --- |
| `frame` | Frame index in the source recording |
| `LF` | Left front paw |
| `RF` | Right front paw |
| `RH` | Right hind paw |
| `LH` | Left hind paw |

The trajectories were normalized separately to remove translational drift and scale each paw approximately to the interval $[-1,1]$. They are therefore unitless; the original unnormalized trajectories remain in Josh's source package.

`mouse-bout-08.csv` contains 131 samples and is synchronized frame-for-frame with `media/mouse-running.mp4`.

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
