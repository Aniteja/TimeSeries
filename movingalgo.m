function movingalgo
theta1 = 0.4;
theta2 = 0.4; 
n=30;
for i=1:n
    x(i)=i;
end
%%
% MA(1)
p(1) = 1;
p(2) = theta1/(1+(theta1*theta1));
for j=3:n
   p(j) = 0;
end
figure(1);
plot (x,p);
xlabel('k');
ylabel('Pk');
title('MA(1)');
%%
% MA(2)
p(1) = 1;
p(2) = (theta1+(theta1*theta2))/(1+(theta1*theta1)+(theta2*theta2));
p(3) = theta2/(1+(theta1*theta1)+(theta2*theta2));
for j=4:n
   p(j) = 0;
end

figure(2);
plot (x,p);
xlabel('k');
ylabel('Pk');
title('MA(2)');
end

