function ar1
N=1000;
variance= 1;
phi= 1.2;
meansum = 0;
sum=0;
variancesum=0;
for i = 1:N
num(i)=i;
end
Ei = wgn(N+1,1,variance);
yt(1)=0;
for j=2:N+1
    yt(j)=(phi*yt(j-1))+Ei(j);
end
for i=1:N
    meansum=meansum+Ei(i);
end
mean = meansum/N; % Computing the mean
for i=1:N
    variancesum = variancesum + (Ei(i)-mean)*(Ei(i)-mean);
end
r0 = variancesum/(N-1); % Computing the variance
for j=1:N-1
    for t=j+1:N
        sum=0;
        sum = sum + (Ei(t)*Ei(t-j));
    end
    r(j) = sum/(N-j); % Calculating the covariance
end
r(1000)=0.0;
display(r);
covar(1)=1;
for j=1:N-1
    covar(j+1) = phi^j; % Calculating the correlation
end
plot(num,covar);
end

