# A multimodal digital phenotyping dataset for depression and anxiety assessment under free-living conditions

[![Version](https://img.shields.io/badge/version-1.0.1-2ea44f?style=for-the-badge)](https://github.com/neurai-vn/Neurai-VN-SciData)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC--BY%204.0-purple?style=for-the-badge)](https://creativecommons.org/licenses/by/4.0/)
[![Zenodo](https://img.shields.io/badge/Zenodo-10.5281%2Fzenodo.18976769-1682D4?style=for-the-badge&logo=zenodo&logoColor=white)](https://doi.org/10.5281/zenodo.18976769)

<!-- --- -->

## Table of Contents
- [Abstract](#abstract)
- [Data Installation](#data-installation)
- [Usage Notes](#usage-notes)
- [Ethical Considerations](#ethical-considerations)
- [Citation](#citation)

---

## Abstract

Despite affecting hundreds of millions of people globally, depression and anxiety remain understudied through digital phenotyping in resource-constrained settings, where limited clinical capacity highlights the need for scalable monitoring. In this work, we present Neurai-VN, a multimodal dataset from a Vietnamese population integrating passive sensing and active assessments across multiple temporal scales. Data were collected from 100 Vietnamese adults recruited from the general population over two weeks. Participants were grouped into four mutually exclusive diagnostic groups based on clinical assessments: depressive disorders, anxiety disorders, healthy controls, and other psychiatric conditions. The dataset contains (1) wearable signals and smartphone-derived data captured under free-living conditions; (2) clinical assessment data, including DSM-5-based psychiatric diagnoses and symptom severity ratings; and (3) longitudinal self-reports, including PHQ-9, GAD-7, daily symptom reports, and mood logs. Overall, the released dataset contains 1,730 participant-day records from 13 passive sensing modalities and 3,642 self-report records. The \textsc{Neurai-VN} dataset provides a resource for reproducible computational analyses and machine learning research on multimodal digital phenotyping for mental health-related outcomes.

<p align="center">
  <img src="asset/datacollection_7x3.41.png" alt="Data collection pipeline description" width="900">
</p>

<p align="center"><em>
Figure 1. Workflow for constructing the \textsc{Neurai-VN} dataset. First, a mobile application was developed for multimodal data acquisition. Next, participants were recruited, clinically screened for eligibility, and enrolled. Subsequently, data from multiple modalities were collected under real-world conditions. Finally, the collected data underwent retrieval, quality control, and serialization to generate the released dataset.
</em></p>

---

## Data Installation

The NEURAI-VN dataset is hosted on [Zenodo](https://zenodo.org/), a general-purpose open-access repository, and is publicly available at [https://zenodo.org/records/18976769](https://zenodo.org/records/18976769). Each CSV includes the common columns ```timestamp``` and ```public_id```, followed by modality-specific channels. All timestamps are reported in local time.

The dataset is distributed as CSV export, and organized into two main directories:

- **Metadata**: Contains a demographic information file (```study_info.csv```) and a clinical annotation file (```annotation.csv```).
- **Participants**: Contains a separate de-identified folder for each participant (e.g., ```P0001```). Each folder stores 17 CSV files organized into three sub-folders:
  -```wearable/```: Contains 8 wearable signals
  -```wearable/```: Contains 5 smartphone sensors data.
  -```self_report/```: Contains 4 active assessments data.



For automatic data installation, please follow the instructions below to download and extract the dataset from Zenodo. In addition, please ensure you have the necessary permissions and tools to access the dataset.

```bash
chmod +x script/data_installer.sh
./script/data_installer.sh
```

---

## Data Sample
The figure below shows an example of passive sensing data collected from a real participant. The upper panels present wearable-derived signals, while the lower panels show representative smartphone sensing data.

<p align="center">
  <img src="asset/sample(2).png" alt="Representative passive sensing data from participant P0065" width="900">
</p>

<p align="center"><em>
Figure 2. Representative passive sensing data from participant P0065 collected between November 1 and November 16. The top row shows wearable-derived measurements, including heart rate, sleep, and step count. The bottom row shows representative smartphone sensing data, including gyroscope, accelerometer, and Wi-Fi connectivity.
</em></p>


---
## Usage Notes
This dataset is publicly available via Zenodo under a Creative Commons license. It is provided for scientific and educational use only. Users agree not to attempt re-identification of any individuals, institutions, or hospitals. Any use of the dataset must include citation of the associated publication. Users of these data are requested to cite the Zenodo record (DOI) in any resulting publications, presentations, software, or derivative works.
A peer-reviewed publication associated with this dataset will be linked upon publication.

For questions concerning the dataset, please contact: [24cuong.pq@vinuni.edu.vn](mailto:24cuong.pq@vinuni.edu.vn)

---
## Ethical Considerations
This study was approved by the Institutional Review Board (IRB) of Neurology Department, Nguyen Tri Phuong Hospital, Ho Chi Minh, Vietnam (Approval No. 1387/NTP-HDDD). 
---

## Citation

If you find this work useful, please cite our dataset:

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
  title        = {Neurai-VN, A Multimodal Digital Phenotyping
                   Dataset for Depression and Anxiety Assessment in
                   Free-Living Conditions
                  },
  month        = may,
  year         = 2026,
  publisher    = {Zenodo},
  version      = {1.0.0},
  doi          = {10.5281/zenodo.18976769},
  url          = {https://doi.org/10.5281/zenodo.18976769},
}
```
