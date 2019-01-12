%re?cupe?rer l'inverse d'une image
function xinv = getInverse(x)
    %re?cupe?rer l'histogramme
    % imame normalise
    
    xnorm = zeros(size(x,1),size(x,2)) ;
    Iinv = zeros(size(x,1),size(x,2)) ;
    NG2 = zeros(1,256);
    for i=1:size(x,1)
        for j=1:size(x,2) 
            NG2(x(i,j)+1) = NG2(x(i,j)+1) + 1;
        end
    end
    % recuperer le max
    Imax = x(1,1);
    for i=1:size(x,1)
        for j=1:size(x,2) 
            if Imax<x(i,j)
                Imax = x(i,j);
            end
        end
    end
    % re?cupe?rer l'image normalise?
     for i=1:size(x,1)
        for j=1:size(x,2) 
            xnorm(i,j) = x(i,j)/Imax;
        end
    end
    %-------------------------------
    for i=1:size(x,1)
        for j=1:size(x,2) 
            xinv(i,j) = 1.0 - xnorm(i,j); 
        end
    end
end
