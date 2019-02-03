clear
img1 = imread('einstein.bmp');
img2 = imread('marilyn.bmp');

template1 = Gaussian(5,7,4);
%First Gaussian averaging template with 5 rows and 7 columns, and its variance is 4
template2 = Gaussian(7,7,2);
%Second Gaussian averaging template with 7 rows and 7 columns, and its variance is 2

new_img1 = convolution(img1,template1); %Convolve the image1 with template1
new_img2 = convolution(img2,template2); %Convolve the image2 with template2
new_img2 = mat2gray(img2) - new_img2 + 0.25; %Visualised by adding 0.25 to every pixel in each colour channel
hybridimg = new_img1 + new_img2; %Add the two images

%Set every point in the picture matrix to be [0,255]
new_img1 = im2uint8(new_img1);
new_img2 = im2uint8(new_img2); 
hybridimg = im2uint8(hybridimg); 

% Set a first part to be twice the size of the hybridimg, a total of five parts,
%   and each part is 0.6 times the size of the previous part
img_compare = visualise(hybridimg,2,0.6,5); 

% Show the original images compared to the low-pass and high-pass images
figure('Name','Original images compared to the new images')
subplot(2,2,1), imshow(img1)
subplot(2,2,2), imshow(new_img1)
subplot(2,2,3), imshow(img2)
subplot(2,2,4), imshow(new_img2);

% Show the visualised hybrid images
figure('Name','Hybrid images')
imshow(img_compare)