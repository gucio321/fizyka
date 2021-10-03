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

## Spell checking

the project is using PySpelling (aspell / huspell) so ensure that
you have polish dictionary installed
