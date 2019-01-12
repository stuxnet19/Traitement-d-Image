nbLign = 255 ;
nbcol = 255 ;

mat1 = zeros(nbcol);

for i=1:nbLign 
    for j=1:nbcol
        mat1(i,j)=i;
    end
end
subplot(2,2,1);
imshow(mat1,[1,255])