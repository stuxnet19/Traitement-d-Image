width = 7 ;
height = 4 ; 

mat1 = zeros(4,7);
tmp = 36;
for i = 1:4
    for j = 1:7 
        tmp = tmp + 26;
        mat1(i,j)=tmp;
    end 
    tmp = 36 ;
end
subplot(2,2,2);
imshow(mat1,[ 0,225 ])