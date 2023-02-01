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
function OUT=colorpalette

OUT = containers.Map();
%OUT("Color") = [R G B];
OUT("Cyan Glasses") = [81 233 244];

OUT("Red") = [195 44 49];
OUT("Brown") = [112 75 46];
OUT("Black") = [63 70 80];
OUT("Purple") = [94 69 150];
OUT("Green") = [24 128 64];
OUT("Yellow") = [245 243 81];
OUT("Cyan") = [119 200 190];
OUT("White") = [217 225 244];
OUT("Orange") = [238 124 28];
OUT("Pink") = [211 95 158];
OUT("Lime") = [120 190 55];
OUT("Blue") = [36 77 157];

% OUT("Transparent") = [NaN NaN NaN];
% OUT("Dark") = [0 0 0];
% OUT("Bright") = [255 255 255];
end
