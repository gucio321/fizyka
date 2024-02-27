# NOTE 
<image align="left" src="https://user-images.githubusercontent.com/242652/138285004-b27d55b3-163b-4fe3-a8ff-6c34518044bd.png">
This project is currently deprecated and not developed anymore.
Continue here: https://github.com/gucio321/matematyka

Despite some of references below may not work anymore, you can still visit this website at
https://gucio321.github.io/fizyka

Thanx!
gucio321 <gucio321@users.noreply.github.com> - editor-in-chief of "Zadania z Fizyki - Dokumentacja" website
<br clear="all" />

<p align="center">
<a href="https://github.com/gucio321/fizyka/issues/new">
<img src="./docs/report-bug-button.png">
</a>
</p>

## Description

this is a source repository of (temporarly) https://gucio321.github.io/fizyka
and https://walicfizyke.ddns.net

## How to start

to start working with the project you need only to have python3 installed
then clone the repo and in the root dir:

```sh
python3 -m pip install virtualenv
python3 -m virtualenv venv
source venv/bin/activate
python3 -m pip install -r requirements.txt
```

now you can use `make html` to build page locally in `_build`

## Building PDF document

Sphinx supports converting whole code to latex and then to PDF document.
To do so execute `make latexpdf`.

### Linux

There are several DNF packages you need to install before running `make latexpdf`.
I'll try to create a full list of these packages later. For now:

```sh
dnf install -y latexmk texlive-cmap texlive-collection-fontsrecommended texlive-fncychap texlive-wrapfig texlive-capt-of texlive-framed texlive-upquote texlive-needspace texlive-tabulary texlive-parskip texlive-oberdiek texlive-cancel
```

_For ubuntu-based sysstems package names might be slightly different_

## Spell checking

the project is using PySpelling (aspell / huspell) so ensure that
you have polish dictionary installed

On Fedora:
```sh
sudo dnf install aspell-pl
```
