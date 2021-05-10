nDev = 10;
L = 1000;
P_t = 1;
R = 50;
LocationDev = (rand(2,nDev)-0.5)*L;
n_cluster = poissrnd(10,nDev,1);
loc = double.empty(0,2);
% LocationDev(1,2)
for i = 1:nDev
    r = rand(1,n_cluster(i))*R;
    theta = rand(1,n_cluster(i))*2*pi;
    for j = 1:n_cluster(i)
        loc = [loc ;[LocationDev(1,i)+r(j)*cos(theta(j)),LocationDev(2,i)+r(j)*sin(theta(j))]];
%         LocationDev(1,i)+r(j)*cos(theta(j)),LocationDev(2,i)+r(j)*sin(theta(j))
    end
end
% loc
% loc(:,1)    
scatter(loc(:,1),loc(:,2));
radii = R*ones(nDev,1);
viscircles(LocationDev.',radii);
% pbaspect([1 1 1]);
axis equal;
title('D2D Network Using MCP');
xlabel('x');
ylabel('y');

