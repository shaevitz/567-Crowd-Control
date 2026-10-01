# Jackdaw turning trajectories

`jackdaw-transit-04.csv` is transit event 04 from Ling et al. (2019), [Collective turns in jackdaw flocks: kinematics and information transfer](https://doi.org/10.1098/rsif.2019.0450). [Official data, code, and movie archive](https://rs.figshare.com/articles/dataset/Data_code_and_Movies_from_Collective_turns_in_jackdaw_flocks_kinematics_and_information_transfer/10011374), DOI `10.6084/m9.figshare.10011374`.

The source is the event labeled flock 04 in `datas1.txt` from the official `jackdaw-turns.zip` archive, downloaded September 30, 2026. It contains 196 identified birds, 300 complete frames, and 58,800 rows. The largest transit event and its midpoint were selected before examining the correlation shape. These are reconstructed measured trajectories, not simulated birds.

| Columns | Units and meaning |
| --- | --- |
| `bird_id` | Source identity; IDs need not be consecutive |
| `x_m`, `y_m`, `z_m` | 3D position, m |
| `time_s` | Supplied timestamp, s; event spans 10.9–15.8833 s |
| `vx_m_s`, `vy_m_s`, `vz_m_s` | Velocity components, m/s |
| `ax_m_s2`, `ay_m_s2`, `az_m_s2` | Acceleration components, m/s² |
| `wingbeat_hz` | Supplied wingbeat frequency, Hz |

Source values were retained with nine significant digits and explicit column names. No trajectory smoothing, interpolation, or synthetic filling was introduced. All rows are finite, each frame has 196 birds, and `(bird_id, time_s)` has no duplicates. The source timestamps, rather than an assumed frame rate, determine time in the notebook.

The classroom analysis uses the midpoint at 13.4 s and full 3D distances and velocity products. The radial distribution function counts neighbors in spherical shells around birds whose entire shell lies inside the observed convex hull. It divides mean neighbors per center by the uniform-density expectation `(N-1) * shell_volume / hull_volume`. The plot stops at 7 m and omits bins with fewer than 10 expected counts. Because the observed flock is not spatially homogeneous, this direct `g(r)` includes broad density variation as well as local structure; it should not be interpreted as a pure local-interaction curve.

The velocity comparison uses the same pairs and 500 velocity permutations. Permutation preserves positions, g(r), mean velocity, and overall heading alignment. Subtracting the snapshot mean creates the expected off-diagonal baseline `-1/(N-1)`. One frame demonstrates local coordination; it is not a size-scaling or causal-interaction test. Published starling scaling in the lecture comes from a different study. The 4 m contact graph is explicitly hypothetical; the cutoff is roughly twice this frame’s median nearest-neighbor distance (2.26 m).

The companion movie is generated directly by this notebook from the measured positions, displayed in the x-y plane relative to the instantaneous flock center. See `media/README.md` for playback details. Source data retain their source-specific terms and are excluded from the repository's original-content licenses.
