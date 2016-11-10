%load data.csv
format long
lmModel = fitlm(Env, MTTF, 'linear', 'RobustOpts', 'on');
ypred = predict(lmModel, Xnew);


% plot(Ton,MTTF,'k')
% hold()
% plot(x,yfit,'b*-')
% plot(x,yfit2,'r-..')
% %plot(x,yfit3,':')
% legend('Simulated delay','2nd order pred. delay','3rd order pred. delay')
% xlabel('Ton (%)')
% ylabel('MTTF (years)')
% 
% 
% 
% 
% yresid = MTTF - yfit
% SSresid = sum(yresid.^2);
% SStotal = (length(MTTF)-1) * var(MTTF);
% rsq = 1 - SSresid/SStotal
% 
% 
% yresid2 = MTTF - yfit2
% SSresid2 = sum(yresid2.^2);
% SStotal2 = (length(MTTF)-1) * var(MTTF);
% rsq2 = 1 - SSresid2/SStotal2
% 
% % 
% % yresid3 = Delay - yfit3
% % SSresid3 = sum(yresid3.^2);
% % SStotal3 = (length(Delay)-1) * var(Delay);
% % rsq3 = 1 - SSresid3/SStotal3
% 
