teta = 45 ;

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
mat2=zeros(length(mat));

% calculer les coordone? du nouveau repe?re dans le repe?re initiale 
x0 = fix(simg(1)/2);
y0 = fix(simg(2)/2);

for i=1:length(img)
    for j=1:length(img)
        % de?finir x0 et x1 dans le nouveau repe?re
        x1 = j- x0 ;
        if ((i==120)&(j==120))
            y1 = i - y0 ;
            mat2(y1+y0,x1+x0)=mat(x1,y1);
        end
        if (((i<120)&(j<120))||((i>120)&(j>120))||((i>120)&(j==120))||((i<120)&(j==120)))
            y1 = -i+ y0 ;
            % de?finire les nouvelle coordone?es du point dans le nouveau
            % repe?re grace a une rotation d'angle teta
            y2 = fix(x1*sin(teta)+y1*cos(teta));
            x2 = fix(x1*cos(teta)-y1*sin(teta));
            % retrouver les coordone?es des point x2,y2 dans le repe?re
            % initiale
            mat2(y0-y2,x2+x0)=mat(i,j);
        end
        if (((i<120)&(j>120))||((i>120)&(j<120))||((i==120)&(j>120))||((i==120)&(j<120)))
            y1 = i - y0 ;
            % de?finire les nouvelle coordone?es du point dans le nouveau
            % repe?re grace a une rotation d'angle teta
            y2 = fix(x1*sin(teta)+y1*cos(teta));
            x2 = fix(x1*cos(teta)-y1*sin(teta));
            % retrouver les coordone?es des point x2,y2 dans le repe?re
            % initiale
            mat2(y2+y0,x2+x0)=mat(i,j);
        end
    end
end

imshow(uint8(mat2))