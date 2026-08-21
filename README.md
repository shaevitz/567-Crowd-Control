# BNG/BPY/CBE/MAE 567 
# Crowd Control: Understanding and Manipulating Collective Behaviors and Swarm Dynamics

Course materials for **BNG/BPY/CBE/MAE 567 Crowd Control: Understanding and Manipulating Collective Behaviors and Swarm Dynamics**.

## Instructors

- Joshua W. Shaevitz
- Daniel Cohen

## Lectures

- [Lecture 2 — Temporal synchrony: from movies to numbers](lectures/lecture-02-firefly-synchronization.ipynb)

## Local environment

Create and register the shared course kernel:

```bash
conda env create -f environment.yml
conda activate swarming-course
python -m ipykernel install --user --name swarming-course --display-name "Python (swarming-course)"
```

In VS Code, choose **Python (swarming-course)** from the notebook kernel picker. Lecture notebooks link to the course-wide `media/` and `data/` directories using relative paths.

## License

- Original lecture text, Markdown cells, and instructional figures are licensed under [CC BY 4.0](LICENSE).
- Source code in `code/` and code cells in notebooks are licensed under the [MIT License](LICENSE-CODE).
- Third-party media and data are not covered by these licenses. See [`media/README.md`](media/README.md) and [`data/`](data/) for source-specific terms.

## Course site

- [Canvas course page](https://princeton.instructure.com/courses/23777)
