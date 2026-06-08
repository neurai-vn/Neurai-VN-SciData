# Neurai-VN, A Real-world Multimodal Digital Phenotyping Dataset for Depression and Anxiety Disorders

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18976769.svg)](https://doi.org/10.5281/zenodo.18976769)

---

## Table of Contents
- [Overview](#overview)
- [Data Installation](#data-installation)
- [Usage Notes](#usage-notes)
- [Ethical Considerations](#ethical-considerations)
- [Citation](#citation)

---

## Abstract

Digital phenotyping (DP), integrating wearable and smartphone-based sensing, enables continuous and objective assessment of mental health in real-world settings. Despite its potential, DP datasets targeting mental health remain scarce in low- and middle-income countries (LMICs), particularly those combining clinician-validated diagnostic labels with structured self-report measures, limiting the generalisability, clinical validity, and equitable translation of DP models in these contexts. To address this gap, we present Neurai-VN, a real-world, high-resolution, multimodal dataset comprising passive sensing from wearable and smartphone devices,  collected from 100 Vietnamese adults (aged 18–50) from the general population over two weeks. Participants were clinically screened and categorized into four mutually exclusive groups: individuals with major depressive disorder, individuals with generalized or social anxiety disorder, healthy controls, and individuals with other psychiatric conditions. The dataset integrates continuous wearable physiological signals, smartphone-derived behavioral data, clinician-assigned DSM-5 diagnostic and severity labels, and responses to validated self-report measures, including the PHQ-9, GAD-7, and brief daily mood assessments. To capture these data in real-world conditions, we deployed an in-house mobile application on participants’ personal iOS and Android devices. From the raw recording, we retrieved and implemented a robust pipeline to process sensor data into a standardized format. To this end, we derived and released 1,259 day-level records per participant across 14 sensing modalities, of which 8 were recorded at 1-minute resolution, and the remaining 6 were aggregated as daily summary measures, alongside 2,342 validated self-report entries. By providing richly annotated, multimodal data from an LMIC cohort, Neurai-VN dataset enables reproducible development and validation of AI models for depression and anxiety and facilitates discovery of digital biomarkers from real-world signals, addressing the scarcity of clinically validated mental health datasets in underrepresented populations. 

---

## Data Installation

The NEURAI-VN dataset is distributed as CSV exports at two temporal resolutions: daily and per-minute, to facilitate immediate use across Python and other programming environments while maintaining storage and memory efficiency. The dataset is hosted on [Zenodo](https://zenodo.org/), a general-purpose open-access repository, and is publicly available at [https://zenodo.org/records/18976769](https://zenodo.org/records/18976769).

All data have undergone extensive cleaning and preprocessing prior to export to support downstream analyses. While the original PostgreSQL database exceeds 30GB in size, the processed CSV files provide a lightweight and user-friendly alternative that can be loaded with minimal effort, as described in the accompanying repository documentation. All timestamps are reported in local time.

The dataset is organized into two (02) main directories:

- **Participants**: This directory contains data from all 100 participants. Each participant is assigned a unique anonymized identifier (e.g., `P0001`) and stored in a separate de-identified folder. Each participant folder contains 18 CSV files spanning three data modalities: wearable sensor streams ($n=8$), smartphone behavioral logs ($n=6$), and ecological momentary assessments (EMAs; $n=4$).

- **Metadata**: This directory contains study-level metadata, including demographic information ($n=1$) and clinical annotations ($n=1$).

For automatic data installation, please follow the instructions below to download and extract the dataset from Zenodo. In addition, please ensure you have the necessary permissions and tools to access the dataset.

```bash
chmod +x script/data_installer.sh
./script/data_installer.sh
```

---
## Usage Notes
This dataset is currently under preparation for submission to Nature Scientific Data.
This dataset is publicly available via Zenodo under a Creative Commons license. It is provided for scientific and educational use only. Users agree not to attempt re-identification of any individuals, institutions, or hospitals. Any use of the dataset must include citation of the associated publication. Users of these data are requested to cite the Zenodo record (DOI) in any resulting publications, presentations, software, or derivative works.
A peer-reviewed publication associated with this dataset will be linked upon publication.

For questions concerning the dataset, please contact: [24cuong.pq@vinuni.edu.vn](mailto:24cuong.pq@vinuni.edu.vn)

---
## Ethical Considerations
This study was approved by the Institutional Review Board (IRB) of Neurology Department, Nguyen Tri Phuong Hospital (No. 1387/NTP-HDDD). 
The written consent was obtained from all participants prior to data collection after they received detailed information about the study objectives, experiment procedures, data types, potential risks and the measures implemented to mitigate them. Participants were informed of their right to decline or withdraw from the study at any time without consequence. 

---

## Citation

If you find this work useful, please cite our paper:

```bibtex
@dataset{cuong_q_pham_2026_18976769,
  author       = {Cuong Q. Pham and
                  Duong T. H. Vu and
                  Long K. H. Nguyen and
                  Hung K. Nguyen and
                  Thu M. N. Phan and
                  Dung T. T. Duong and
                  Duy T. H. Le and
                  Nicolas Vuillerme and
                  Huong T. T. Ha and
                  Hieu H. Pham},
  title        = {Neurai-VN, A Real-world Multimodal Digital
                   Phenotyping Dataset for Depression and Anxiety
                   Disorders
                  },
  month        = may,
  year         = 2026,
  publisher    = {Zenodo},
  version      = {1.0.0},
  doi          = {10.5281/zenodo.18976769},
  url          = {https://doi.org/10.5281/zenodo.18976769},
}
```