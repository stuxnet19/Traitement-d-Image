img = imread('images.jpeg');
[ rowsi,colsi,z ] = size(img);

angle = 30 ;

%parce que les fonctions cos et sin n'accepte que le radiant
rads = 2*pi*angle/360;

% calculer les dimentions telle que l'image apres rotation ne de?borde pas
% abs cest la valeur absolue pour qu'on ait pas de valeurs ne?gatife
% ceil pour arondir les valeurs

rowsf = ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));
colsf = ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));

% de?finire une matrice avec les nouvelle dimentions calcule?

c = uint8(zeros([ rowsf colsf 3 ]));

% calculer le centre de l'image originale

xo = ceil(rowsi/2);
yo = ceil(colsi/2);

% calculer le centre de l'image finale

midx = ceil((size(c,1))/2);
midy = ceil((size(c,2))/2);

for i=1:size(c,1)
    for j=1:size(c,2)
        % calcul de l'image d'un point par raport a une9o rotation d'un angle donne?e 
        x = (i-midx)*cos(rads)+(j-midy)*sin(rads);
        y = -(i-midx)*sin(rads)+(j-midy)*cos(rads);
        
        x = round(x)+xo;
        y = round(y)+yo;
        
        
        if(x>=1 && y>1 && x<=size(img,1) && y<=size(img,2))
            c(i,j,:)=img(x,y,:);
        end
    end
end
imshow(c);