FROM fedora:latest

RUN dnf install -y python3-pip

RUN dnf install -y make

RUN dnf install -y latexmk texlive-cmap texlive-collection-fontsrecommended texlive-fncychap texlive-wrapfig texlive-capt-of texlive-framed texlive-upquote texlive-needspace texlive-tabulary texlive-parskip texlive-oberdiek texlive-cancel

COPY . /app

WORKDIR /app

RUN python3 -m pip install -r requirements.txt

RUN make html

RUN make latexpdf
