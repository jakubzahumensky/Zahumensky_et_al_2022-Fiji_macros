# Nce102_SL_paper
Fiji macro used for quantitative analysis of microscopy images

The macro uses cell segmentation masks created with Cellpose software (Stringer et al., 2021). The filename format of the masks is: "MASK_"+original_filename.

For the macro to work properly, the data must be organized in the following manner:
  Parent folder: experiment code (at least 8 characters)
  subfolders level 1: biological replicates starting with a 6-digit date, ideally in the format YYMMDD
  subfolders level 2: "data", "Masks" (case sensitive)
During the run of the macro, a folder named "ROIs" is automatically created next to "data" and "Masks" folder
The format of the raw microscopy images is: strain,condition,field_of_view - the macro uses commas to separate data in the results table.

The macro uses the "LabelMap to ROI Manager (2D)" plugin that is a part of the CSF_ImgTools plugin package https://sites.imagej.net/SCF-MPI-CBG/
