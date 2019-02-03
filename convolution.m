function new_img = convolution(img,template)
%Define a function of convolution
% Parameters: img is array of points
%             template is array of weighting coefficients
img = mat2gray(img); %Normalize the picture matrix
[m,n,d] = size(img); %Dimensions of image
new_img(1:m,1:n,1:d) = 0; %Set an inital output as black
[N_row,N_col] = size(template); %Dimensions of template
center_row = floor(N_row/2); %Half of template rows
center_col = floor(N_col/2); %Half of template columns

img = padarray(img,[center_row,center_col]);
%Increase the size of image, add center_row rows above and below the image
%   and center_col to the left and right of the image, and the values are set to 0

% Convolve the template
for z = 1:d  %Separate the colour image by R,G,B colour bands
    for x = 1:m 
        for y = 1:n % Address all rows and columns of increased-size image except border
            value = 0;   % Initial the value
            for i = 1:N_row
                for j = 1:N_col %Address all the points of template
                    value = dot(img(x + i - 1,y + j - 1,z),template(N_row - i + ...
                    1,N_col - j + 1)) + value; %Convolution
                end
            end
            new_img(x,y,z) = value;
        end
    end
end
end