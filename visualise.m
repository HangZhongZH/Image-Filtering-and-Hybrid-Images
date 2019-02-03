function img_compare = visualise(image,size_firstimg,reduction_ratio,images_number)
%Define a function for making the result visualised
%Parameters: image is the image we want to visualise
%            size_firstimg is the size of the first picture shown later is 
%                       how many times the input image is
%            reduction_ratio is the size of the next displayed picture is 
%                       how many times the previous picture is
%            images_number is the number of pictures displayed

image = imresize(image,size_firstimg); %Set the size of the first picture
[p,q,t] = size(image); %Size of the first picture
img_compare = image;
for i = 1:images_number - 1 
    image2 = imresize(image,(reduction_ratio)^i); % Change size of the next picture
    [c,d,e] = size(image2); % Size of the next picture
    new_image = padarray(image2,[p-c],255,'pre');
    % Set all the pictures are in the same size as the first picture
    img_compare = [img_compare new_image]; 
    % Combine all the pictures into one imagfe to display
end
end