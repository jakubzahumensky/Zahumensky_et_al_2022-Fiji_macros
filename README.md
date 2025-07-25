Fiji (ImageJ) macros used for automated image analysis in:

**Zahumensky et al., 2022 - Microdomain Protein Nce102 Is a Local Sensor of Plasma Membrane Sphingolipid Balance**\
*Microbiol Spectr* 10(4):e0196122\
doi: https://doi.org/10.1128/spectrum.01961-22

---

The macro uses cell segmentation masks created with [Cellpose](https://www.cellpose.org/) ([Stringer et al., 2021](https://doi.org/10.1038/s41592-020-01018-x)).\
The filename format of the masks is: `original_filename+"_cp_masks.png"`. Do **not** change this.
The macro uses the "LabelMap to ROI Manager (2D)" plugin that is a part of the [CSF_ImgTools plugin package](https://sites.imagej.net/SCF-MPI-CBG/)

For the macro to work properly, the data must be organized in the following manner:
- Parent folder: experiment code (at least 8 characters)
- subfolders level 1: biological replicates starting with a 6-digit date, ideally in the format YYMMDD
- subfolders level 2: `data`, `Masks` (case sensitive)
During the run of the macro, a folder named `ROIs` is automatically created next to `data` and `Masks` folder.
The format of the raw microscopy image names is: `strain,medium,condition,field_of_view` - the macro uses commas to separate data in the results table.
Sample data are provided.


---
# Updates
The users are strongly recommended to use updated versions of these macros available [here](https://github.com/jakubzahumensky/microscopy_analysis).
Their use is described in detail in:

**Zahumensky & Malinsky, 2024 – Live cell fluorescence microscopy-an end-to-end workflow for high-throughput image and data analysis**\
*Biol Methods Protoc* 9(1):bpae075\
doi: https://doi.org/10.1093/biomethods/bpae075
