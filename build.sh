#! /bin/bash
source ./venv/bin/activate
pip install -r build_requirements.txt
pip download -d wheelhouse -r build_requirements.txt
pip wheel -w wheelhouse -r glances_requirements.txt
pex -o glances.pex --no-pypi --find-links ./wheelhouse/  -r ./glances_requirements.txt -m glances

