height = 3 ;
width = 3 ;
mat1 = zeros(height,3);
tmp = 1 ;
for i = 1:height
    for j = 1:width
        if mod(tmp,2) == 0
            mat1(i,j) = 1;
        end
        tmp = tmp+1;
    end
end
tmp = 1;
subplot(2,2,1)
imshow(mat1)
height = height + 1 ;
width = width + 1 ;
mat2 = zeros(height,width);
for i = 1:height
    for j = 1:width
        if mod(tmp,2) == 0
            mat2(i,j) = 1;
        end
        tmp = tmp+1;
    end
    tmp = tmp+1 ;
end
subplot(2,2,2);
imshow(mat2)
subplot(2,2,3);
height = height+1;
width = width+1;
mat3 = zeros(5);
tmp = 1 ;
for i = 1:height
    for j = 1:width
        if mod(tmp,2) == 0
            mat3(i,j) = 1;
        end
        tmp = tmp+1;
    end
end
imshow(mat3)