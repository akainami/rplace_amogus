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
function [outp] = compagus(arr1,arr2)
% arrN <5,4,3>
size1 = size(arr1); % Assume arr1 is amogus
size2 = size(arr2); % Assume arr1 is tryplate
coreColor = arr1(3,2,:);
% define amogNum
amogNum = 0;
for i = 1 : size1(1)
    for j = 1 : size1(2)
        for k = 1 : 3
            amogNum = amogNum + (arr1(i,j,k) > -1);
        end
    end
end
compArr = zeros(max(size1(1),size2(1)),max(size1(2),size2(2)));
debugReturn = 0;
for i = 1 : min(size1(1),size2(1))
    for j = 1 : min(size1(2),size2(2))
        if isnan(arr1(i,j,1)) && (arr2(i,j,1) == coreColor(1))...
                && (arr2(i,j,2) == coreColor(2)) && (arr2(i,j,3) == coreColor(3))
            debugReturn = debugReturn + 1; % if greater than 2, terminate
        end
        if (arr1(i,j,:) == arr2(i,j,:))
            compArr(i,j) = 3;
        end
    end
end
if debugReturn < 1 % Cezalandırma Faktörü
outp = sum(compArr,'all') >= amogNum;
else
outp = false;
end
end

