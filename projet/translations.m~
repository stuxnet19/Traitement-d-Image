img = imread('images.jpeg');
vect = [ 100 100 ] ;

img2 = zeros(length(img));

for i=1:length(img)
    for j=1:length(img)
       img2(vect(1)+i,vect(2)+j) = img(i,j);
    end
end

imshow(uint8(img2))