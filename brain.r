library(oro.nifti)
library(papayar)
library(neurobase)
img = readNIfTI("Template-T1-U8-RALPFH-BR.nii", reorient = TRUE)
hist(c(img))
ortho2(img, img>1e2)

mask = img>1e3
papaya(list(img,mask))
