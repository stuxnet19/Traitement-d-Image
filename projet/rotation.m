imgOrg = imread('images.jpeg');
% de?finir le max entre la largeur et la hauteure
sorg = size(imgOrg);
max=sorg(2) ;
if (sorg(1)>sorg(2))
    max=s(1) ;
end

% ve?rifier si max est paire ou impaire
if(mod(max,2)==0)
    max = max+1 ;
end

% mettre l'image sous forme d'un carre avec une largeur/hauteur impaire
img = zeros(max);
simg = size(img);
fix(sorg(1)/2)
fix(simg(1)/2)+fix(sorg(1)/2)
img((fix(simg(1)/2)-fix(sorg(1)/2))+1:(fix(simg(1)/2)+fix(sorg(1)/2)+1),(fix(simg(2)/2)-fix(sorg(2)/2))+1:(fix(simg(2)/2)+fix(sorg(2)/2)+1))=imgOrg(1:sorg(1),1:sorg(2)) ;

%img = imread('images.jpeg');
mat = zeros(length(img)*3);
mat(length(img):(length(img)*2)-1,length(img):(length(img)*2)-1) = double(img(1:length(img),1:length(img))) ;

[Rows, Cols] = size(mat); 
Diagonal = sqrt(Rows^2 + Cols^2); 
RowPad = ceil(Diagonal - Rows) + 2;
ColPad = ceil(Diagonal - Cols) + 2;
imagepad = zeros(Rows+RowPad, Cols+ColPad);
imagepad(ceil(RowPad/2):(ceil(RowPad/2)+Rows-1),ceil(ColPad/2):(ceil(ColPad/2)+Cols-1)) = mat;

degree=20;

%midpoints
midx=ceil((size(imagepad,1)+1)/2);
midy=ceil((size(imagepad,2)+1)/2);

imagerot=zeros(size(imagepad));

%rotation
for i=1:size(imagepad,1)
    for j=1:size(imagepad,2)

         x=(i-midx)*cos(degree)-(j-midy)*sin(degree);
         y=(i-midx)*sin(degree)+(j-midy)*cos(degree);
         x=round(x)+midx;
         y=round(y)+midy;

         if (x>=1 && y>=1)
              imagerot(x,y)=imagepad(i,j); % k degrees rotated image         
         end

    end
end

 figure,imagesc(imagerot);
 colormap(gray(256));