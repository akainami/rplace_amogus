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
rPlace_img = imread("img_rPlace.png");
size_img = [6000 6000 3];
rPlace_img = rPlace_img(1:size_img(1),1:size_img(2),1:size_img(3));
rPlace = zeros(size_img(1)/3,size_img(2)/3,size_img(3));
iA = 1;
for iB = 1 : 3 : size_img(1)
    jA = 1;
    for jB = 1 : 3 : size_img(2)
        rPlace(jA,iA,:) = rPlace_img(jB,iB,:);
        jA = jA + 1;
    end
    iA = iA + 1;
end
rPlace = rPlace/255;

imwrite(rPlace,'rPlace.bmp');
