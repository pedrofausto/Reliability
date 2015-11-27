%load data.csv
format long
p = polyfit(Ton,Delay,2)
yfit = polyval(p,x)

p2 = polyfit(Ton,Delay,3)
yfit2 = polyval(p2,x)
plot(Ton,Delay,'r')
hold()
plot(x,yfit,'b--')
plot(x,yfit2,'b-.')
legend('Simulated delay','2nd order pred. delay','3rd order pred. delay')
xlabel('Ton (%)')
ylabel('Output delay (s)')


yresid = Delay - yfit
SSresid = sum(yresid.^2);
SStotal = (length(Delay)-1) * var(Delay);
rsq = 1 - SSresid/SStotal


yresid2 = Delay - yfit2
SSresid2 = sum(yresid2.^2);
SStotal2 = (length(Delay)-1) * var(Delay);
rsq2 = 1 - SSresid2/SStotal2

