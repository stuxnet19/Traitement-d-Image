nbLign = 50 ;
nbcol = 50 ;

mat1 = zeros(nbcol);

for i=1:nbLign 
    for j=1:nbcol
        if mod(i+j,2)==0
            mat1(i,j)=1;
        end 
    end
end
subplot(2,2,1);
imshow(mat1)