#!/bin/bash

# Qiskit 1.0+ Environment Setup Script
# Creates a fresh conda environment with compatible Qiskit packages

ENV_NAME="quantum_1.0"
PYTHON_VERSION="3.10"

echo "### Removing existing environment if present ###"
conda deactivate
conda env remove -n $ENV_NAME --yes

echo "### Creating new conda environment ###"
conda create -n $ENV_NAME python=$PYTHON_VERSION -y
conda activate $ENV_NAME

echo "### Installing core Qiskit packages ###"
pip install --upgrade pip
pip install "qiskit>=1.0" \
            "qiskit-machine-learning>=0.7.0" \
            "qiskit-aer>=0.13.0" \
            "qiskit-ibm-runtime>=0.22.0" \
            "qiskit-experiments>=0.5.0" \
            "qiskit-nature>=0.7.0"

echo "### Installing additional quantum packages ###"
pip install matplotlib numpy scipy pandas scikit-learn seaborn

echo "### Verifying installation ###"
python -c "
from qiskit import __qiskit_version__;
print('\n### Qiskit Version Info ###');
print(f\"Qiskit: {__qiskit_version__['qiskit']}\");
print(f\"Terra: {__qiskit_version__['qiskit-terra']}\");
print(f\"Aer: {__qiskit_version__['qiskit-aer']}\");
print(f\"Machine Learning: {__qiskit_version__['qiskit-machine-learning']}\");
"

echo "### Environment setup complete ###"
echo "To activate: conda activate $ENV_NAME"