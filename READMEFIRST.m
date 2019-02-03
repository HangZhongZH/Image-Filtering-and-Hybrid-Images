% Instrcution: 
%       There are four parts in my algorithm of ¡®Imaging filtering 
%           and hybrid images¡¯, they are Gaussian, concolution,
%           visualise and main. 
%       'Gaussian.m' is used to generate a Gaussian averaging
%           operator.
%       'convolution.m' is used to do the convolution with template
%           and image.
%       'visualise.m' is used to imitate the different distance from
%           the images. 
%       'main.m' is the main program, it combines all the above
%           parts, and all parameters can be changed in 'main'. 


% Usage:
%       'Gaussian.m':
%           [template] = Gaussian(N_row,N_col,sigma)
%               Parameters:
%                   N_row is the number of rows of template, N_col is 
%                       the number of columns of template,they should 
%                       be odd and integer ,
%                   sigma is variance of Gaussian function.

%       'convolution.m':
%           [new image] = convolution(img,template)
%               Parameters: img is array of points, 
%                           template is array of weighting coefficients.

%       'visualise.m':
%           [visualised image] = visualise(image,size_firstimg,
%                                   reduction_ratio,images_number)
%               Parameters: 
%                   image is the image we want to visualise,
%                   size_firstimg is the size of the first picture shown 
%                       later is how many times the input image is,
%                   reduction_ratio is the size of the next displayed 
%                       picture is how many times the previous picture is,
%                   images_number is the number of pictures displayed.

%       'main.m':
%           All parameters can be changed in this, and you can run the 
%               program, and then will get the low and high requency 
%               portion of images and visualised hybrid images.


% Written by Hang Zhong.