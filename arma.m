function arma
n=80;
var = 0.4;
p1 = -0.5; % Value of phi1
p2 = 0.25; % Value of phi2
t1 = -0.4; % Value of theta 1
t2 = 0.6;  % Value of theta 2
for i=1:n
    x_axis(i)=i;
end
%%
% ARMA (1,1)
gamma11(1) = var*(1+(t1*t1)+(2*p1*t1))/(1-(p1*p1));
gamma11(2) = (var*(p1+t1)*(1+(p1*t1)))/(1-(p1*p1));
gamma11(3) = p1*gamma11(2);
rho11(1) = 1;
rho11(2) = gamma11(2)/gamma11(1);
rho11(3) = gamma11(3)/gamma11(1);
for j=4:n
    gamma11(j) = p1*gamma11(j-1);
    rho11(j) = p1*rho11(j-1);
end
figure(1);
plot(x_axis,rho11);
xlabel('k');
ylabel('Pk');
title('Pk vs k for ARMA(1,1)');
%%
% ARMA (1,2)
gamma12(1) = var*(1+(t1*t1)+(2*p1*t1)+(2*p1*p1*t2)+(2*p1*t1*t2))/(1-(p1*p1));
gamma12(2) = (p1*gamma12(1))+(t1*var)+(p1*t2*var)+(t1*t2*var);
gamma12(3) = (p1*gamma12(2))+(t2*var);
rho12(1) = 1;
rho12(2) = gamma12(2)/gamma12(1);
rho12(3) = gamma12(3)/gamma12(1);
for j=4:n
    gamma12(j) = p1*gamma12(j-1);
    rho12(j) = p1*rho12(j-1);
end
figure(2);
plot(x_axis,rho12);
xlabel('k');
ylabel('Pk');
title('Pk vs k for ARMA(1,2)');
%%
% ARMA (2,1)
gamma21(1) = var*(1+(t1*t1)+(2*p1*t1))/(1-(p1*p1)-(p2*p2));
gamma21(2) = ((p1*gamma21(1))+(t1*var))/(1-p2);

rho21(1) = 1;
rho21(2) = gamma21(2)/gamma21(1);
for j=3:n
    gamma21(j) = (p1*gamma21(j-1)) + (p2*gamma21(j-2));
    rho21(j) = (p1*rho21(j-1)) + (p2*rho21(j-2));
end
figure(3);
plot(x_axis,rho21);
xlabel('k');
ylabel('Pk');
title('Pk vs k for ARMA(2,1)');

%%
% ARMA (2,2)
gamma22(1) = (var*(1+(t1*t1)+(t2*t2)+(2*p1*t1)+(2*p2*t2)+(2*p1*p1*t2)+(2*p1*t1*t2)))/(1-(p1*p1)-(p2*p2));
gamma22(2) = ((p1*gamma22(1))+(t1*var)+(p1*t2*var)+(t1*t2*var))/(1-p2);
gamma22(3) = (p1*gamma22(2))+(p2*gamma22(1))+(t2*var);

rho22(1) = 1;
rho22(2) = gamma22(2)/gamma22(1);
rho22(3) = gamma22(3)/gamma22(1);
for j=4:n
    gamma22(j) = (p1*gamma22(j-1)) + (p2*gamma22(j-2));
    rho22(j) = (p1*rho22(j-1)) + (p2*rho22(j-2));
end
figure(4);
plot(x_axis,rho22);
xlabel('k');
ylabel('Pk');
title('Pk vs k for ARMA(2,2)');
end
