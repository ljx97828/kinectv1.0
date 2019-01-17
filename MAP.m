world=xlsread('D:\kinetic\RGB\RGB\space.xlsx');
color=xlsread('D:\kinetic\RGB\RGB\color.xlsx');
x=(world(:,1));
y=(world(:,2));
z=(world(:,3));
r=color(:,1)/255;
g=color(:,2)/255;
b=color(:,3)/255;
hold on
grid on
scatter3(x,y,z,1,[r,g,b]);
len=size(x);
% for i=1:len(1)
%    
%     
% end



