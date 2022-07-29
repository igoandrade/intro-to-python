FROM gitpod/workspace-full:latest

USER root
RUN apt-get update

# Install R
# RUN apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev pandoc texlive texlive-publishers texlive-lang-portuguese texlive-latex-extra texlive-fonts-recommended latexmk tcl

# Install python environment
RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
