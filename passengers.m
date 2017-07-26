n=length(xt1);
Compute mean and variance
mean_xt1 = mean(xt1);
var_xt1 = var(xt1);
display(mean_xt1,'Mean of Xt1');
display(var_xt1,'Variance of Xt1');
Plot xt vs time
figure(1);
plot(time1,xt1);
xlabel('Time Measurements')
ylabel('Number of Airline Passengers')
title('Xt vs Time')
figure(2);
autocorr(xt1,140);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Xt')
figure(3);
parcorr(xt1,140);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Xt')
figure(4);
histogram(xt1);
title('Histogram for Airline Passengers');
Removing the trend
yt1(1) = 0;
for i=2:n
yt1(i) = xt1(i)-xt1(i-1);
end
calculating mean and variance of Yt1
mean_yt1 = mean(yt1);
var_yt1 = var(yt1);
display(mean_yt1,'Mean of Yt1');
display(var_yt1,'Variance of Yt1');
plotting
figure(5);
plot(time1,yt1);
xlabel('Time Measurements')
ylabel('Yt')
title('Yt vs Time for airline passengers')
figure(6);
autocorr(yt1,140);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Yt')
figure(7);
parcorr(yt1,140);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Yt')
figure(8);
histogram(yt1);
title('Histogram for Airline Passengers');
%
s=11; % Peaks are observed on Aug 1959 and Jul 1960
for i=s+1:n
    zt1(i) = yt1(i) - yt1(i-s);
end
mean_zt1 = mean(zt1);
var_zt1 = var(zt1);
display(mean_zt1,'Mean of Zt');
display(var_zt1,'Variance of Zt');
Plotting
figure(9);
plot(time1,zt1);
xlabel('Time Measurements')
ylabel('Zt')
title('Zt vs Time for airline passengers')
figure(10);
autocorr(zt1,142);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Zt')
figure(11);
parcorr(zt1,142);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Zt')
figure(12);
histogram(zt1);
title('Histogram for Airline Passengers');
Estimate
Model = arima(1,0,1);
estimate_model = estimate(Model,zt1');
Residual
vari = 997.736;
Ei = normrnd(0,vari,n,1);
const = 0.229086;
phi1 = 0.454348;
theta1 = -1;
ztcap1(1) = zt1(1);
for i=2:n
ztcap1(i) = const+ (phi1*ztcap1(i-1))+Ei(i)+(theta1*Ei(i-1));
end
for i=1:n
    residual1(i) = zt1(i) - ztcap1(i);
end
Plotting
figure(13);
plot(time1,residual1);
xlabel('Time Measurements')
ylabel('Residual')
title('Residual vs Time for airline passengers')
figure(14);
autocorr(residual1,142);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Residual')
figure(15);
parcorr(residual1,142);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Residuals')
%%
n=length(xt2);
%Compute mean and variance
mean_xt2 = mean(xt2);
var_xt2 = var(xt2);
display(mean_xt2,'Mean of Xt2');
display(var_xt2,'Variance of Xt2');
%Plot xt vs time
figure(16);
plot(time2,xt2);
xlabel('Time Measurements')
ylabel('Number of Monthly car sales')
title('Xt vs Time')
figure(17);
autocorr(xt2,105);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Xt')
figure(18);
parcorr(xt2,105);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Xt')
figure(19);
histogram(xt2);
title('Histogram for Airline Passengers');
%Removing the trend
yt2(1) = 0;
for i=2:n
yt2(i) = xt2(i)-xt2(i-1);
end
%calculating mean and variance of Yt1
mean_yt2 = mean(yt2);
var_yt2 = var(yt2);
display(mean_yt2,'Mean of Yt2');
display(var_yt2,'Variance of Yt2');
%plotting
figure(20);
plot(time2,yt2);
xlabel('Time Measurements')
ylabel('Yt')
title('Yt vs Time for Car Sales')
figure(21);
autocorr(yt2,105);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Yt')
figure(22);
parcorr(yt2,105);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Yt')
figure(23);
histogram(yt2);
title('Histogram for Airline Passengers');
%Seasonality
s=12; % Peaks are observed on May 1967 and May 1968
for i=s+1:n
    zt2(i) = yt2(i) - yt2(i-s);
end
mean_zt2 = mean(zt2);
var_zt2 = var(zt2);
display(mean_zt2,'Mean of Zt');
display(var_zt2,'Variance of Zt');
%Plotting
figure(24);
plot(time2,zt2);
xlabel('Time Measurements')
ylabel('Zt')
title('Zt vs Time for Car Sales')
figure(25);
autocorr(zt2,105);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Zt')
figure(26);
parcorr(zt2,105);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Zt')
figure(27);
histogram(zt2);
title('Histogram for Car Sales');
%Estimate
Model = arima(2,0,1);
estimate_model = estimate(Model,zt2');
%Residual
vari = 1.25259e+07;
Ei = normrnd(0,vari,n,1);
const = -16.0778;
phi1 = 0.460463 ;
phi2 = -0.15565;
theta1 = -0.999619;
ztcap2(1) = zt2(1);
ztcap2(2) = zt2(2);
for i=3:n
ztcap2(i) = const+ (phi1*ztcap2(i-1))+(phi2*ztcap2(i-2))+Ei(i)+(theta1*Ei(i-1));
end
for i=1:n
    residual2(i) = zt2(i) - ztcap2(i);
end
%Plotting
figure(28);
plot(time2,residual2);
xlabel('Time Measurements')
ylabel('Residual')
title('Residual vs Time for Car Sales')
figure(29);
autocorr(residual2,100);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Residual')
figure(30);
parcorr(residual2,100);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Residuals')
%%
n=length(xt3);
%Compute mean and variance
mean_xt3 = mean(xt3);
var_xt3 = var(xt3);
display(mean_xt3,'Mean of Xt3');
display(var_xt3,'Variance of Xt3');
%Plot xt vs time
figure(31);
plot(time3,xt3);
xlabel('Time Measurements')
ylabel('Wisconsin employement data')
title('Xt vs Time')
figure(32);
autocorr(xt3,175);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Xt')
figure(33);
parcorr(xt3,175);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Xt')
figure(34);
histogram(xt3);
title('Histogram for Wisconsin employment');
%Removing the trend
yt3(1) = 0;
for i=2:n
yt3(i) = xt3(i) - xt3(i-1);
end
%calculating mean and variance of Yt3
mean_yt3 = mean(yt3);
var_yt3 = var(yt3);
display(mean_yt3,'Mean of Yt3');
display(var_yt3,'Variance of Yt3');
%plotting
figure(35);
plot(time3,yt3);
xlabel('Time Measurements')
ylabel('Yt')
title('Yt vs Time for Wisconsin Employment Series')
figure(36);
autocorr(yt3,175);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Yt')
figure(37);
parcorr(yt3,175);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Yt')
figure(38);
histogram(yt3);
title('Histogram for Wisconsin Employment Series');
% Seasonality
s=12; % Peaks are observed on Dec 1974 and Dec 1975
for i=s+1:n
    zt3(i) = yt3(i) - yt3(i-s);
end
mean_zt3 = mean(zt3);
var_zt3 = var(zt3);
display(mean_zt3,'Mean of Zt');
display(var_zt3,'Variance of Zt');
%Plotting
figure(39);
plot(time3,zt3);
xlabel('Time Measurements')
ylabel('Zt')
title('Zt vs Time for Wisconsin Employment')
figure(40);
autocorr(zt3,175);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Zt')
figure(41);
parcorr(zt3,175);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Zt')
figure(42);
histogram(zt3);
title('Histogram for Wisconsin Employment');
%Estimate
Model = arima(1,0,1);
estimate_model = estimate(Model,zt3');
%Residual
vari = 5.09859;
Ei = normrnd(0,vari,n,1);
const = -0.0554332;
phi1 = -0.0484722 ;
theta1 =  0.0847121;
ztcap3(1) = zt3(1);
for i=2:n
ztcap3(i) = const+ (phi1*ztcap3(i-1))+Ei(i)+(theta1*Ei(i-1));
end
for i=1:n
    residual3(i) = zt3(i) - ztcap3(i);
end
%Plotting
figure(43);
plot(time3,residual3);
xlabel('Time Measurements')
ylabel('Residual')
title('Residual vs Time for Wisconsin Employment')
figure(44);
autocorr(residual3,175);
xlabel('Time Measurements')
ylabel('Pk')
title('Correlogram for Residual')
figure(45);
parcorr(residual3,175);
xlabel('Time Measurements')
ylabel('Sample partial correlation')
title('Partial Auto Correlation for Residuals')