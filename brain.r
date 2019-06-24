library(oro.nifti)
img = readNIfTI("Template-T1-U8-RALPFH-BR.nii", reorient = TRUE)
dim(img)
img


img1 = readNIfTI("avg152T1_LR_nifti.nii", reorient = TRUE)
dim(img1)
img1
image(img1[,,30])
image(img1[,30,], col=rainbow(12))
image(img1[50,,], col=rainbow(12))
orthographic(img1)


image(img[,,230])
image(img[,230,], col=rainbow(12))
image(img[50,,], col=rainbow(12))
orthographic(img)
orthographic(img,xyz=c(100,110,35))

mean(img)
sd(img)
min(img)
max(img)
density(img)

img_follow = readNIfTI("avg152T1_LR_nifti.nii", reorient = TRUE)

library(neurobase)

double_ortho(img1, img_follow)
ortho2(robust_window(img), useRaster = TRUE)
ortho2(robust_window(img_follow), useRaster = TRUE)
ortho2(robust_window(img1), useRaster = TRUE)

library(colorspace)
t1_fname ="avg152T1_LR_nifti.nii"
t1 = neurobase::readnii(t1_fname)
rt1 = robust_window(t1, probs = c(0,0.975));

ortho2(rt1)


library(papayar)

img = readNIfTI("Template-T1-U8-RALPFH-BR.nii", reorient = TRUE)
hist(c(img))
ortho2(img, img>1e2)

mask = img>1e3
papaya(list(img,mask))
