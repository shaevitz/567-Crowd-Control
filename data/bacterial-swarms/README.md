# Moving rafts and nonmotile clusters

`raft-cluster-comparison.csv` contains two published, rounded observations from the author-lab [swarm data explorer](https://drescherlab.org/data/swarm/) associated with Jeckel et al. (2019), [Learning the space-time phase diagram of bacterial swarm expansion](https://doi.org/10.1073/pnas.1811722116).

The explorer embeds 1,479 movie-linked observations. Two examples were selected with the same reported density, 5.4 cells per 100 µm², and contrasting motion. The comparison uses the authors' derived measurements, not newly tracked bacterial trajectories.

| Example | Author movie | Time, min | Position, mm | Speed, µm/s | Rafting fraction | Nonmotile-cluster fraction |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| Moving rafts | `data/movies/000360.mp4` | 61.0 | 2.6 | 77.1 | 0.8 | 0.0 |
| Nonmotile clusters | `data/movies/000536.mp4` | 108.2 | −0.0 | 15.3 | 0.1 | 0.9 |

Original field labels, movie paths, and rounded values are retained; `example`, `speed_um_s`, and `density_per_100_um2` are convenience columns. `Phase Diagram` is the source's category code and is not interpreted in the lecture. Times and positions differ. This is a descriptive contrast at matched reported density, not a controlled causal test or a sample of independent replicates. Rafting fraction is not interchangeable with directional polarization or velocity covariance.

The notebook first calculates a normalized spatial **image-intensity** correlation from both movies. It crops out timestamps and scale bars, samples every sixth source frame, smooths with a 5-pixel Gaussian to suppress individual cell edges, removes a 50-pixel broad background, subtracts each frame's mean, and radially averages the connected image autocorrelation with an exact overlap count before normalizing by the on-site variance. The two curves are similar at short separations. This measures image texture as a proxy for spatial cell pattern, not a cell-center radial distribution function; no reliable cell-center coordinates are supplied for these crowded clips.

Next the notebook calculates an image-flow spatial covariance from the **same** two movies. It estimates displacement between consecutive 5 ms source frames with Farnebäck optical flow, converts pixels to approximate physical units using the 20 µm scale bar (~70 pixels), downsamples to an 8-pixel grid, subtracts each frame's mean flow, and radially averages the two-component spatial autocorrelation over 47 frame pairs. The logarithmic plot shows the unnormalized covariance from 0–26 µm. Short-range covariance is about 90 times larger in the moving-raft clip; the contrast remains about 80–90 times with optical-flow window sizes of 21–41 pixels. These are image-motion estimates, not the authors' individual-cell velocities or independent biological replicates. Optical-flow smoothing affects the shortest spatial scales, so no correlation length is fitted.

Between the position and velocity plots, the notebook displays two derived movies with optical-flow arrows on the original cells. They use the same flow estimator and frame-mean subtraction as the covariance plot, with additional smoothing and sparser sampling solely for readable arrows. Both use one fixed arrow scale. The notebook code regenerates the clips; `media/README.md` records their processing and checksums.

The two associated, unmodified microscopy movies are under `media/bacterial-swarms/`; their source URLs and checksums are in `media/README.md`. The full extracted table and original explorer HTML remain in the external September 30 exploration folder. Source data and movies retain their source-specific terms and are excluded from the repository's original-content licenses.
