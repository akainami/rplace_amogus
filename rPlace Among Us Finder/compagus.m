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

