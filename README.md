# BNG/BPY/CBE/MAE 567 
# Crowd Control: Understanding and Manipulating Collective Behaviors and Swarm Dynamics

Course materials for **BNG/BPY/CBE/MAE 567 Crowd Control: Understanding and Manipulating Collective Behaviors and Swarm Dynamics**.

## Instructors

- Joshua W. Shaevitz
- Daniel Cohen

## Lectures

- [Lecture 2 — Temporal synchrony and the beauty of fireflies](lectures/lecture-02-firefly-synchronization.ipynb)
- [Lecture 3 — From phase to collective synchronization](lectures/lecture-03-kuramoto-model.ipynb)
- [Lecture 4 — From recordings to events, phase, and synchrony](lectures/lecture-04-recordings-to-phase.ipynb)
- [Lecture 5 — External forcing and circadian entrainment](lectures/lecture-05-external-forcing-entrainment.ipynb)

## Local environment

Create and register the shared course kernel:

```bash
conda env create -f environment.yml
conda activate swarming-course
python -m ipykernel install --user --name swarming-course --display-name "Python (swarming-course)"
```

In VS Code, choose **Python (swarming-course)** from the notebook kernel picker. Lecture notebooks link to the course-wide `media/` and `data/` directories using relative paths.

The Lecture 5 KaiC reaction diagram and fly-clock feedback-loop diagram keep their TikZ source and rendered SVG output in the notebook. Viewing the saved diagrams needs no LaTeX installation. To regenerate them, install a TeX distribution with `latex`, TikZ/PGF, `standalone`, and `dvisvgm` (for example, MacTeX or TeX Live); the KaiC diagram also uses `tikz-cd`. These system tools are separate from the conda environment; put their executables on `PATH`. The cells also check MacTeX's standard `/Library/TeX/texbin` location. Compilation uses a temporary directory and embeds font outlines in the SVG.

## License

- Original lecture text, Markdown cells, and instructional figures are licensed under [CC BY 4.0](LICENSE).
- Source code in notebook code cells is licensed under the [MIT License](LICENSE-CODE).
- Third-party media and data are not covered by these licenses. See [`media/README.md`](media/README.md) and [`data/`](data/) for source-specific terms.

## Course site

- [Canvas course page](https://princeton.instructure.com/courses/23777)
