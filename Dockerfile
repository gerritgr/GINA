FROM jupyter/datascience-notebook
MAINTAINER "GGX"

RUN pip install netrd==0.2.2
RUN conda install networkx=2.5 --force-reinstall -y
RUN conda install pandas=1.3 --force-reinstall -y
RUN conda install pytorch torchvision torchaudio -c pytorch -y
RUN git clone https://github.com/gerritgr/GINA
RUN cp GINA/GINA.ipynb GINA.ipynb
RUN rm -rf GINA/


# compile with (within the folder of Dockerfile):  docker build -t gerritgr/GINA . (replace gerritgr with your username)
# start with: docker run -p 10000:8888 gerritgr/GINA   # at my PC the default port doesn't work