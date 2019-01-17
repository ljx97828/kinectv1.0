clear all
clc

img =imread('D:\kinetic\RGB\RGB\depth.png');
col=imread('D:\kinetic\RGB\RGB\color.png');
[y,x] = size(img); 
[X,Y] = meshgrid(1:x,1:y); 
pp = double(img); 
num=0;
hold on
grid on
for i=1:1:480
    for j=1:1:640 
        if(pp(i,j)~=0)
            num=num+1;
            worldxyz(num,1)=(i-321.7462287)/512.17*pp(i,j);
            worldxyz(num,2)=(j-253.5674653)/513.78*pp(i,j);
            worldxyz(num,3)=pp(i,j);
            color(num,1)=col(i,j,1);
            color(num,2)=col(i,j,2);
            color(num,3)=col(i,j,3);
%             plot3(worldxyz(num,1),worldxyz(num,2),worldxyz(num,3));
        end
    end
end

xlswrite('D:\kinetic\RGB\RGB\space.xlsx',worldxyz);
xlswrite('D:\kinetic\RGB\RGB\color.xlsx',color);

% mesh(X, Y, pp); 
% colormap gray;