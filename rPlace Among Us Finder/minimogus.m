function [PLATE] = minimogus(color,dir)
%{
MINIMOGUS FINDER
c1 = [R,G,B]
c2 = [R,G,B]
c3 = [R,G,B]
%}
cam = color; % Amogus
bg = NaN(1,3);

PLATE = ones(4,4,3);
if strcmp(dir,"r") % Right Minimogus
    for i = 1 : 3
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg3,wg2,wg2,wg2;
            wg2,wg2,wg3,wg3;
            wg2,wg2,wg2,wg2;
            wg3,wg2,wg3,wg2];
    end
else
    for i = 1 : 3 % Left Minimogus
        wg2 = cam(i);
        wg3 = bg(i);
        PLATE(:,:,i) = [wg2,wg2,wg2,wg3;
            wg3,wg3,wg2,wg2;
            wg2,wg2,wg2,wg2;
            wg2,wg3,wg2,wg3];
    end
end

end