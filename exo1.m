%bellache nassim

mat1 = zeros(100);
mat1(25:75,25:75)=1;
subplot(2,2,1);
imshow(mat1)

mat2 = zeros(100,100);
mat3 = ones(50,50);
mat2(25:74,25:74) = mat3 ;
subplot(2,2,2);
imshow(mat2)

subplot(2,2,3)
mat4 = zeros(100);
mat5 = ones(40);
mat4(20:59,20:59) = mat5 ;
imshow(mat4)

subplot(2,2,4)
mat6 = zeros(100);
mat7 = ones(20);
mat6(20:39,20:39) = mat7 ;
imshow(mat6)