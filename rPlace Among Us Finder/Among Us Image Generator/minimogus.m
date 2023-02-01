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
function [PLATE] = minimogus(varargin)
%{
c1 = [R,G,B]
c2 = [R,G,B]
c3 = [R,G,B]
%}
if length(varargin) == 2
    cam = varargin{1}/256; % Amogus
    cg = varargin{2}/256; % Glasses
    bg = NaN(1,3);
elseif length(varargin) == 3
    cam = varargin{1}/256; % Amogus
    cg = varargin{2}/256; % Glasses
    bg = varargin{3}/256;  % Background
end
PLATE = ones(6,5,3);
if rand(1) > .5 % Right Minimogus
    for i = 1 : 3
        wg1 = cg(i);
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg3,wg3,wg3,wg3,wg3;
            wg3,wg3,wg3,wg3,wg3;
            wg3,wg2,wg2,wg2,wg3;
            wg2,wg2,wg1,wg1,wg3;
       0.94*wg2,0.97*wg2,wg2,wg2,wg3;
            wg3,0.94*wg2,wg3,0.94*wg2,wg3];
    end
else
    for i = 1 : 3 % Left Minimogus
        wg1 = cg(i);
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg3,wg3,wg3,wg3,wg3;
            wg3,wg3,wg3,wg3,wg3;
            wg2,wg2,wg2,wg3,wg3;
            wg1,wg1,wg2,wg2,wg3;
            wg2,wg2,wg2*0.97,wg2*0.94,wg3;
            0.94*wg2,wg3,0.94*wg2,wg3,wg3];
    end
end

end
