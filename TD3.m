%bellache Nassim
%test de la fonction plot 
% 
% x = [0:0.1:1]
% y = x ;
% 
% plot(x,y+1)
close all; clear all ;
% subplot(2,2,1);
% img = imread('lena.jpg');
% 
% NG = zeros(1,256);
% 
% for i=1:size(img,1)
%     for j=1:size(img,2) 
%         NG(img(i,j)+1) = NG(img(i,j)+1) + 1;
%     end
% end
% plot([0:255],NG)

img2_0 = imread('pout.tif');
subplot(3,2,1); imshow(img2_0);
%title('histogramme')
NG2 = zeros(1,256);
NG3 = zeros(1,256);
img2 = double(img2_0);

for i=1:size(img2,1)
    for j=1:size(img2,2) 
        NG2(img2_0(i,j)+1) = NG2(img2_0(i,j)+1) + 1;
    end
end

subplot(3,2,2);
plot([0:255],NG2)

%calcule du min
minimum = min(min(img2))
%calcule du max
maximum = max(max(img2))
%nb pixels
nb=size(img2,1)*size(img2,2)
%e?galisation de l'image

for i=1:size(img2,1)
    for j=1:size(img2,2) 
        img2(i,j) = 255*(img2(i,j)-minimum)/(maximum-minimum) ;
    end
end
img2 = uint8(img2);

for i=1:size(img2,1)
    for j=1:size(img2,2) 
        NG3(img2(i,j)+1) = NG3(img2(i,j)+1) + 1;
    end
end

subplot(3,2,3);
plot([0:255],NG3)

subplot(3,2,4)
imshow(img2);

subplot(3,2,5)

%etirement de l'image 

for i=1:size(img2,1)
    for j=1:size(img2,2)
        255*((img2(i,j)-minimum)/(maximum-minimum));
    end
end
imshow(img2)