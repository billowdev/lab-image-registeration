function [res] = findres(x)
% แปลงเรขาคณิตของภาพโดยใช้ ค่าพารามิเตอร์ shear x
a = imread('mri_shear.png', 'png');
T = maketform('affine', [1 0 0; x 1 0; 0 0 1]);
transformedI = imtransform(a, T, 'size', size(a));
transformedI = im2double(transformedI);
transformedI = transformedI(:,:,1);
% อ่านภาพต้นฉบับแล้วคำนวณหาค่าผิดพลาด ส่งกลับ
b = imread('mri.png', 'png');
target = im2double(b);
target = target(:,:,1);
res = mean(mean(abs(transformedI - target)));
[res x]
end

