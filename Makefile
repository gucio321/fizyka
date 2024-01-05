# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: modify-date Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


modify-date:
	$(eval CURRENT_GIT_COMMIT_ID := $(shell git rev-parse HEAD))
	$(eval CURRENT_GIT_COMMIT_NAME := $(shell  git log -1 --format=%s))
	$(eval CURRENT_GIT_COMMIT_NAME_ESCAPED := $(shell echo "$(CURRENT_GIT_COMMIT_NAME)" |sed 's/[&/\]/\\&/g' ))
	echo $(CURRENT_GIT_COMMIT_NAME)
	echo $(CURRENT_GIT_COMMIT_NAME_ESCAPED)
	$(eval CURRENT_GIT_COMMIT_DATE := $(shell git log -1 --format=%ad))
	echo "<a href="https:\/\/github.com\/gucio321\/fizyka\/commit\/$(CURRENT_GIT_COMMIT_ID)">$(CURRENT_GIT_COMMIT_DATE) ${CURRENT_GIT_COMMIT_NAME_ESCAPED} ($(CURRENT_GIT_COMMIT_ID))</a>" > _templates/modification.html
