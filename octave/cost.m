function j= cost(x,y,theta)
  j=0;
  len=length(y);
  j=(((x*theta)-y)' * ((x*theta)-y))/(2*len);
  
 end