function NG2 = histogramme(x)
     NG2 = zeros(1,256);
    for i=1:size(x,1)
        for j=1:size(x,2) 
            NG2(x(i,j)+1) = NG2(x(i,j)+1) + 1;
        end
    end
end