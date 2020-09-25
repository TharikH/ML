function plotData(x,y)
 positive_index=find(y==1);
negative_index=find(y==0);

figure; hold on;
plot(x(positive_index,1),x(positive_index,2),'k+','Linewidth',2,'MarkerSize',7);
plot(x(negative_index,1),x(negative_index,2),'ko','MarkerFaceColor','r','MarkerSize',7);

hold off;

end;