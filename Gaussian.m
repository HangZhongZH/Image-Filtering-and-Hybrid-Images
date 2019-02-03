function template = Gaussian(N_row,N_col,sigma)
%Define a function of template for Gaussian averaging template 
%Parameters: N_row is the number of rows of template, N_col is the number of columns
%                 of template,they should be odd and integer
%            sigma is variance of Gaussian function

center_row = floor(N_row/2) + 1; %Half of the number of rows
center_col = floor(N_col/2) + 1; %Half of the number of columns

value = 0; % Initial the value
for i = 1:N_row
    for j = 1:N_col
        template(i,j) = exp(-(((i-center_row)^2)...
            + ((j-center_col)^2))/(2*((sigma)^2))); %Set a Gaussian averaging template
        value = template(i,j) + value;
    end
end
template = template/value; %Normalise by the total value
end