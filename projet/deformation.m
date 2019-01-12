bi1 = 1 ;
bj1 = 2 ;
bi2 = 1 ;
bj2 = 1 ;
coef = [ bi1 bj1 ; bi2 bj2 ]

img = imread('images.jpeg');
img2 = zeros(length(img));
for i=1:length(img)
    for j=1:length(img)
        img2((bi1*i)+(bj1*j),(bi2*i)+(bj2*j)) = img(i,j);
    end
end
imshow(uint8(img2))