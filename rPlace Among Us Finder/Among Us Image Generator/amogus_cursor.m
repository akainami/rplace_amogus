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
function [OUT] = amogus_cursor()
    OUT = NaN(16,16);
    % Black
    OUT(1,3:9)              = 1;
    OUT(2,[2:3 9:10])       = 1;
    OUT(3,[2 10])           = 1;
    OUT(4,[1:6 10:13])      = 1;
    OUT(5,[1 3 5 6 10 13])  = 1;
    OUT(6,[1 2 4 6 10 13])  = 1;
    OUT(7,[1:6 10 13])      = 1;
    OUT(8,[2 10 13])        = 1;
    OUT(9,[2 10 13])        = 1;
    OUT(10,[2 5:7 10:13])   = 1;
    OUT(11,[2 5 7 10])      = 1;
    OUT(12,[2 5 7 10])      = 1;
    OUT(13,[2:5 7:10])      = 1;
    % White
    OUT(2,[4:8]) = 2;
    OUT(3,[3:9]) = 2;
    OUT(4,[7:9]) = 2;
    OUT(5,[2 4 7:9 11 12]) = 2;
    OUT(6,[3 5 7:9 11 12]) = 2;
    OUT(7,[7:9 11 12]) = 2;
    OUT(8,[3:9 11:12]) = 2;
    OUT(9,[3:9 11:12]) = 2;
    OUT(10,[3 4 8 9]) = 2;
    OUT(11,[3 4 8 9]) = 2;
    OUT(12,[3 4 8 9]) = 2;
end
