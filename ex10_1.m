orthophoto = imread('westconcordorthophoto.png');
figure(1), imshow(orthophoto);
unregistered = imread('westconcordaerial.png');
figure(2), imshow(unregistered)
cpselect(unregistered(:,:,1), orthophoto);
%%%%%%%%%%%%
% mytform = cp2tform(movingPoints, fixedPoints, 'affine');
% registered = imtransform(unregistered, mytform);
% figure(3), imshow(registered);
