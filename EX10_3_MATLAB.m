clear
[x,r] = fminsearch('findres', 0.5);
% แสดงภาพผลลัพธ์
I = imread('mri_shear.png', 'png');
T = maketform('affine', [1 0 0; x 1 0; 0 0 1]);
transformedI = imtransform(I, T, 'size', size(I));
figure(1);
image(transformedI)
a = imread('mri.png', 'png');
figure(2), image(a);

