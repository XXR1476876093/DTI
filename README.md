# LC-target structural connectivity pipeline

This repository contains custom scripts used to calculate normalized locus coeruleus (LC)-target structural connectivity from diffusion MRI data using FSL/FDT probabilistic tractography.

The pipeline was developed for the manuscript:

**Disrupted locus coeruleus-prefrontal structural connectivity in major depressive disorder: a probabilistic tractography and postmortem study**

The normalized connectivity procedure was developed by the authors for the present study based on the detailed methodological description in Giraldo-Chica et al. (Biological Psychiatry, 2018), rather than adapted from any publicly available code. No code or materials from Giraldo-Chica et al. are included in this repository.

## Overview
The pipeline includes the following steps:
1. Diffusion MRI preprocessing and BEDPOSTX modelling
2. Anatomical registration and warp-field generation
3. Transformation of seed, target and exclusion masks to native diffusion space
4. LC-to-target probabilistic tractography
5. Transformation of seed-to-target tractography outputs to MNI standard space
6. Extraction of absolute LC-target structural connectivity
The example scripts provided here illustrate the analysis for the **left LC to left dlPFC** pathway. The same procedure was repeated for each LC-target pair.
The final normalization of LC-target connectivity was performed using standard arithmetic calculations on the extracted absolute connectivity values and does not depend on custom code; therefore, it is not included in this repository.

## Requirements
The pipeline requires the following software:
- Linux/Ubuntu environment
- FSL/FDT
- MATLAB
- NIfTI toolbox for MATLAB, including `load_untouch_nii`
- GPU-enabled FSL tools, if using `bedpostx_gpu` and `probtrackx2_gpu`

The pipeline was implemented using FSL/FDT tools including:
- `eddy_correct`
- `fdt_rotate_bvecs`
- `fslroi`
- `bet2`
- `bedpostx` / `bedpostx_gpu`
- `flirt`
- `fnirt`
- `convert_xfm`
- `invwarp`
- `convertwarp`
- `applywarp`
- `probtrackx2` / `probtrackx2_gpu`

Please install FSL separately according to the official FSL installation instructions and license terms. FSL is not redistributed in this repository.
Please also obtain the AAL3 atlas or other required region-of-interest masks from their official sources. Atlas files and participant MRI data are not included in this repository.

## Input data
Each participant directory should contain the following files before running the preprocessing script:
```text
DTI.nii.gz
DTI.bvec
DTI.bval
T1_cropped_brain.nii.gz
