# Membrane image blocks

`gpmv-three-temperature-blocks.npz` contains decoded grayscale observations from Movie S1 of Veatch et al. (2008), [Critical Fluctuations in Plasma Membrane Vesicles](https://doi.org/10.1021/cb800012x). [Publisher movie archive](https://acs.figshare.com/articles/media/Critical_Fluctuations_in_Plasma_Membrane_Vesicles/2938459), DOI `10.1021/cb800012x.s001`.

| Array | Meaning |
| --- | --- |
| `frames` | uint8 array `(3, 10, 157, 150)`: ten original decoded frames per temperature |
| `temperature_c` | 26.0, 24.8, and 23.0 °C, read from the source annotations |
| `source_frame_start` | Zero-based source frame indices 0, 130, and 360 |
| `pixel_um` | 5/63 µm per pixel, from the 5 µm horizontal scale bar |
| `roi_center_xy` | Disk center `(76, 78)` pixels |
| `roi_radius_px` | Disk radius 34 pixels |

These are cell-derived giant plasma membrane vesicles, isolated from cells. No simulated observations, upsampling, denoising, or intensity corrections are stored in this file. The first two blocks were selected within the same vesicle's one-phase regime before the image covariance was examined. The added 23.0 °C block shows large separated domains in the same vesicle. Ten frames belong to each temperature step; the supplement specifies 2 fps acquisition, 250 ms exposures, and more than two minutes of equilibration between steps.

The notebook masks the rim and annotations, removes a fitted smooth illumination background separately from each frame (constant, x, y, and radial quadratic terms), and averages mask-aware, zero-padded spatial products in three-pixel annuli. Distances are projected image separations. The small field of view, optical blur, curvature, compression, and background removal limit an intrinsic range estimate. The first two blocks compare short-range fluctuation strength; the third shows large domains with a much stronger, longer-ranged image covariance. These images do not fit a correlation-length exponent. The published Honerkamp-Smith et al. (2008) measurements provide the separate precision benchmark.

The original download and selection record are preserved in the external September 30 exploration folder. Source movie SHA-256: `c740bfbaccc81182eccfc662ae3a048d7d75f0cfa18f3ba3fbabd0f11b6bebb7`. Source movie and data retain their source-specific terms and are excluded from the repository's original-content licenses.
