%{
MIT License

Copyright (c) 2022 akainami

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
%}
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
