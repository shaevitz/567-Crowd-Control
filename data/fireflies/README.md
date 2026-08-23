# Firefly teaching windows

`daily-observation-counts.csv` summarizes each complete Sony-camera recording. Observation totals come from the released `xyzt` tables; frame counts come from the full per-frame count vector `n` in each MATLAB reconstruction. It records duration, mean observations per frame, and observations per second, including frames with no detections at the beginning or end of a recording. It includes all nine released recording days; June 4 and June 6 were not included.

`five-minute-window-statistics.csv` contains the mean and standard deviation of the per-frame observation count in every complete nonoverlapping five-minute window. Windows are aligned to the first detected frame in each source table, contain 18,000 frames, and include zero-observation frames. These are the quantities used for the fluctuation-scaling plot in Lecture 2.

These two headerless CSV files are lecture-sized excerpts of the Sony stereo-camera reconstructions released with Sarfati, Hayes, and Peleg, “Three-dimensional time-resolved flash occurrences of swarming *Photinus carolinus* fireflies in their natural habitat” ([Dryad DOI](https://doi.org/10.5061/dryad.2547d7wvn)). The source dataset is CC0 1.0.

Each row has four columns: `x`, `y`, `z`, and `frame`. Coordinates are in meters. `frame` is the source-video frame index at 60 frames per second. There is deliberately no header so the excerpts preserve the schema of the released files.

| File | Source | Included frames | Rows | Selection |
| --- | --- | ---: | ---: | --- |
| `xyzt0603-class-window.csv` | `raw/xyzt0603.csv` | 317172–335171 | 782 | Highest-count nonoverlapping five-minute block on June 3 |
| `xyzt0611-class-window.csv` | `raw/xyzt0611.csv` | 129112–147111 | 28,721 | Highest-count nonoverlapping five-minute block on June 11 |

Nonoverlapping blocks were aligned to the first detected frame in each raw file. Each excerpt spans exactly 18,000 frames (300 seconds), including frames with no observation; zero-count frames are implicit because only detections appear in the CSV.

A row is a triangulated flash observation in one video frame, not a persistent firefly identity and not necessarily a complete biological flash. A visible flash commonly contributes rows in several consecutive frames.

SHA-256 checksums:

```text
8f68cc957757b75ae5f459fcd4c72b6456ed96ae465f24717ee1e2c2a682773c  xyzt0603-class-window.csv
8b121bba2c8460dddefd41ec7b56543115bac1b15b08067908ba4e6a2a0c3fda  xyzt0611-class-window.csv
```

## Controlled *Pteroptyx malaccae* entrainment

`pteroptyx-malaccae-entrainment-limit-digitized.csv` is a teaching digitization of Figure 1 in Ermentrout and Rinzel, “Beyond a pacemaker's entrainment limit: phase walk-through” ([DOI](https://doi.org/10.1152/ajpregu.1984.246.1.R102)). The figure identifies the animal as *Pteroptyx malaccae* and attributes the underlying experiment to Buck and colleagues. It shows the firefly interval, artificial-pacer interval, and firefly phase relative to the pacer as the imposed interval changes from about 770 ms to about 750 ms.

The published figure was rendered at 220 dpi. Point-marker centers were extracted as connected-component centroids and mapped to the printed axes with manually verified axis anchors. Obvious label and line fragments were removed using bounds specific to each trace. The CSV retains both the mapped values and the source-image coordinates so the digitization can be checked or revised.

This file contains values read from the published graph, not raw instrument records. The three series contain 143 firefly-interval points, 81 pacer-interval points, and 170 relative-phase points.

SHA-256 checksum:

```text
a1423f9ccfe47b5f9e4128e7a08624edd105ef4ae804f3835582fa5a7b3fc9c3  pteroptyx-malaccae-entrainment-limit-digitized.csv
```
