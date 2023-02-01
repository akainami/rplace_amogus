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
function img = amogus_canvas(x,y,gray_scale,scale_factor)
tic;
if (nargin < 2)
    error("Please put proper inputs of (X,Y) dimensions.")
end

% Amogus
colors = colorpalette();
glasses_holder = colors("Cyan Glasses");
colors.remove("Cyan Glasses");
colors_names = colors.keys;
colors_rgb = colors.values;

% Canvas Settings
dupe_x = y; % Rows       
dupe_y = x; % Columns    
size_Amogus = [6 5 3];
scale_factor = 1 - scale_factor;

% Background
%gray_scale = 0.2;       % MIGHT BE INPUT
background = [255 255 255]*(1-gray_scale);

Amogus_canvas = NaN(size_Amogus(1)*dupe_x,...
    size_Amogus(2)*dupe_y,...
    size_Amogus(3));
for i = 1 : size_Amogus(1) : dupe_x*size_Amogus(1)
    for j = 1 : size_Amogus(2) : dupe_y*size_Amogus(2)
        body_holder = cell2mat(colors_rgb(randi(length(colors_names),1)));
        % Minimogus or Amogus chooser
        if rand(1) > scale_factor % MIGHT BE INPUT
            holder = amogus(body_holder,glasses_holder,background);
        else
            holder = minimogus(body_holder,glasses_holder,background);
        end
        Amogus_canvas(i:i+size_Amogus(1)-1,j:j+size_Amogus(2)-1,:) = holder;
    end
end
% Cursor
cursor_array = amogus_cursor();
img = figure('WindowState','maximized','Pointer','custom','PointerShapeCData',cursor_array); % change with amogus pointer
image(Amogus_canvas);
title("Amogi",'FontSize',36);
xticks([]);
yticks([]);
axis image

toc;
end
