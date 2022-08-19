clc; clear; close; tic;
%% Import r/place

rPlace = imread("rPlace.bmp");
rPlace = double(rPlace)/255;
%% Check Canvas
size_canv = size(rPlace);
boolPlace = zeros(size_canv(1),size_canv(2),size_canv(3));
tryplate = zeros(5,4,3);
size_try = size(tryplate);
amognum = 0; % Amogi counter
for i = 1 : size_canv(1)-5 % Y loc
    for j = 1 : size_canv(2)-5 % X loc
        % Load the plate
        tryplate = rPlace(i:i+size_try(1)-1,j:j+size_try(2)-1,:);
        % Check lefts
        lcolor = tryplate(1,1,:);
        minimogus_l = minimogus(lcolor,"l");
        amogus_l = amogus(lcolor,"l");
        % Check rights
        rcolor = tryplate(2,1,:);
        minimogus_r = minimogus(rcolor,"r");
        amogus_r = amogus(rcolor,"r");
        % Compare 
        if (compagus(minimogus_l,tryplate))
            boolPlace(i:i+4,j:j+3,:) = minimogus_l;
            amognum = amognum+1;
            continue
        elseif (compagus(minimogus_r,tryplate))
            boolPlace(i:i+4,j:j+3,:) = minimogus_r;
            amognum = amognum+1;
            continue
        elseif (compagus(amogus_r,tryplate))
            boolPlace(i:i+4,j:j+3,:) = amogus_r;
            amognum = amognum+1;
            continue
        elseif (compagus(amogus_l,tryplate))
            boolPlace(i:i+4,j:j+3,:) = amogus_l;
            amognum = amognum+1;
            continue
        end    
    end
end

%% Print Image
image(boolPlace);
xticks([]);
yticks([]);
axis image
toc;