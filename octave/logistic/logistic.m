

data=load('ex2data1.txt');

x=data(:,[1,2]);
y=data(:,3);


%plot --start
plotData(x,y);

xlabel('Exam 1 score');
ylabel('Exam 2 score');

legend('Admitted', 'Not admitted')
hold off;
%plot --end

[m,n]=size(x);
x=[ones(m,1),x];

theta=zeros(n+1,1);

[cost,grad]=costFunction(theta,x,y);

fprintf("cost is  :- %f\n",cost);
fprintf("grad is :- %f\n",grad);

%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, cost] = ...
	fminunc(@(t)(costFunction(t, x, y)),theta, options);
  
fprintf("cost is  :- %f\n",cost);

%plot decision boundary
plotDecisionBoundary(theta,x,y);

