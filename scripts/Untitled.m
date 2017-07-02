%load data.csv
format long
p = polyfit(Ton,MTTF,2)
yfit = polyval(p,x)

p2 = polyfit(Ton,MTTF,3)
yfit2 = polyval(p2,x)

%p3 = polyfit(Ton,MTTF,1)
%yfit3 = polyval(p3,x)


plot(Ton,MTTF,'k')
hold()
plot(x,yfit,'b*-')
plot(x,yfit2,'r-..')
%plot(x,yfit3,':')
legend('Simulated delay','2nd order pred. delay','3rd order pred. delay')
xlabel('Ton (%)')
ylabel('MTTF (years)')




yresid = MTTF - yfit
SSresid = sum(yresid.^2);
SStotal = (length(MTTF)-1) * var(MTTF);
rsq = 1 - SSresid/SStotal


yresid2 = MTTF - yfit2
SSresid2 = sum(yresid2.^2);
SStotal2 = (length(MTTF)-1) * var(MTTF);
rsq2 = 1 - SSresid2/SStotal2

% 
% yresid3 = Delay - yfit3
% SSresid3 = sum(yresid3.^2);
% SStotal3 = (length(Delay)-1) * var(Delay);
% rsq3 = 1 - SSresid3/SStotal3

