function [theta]=gradientDescent(x,y,theta,alpha,count)
  
  len=length(y);
  rho=zeros(len,1);
  for i=1:count
    rho=(x'*(x*theta - y))/len ;
    theta=theta- alpha*rho;
  endfor