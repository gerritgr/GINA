# GINA
Neural Graph Inference From Independent Snapshots of Interacting Systems

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/gerritgr/GINA/)

Copyright: 2021, Gerrit Großmann, [Group of Modeling and Simulation](https://mosi.uni-saarland.de/) at [Saarland University](http://www.cs.uni-saarland.de/)


Official implementation of [GINA: Neural Relational Inference From Independent Snapshots](https://arxiv.org/abs/2105.14329)

Version: 0.1 (Please note that this is proof-of-concept code.)


# Overview
Gina takes observations of interacting systems and infers/reconstructs the (latent) underlying interaction graph (contact network). 

![alt text](overview.png "Overview")

Here, we see the successful reconstruction of a 7x7 grid graph. 

![alt text](movie.gif "Overview")


# Method
GINA considers each snapshot (observation of all components) individually and tries to predict the observable state of each node, given the measurements of each adjacent node. GINA optimizes the interaction graph in order to maximize the accuracy of this prediction. 

![alt text](gina.png "Gina")


# Usage

### Possibility I: With Standard Python

Install Python3, Pip3, and Jupyter notebook. Install Python-dependencies with: 

```console
pip install -r requirements.txt
```
Start Jupyter notebook

```console
jupyter notebook
```
and select the `GINA.ipynb` file. 

### Possibility II: With Colab
You can upload the  `GINA.ipynb` file to [Google Colab](https://colab.research.google.com/?utm_source=scs-index) or click on the _open in colab_ badge at the top.


### Possibility III: Within a Conda Environment 
To use GINA in a Conda environment:
Fist, install [Miniconda](https://docs.conda.io/en/latest/miniconda.html).
Then,

```console
conda create -n ginaenv python=3.6
conda install -n ginaenv pip
conda activate ginaenv
conda install nb_conda
pip install -r requirements.txt
jupyter lab
```
and open the `GINA.ipynb` file. 

### Possibility IV: Use Docker
You can use the GINA docker image.
```console
docker pull gerritgr/gina:2022-07-17--13-11
```
Run with:
```console
docker run -p 8888:8888 gerritgr/GINA
```
and open the `GINA.ipynb` file in Jupyter lab.
