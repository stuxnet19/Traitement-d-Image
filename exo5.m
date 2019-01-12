R = [1 0 0 1] ;
G = [0 1 0 0] ;
B = [0 0 1 0] ;
Gris = [0.5 0.5 0.5 0] ;

i = cat(3,R,G,B);


subplot(2,2,1);
imshow(i)
subplot(2,2,2);
%{
Red = zeros(3);
Green = zeros(3);
Blue = zeros(3);
for i=1:3 
    for j=1:3
        if (((mod(i,2)==0)||(mod(j,2)==0))&&(i~=j))
            Blue(i,j)=1;
        end
    end 
end
myImage = Red ;
myImage(:,:,2) = Green ;
myImage(:,:,3) = Blue ;
imshow(myImage);
%}
I1 = [0.5 0.5 0.5;0 0 1;1 0 0];
I2 = [0.5 0.5 0.5;0 1 0;1 0 0];
mat2 = [1 2 3;2 3 2;3 2 1 ];
imshow(mat2,I1)
subplot(2,2,3);
imshow(mat2,I2)



