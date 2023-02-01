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
function [PLATE] = amogus(color,dir)
%{
AMOGUS FINDER TEMPLATE
c1 = [R,G,B]
c2 = [R,G,B]
c3 = [R,G,B]
%}
cam = color; % Amogus
bg = NaN(1,3);

PLATE = ones(5,4,3);
if strcmp(dir,"r") % Right Amogus
    for i = 1 : 3
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg3,wg2,wg2,wg2;
            wg2,wg2,wg3,wg3;
            wg2,wg2,wg2,wg2;
            wg3,wg2,wg2,wg2;
            wg3,wg2,wg3,wg2];
    end
else
    for i = 1 : 3 % Left Amogus
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg2,wg2,wg2,wg3;
            wg3,wg3,wg2,wg2;
            wg2,wg2,wg2,wg2;
            wg2,wg2,wg2,wg3;
            wg2,wg3,wg2,wg3];
    end
end

end
