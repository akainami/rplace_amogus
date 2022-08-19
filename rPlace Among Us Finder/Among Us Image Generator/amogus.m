function [PLATE] = amogus(varargin)
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
if rand(1) > .5 % Right Amogus
    for i = 1 : 3
        wg1 = cg(i);
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg3,wg3,wg3,wg3,wg3;
            wg3,wg2,wg2,wg2,wg3;
            wg2,wg2,wg1,wg1,wg3;
       0.95*wg2,0.97*wg2,0.97*wg2,wg2,wg3;
            wg3,0.94*wg2,0.94*wg2,0.94*wg2,wg3;
            wg3,0.92*wg2,wg3,0.92*wg2,wg3];
    end
else
    for i = 1 : 3 % Left Amogus
        wg1 = cg(i);
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg3,wg3,wg3,wg3,wg3;
            wg2,wg2,wg2,wg3,wg3;
            wg1,wg1,wg2,wg2,wg3;
            wg2,wg2*0.97,wg2*0.97,wg2*0.95,wg3;
            wg2*0.94,wg2*0.94,wg2*0.94,wg3,wg3;
            wg2*0.92,wg3,wg2*0.92,wg3,wg3];
    end
end

end