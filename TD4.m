close all; clear all ;
%exo 1
%-------carre----------

% mat1 = zeros(100);
% mat1(25:75,25:75)=255;
% subplot(2,2,1);
% imshow(mat1)
% 
% NG2 = histogramme(mat1);
% subplot(2,2,2);
% plot([0:255],NG2);
% %-------- get inverse --------
% mat2 = zeros(size(mat1));
% mat2 = getInverse(mat1);
% NG3 = histogramme(mat2);
% subplot(2,2,3);
% imshow(mat2)
% subplot(2,2,4)
% plot([0:255],NG3)

%exo2 
%constante a 
% subplot(2,2,1);
% a = 0.25 ;
% img  = imread('dark.pgm');
% imshow(img)
% img2 = zeros(size(img,1),size(img,2)); 
% for i=1:size(img,1)
%     for j=1:size(img,2)
%         img2(i,j)=(255*log(double(1+a*img(i,j))))/log(double(1+a*255));
%     end
% end
% subplot(2,2,2);
% histoDark1 = histogramme(img);
% plot([0:255],histoDark1)
% subplot(2,2,3);
% img2 = uint8(img2);
% imshow(img2)
% subplot(2,2,4)
% histoDark2 = histogramme(img2);
% plot([0:255],histoDark2)

%exo3 

img = imread('moon4x.pgm');
img2 = double(img);
subplot(2,2,1);
imshow(img)
NG = histogramme(img);
subplot(2,2,2);
plot([0:255],NG)
for i=1:size(img,1)
    for j=1:size(img,2)
        if img(i,j)<75
            img2 = img(i,j)/3;
        elseif img(i,j)<= 150 
            img2 = 3*(img(i,j)-75)+25;
        else
            img2 = (5/150)*(img(i,j)-150)+250;
        end
    end
end
img2 = uint8(img2);
subplot(2,2,3);
imshow(img2)
subplot(2,2,4);
NG2 = histogramme(img2);
plot([0:255],NG2)