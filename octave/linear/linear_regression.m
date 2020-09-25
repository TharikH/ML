data=load('ex1data1.txt');
x=data(:,1);
y=data(:,2);

fprintf("data plotted.....\n");

plot(x,y,'r*','MarkerSize',10);
ylabel('Profit in $10,000s');
xlabel('Population of City in 10,000s');

total_data=length(y);
x=[ones(total_data,1),x];
theta=zeros(2,1);
%compute Cost Function so that we can minimize cost to find parameters

j=cost(x,y,theta);
fprintf("cost when thetas are zero is %f\n",j);


alpha=0.01;      %learning rate
iteration=1500;
min_theta=gradientDescent(x,y,theta,alpha,iteration);

hold on;
plot(x(:,2), x*min_theta,'MarkerSize',20,'-')
legend('Training data', 'Linear regression')
hold on;


val=input("enter popltn : ");


temp=[1,val];
predict=temp*min_theta;
fprintf("\nprofit is %f",predict);