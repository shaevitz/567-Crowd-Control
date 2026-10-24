
# Measured three-dimensional midge swarms

Source: Sinhuber, van der Vaart, Ni, Puckett, Kelley & Ouellette (2019), [*Three-dimensional time-resolved trajectories from laboratory insect swarms*](https://doi.org/10.1038/sdata.2019.36). Deposit: [Figshare 7336193, version 2](https://doi.org/10.6084/m9.figshare.7336193.v2), source data license CC0.

`midge-ob11.txt` preserves the original `Ob11.txt` bytes, with the deposit MD5 verified. The public deposit contains 19 events; this compact complete event was selected for teaching development. Acquisition details and the reproducible schema audit are in the root [manifest](../collective-motion-source-manifest.json), [audit](../collective-motion-source-audit.json), and [utility](../acquire_collective_sources.py).

The file has 284,772 comma-separated numeric rows and 11 columns:

| Columns | Meaning and units |
| --- | --- |
| 1 | Track label |
| 2, 3, 4 | x, z, y, in mm; source order is **x, z, y** |
| 5 | Time, s |
| 6, 7, 8 | vx, vz, vy, in mm/s |
| 9, 10, 11 | ax, az, ay, in mm/s² |

All values are finite and `(track label, time)` pairs are unique. Recorded timestamps run from 0.06 to 199.95 s in 0.01 s increments. The mean observed count per time is 14.25, range 1–17 including event-edge coverage. There are 277 track labels: they are trajectory fragments, **not 277 distinct insects or guaranteed lifetime identities**. Do not bridge fragment labels without a separate reconstruction. Apply coverage masks explicitly when comparing time windows, and compare polarization with a reference matched to observed group size.

Planned use: a real-data 3D replay, persistent individual motion, a bounded swarm with little bulk translation, and a counterpoint to strongly polarized schools. Retain the distinction between collective organization and a single global order parameter. A reconstruction from these tracks is not original camera footage; no exact camera movie paired to Ob11 was verified in this pass.
