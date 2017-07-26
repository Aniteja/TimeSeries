function ar2
phi1 = [0.5; 0.4; -0.8; 0.9; 0.67];
phi2 = [0.25; 0.4; -0.65; -0.8; 0.45];
n=90;
for j=1:n
    x(j)=j;
end
for i=1:5
    display(phi1(i),'Phi 1');
    display(phi2(i),'Phi 2');
    F = [phi1(i) phi2(i);1 0];
    eval = eig(F);
    display(eval,'Eigen values are');
    p(1)=1;
    p(2) = phi1(i)/(1-phi2(i));
    p(3) = (phi1(i)*p(2)) + phi2(i);
     for k=4:n
       p(k) = (phi1(i)*p(k-1)) + (phi2(i)*p(k-2));
     end
    figure(i);
    plot (x,p);
    title('AR(2)');
end
end

