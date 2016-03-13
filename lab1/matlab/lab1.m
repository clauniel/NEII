x = -0.7:0.001:0.7 % del V
y1 = (1e-8)^0.8*exp((0.8*(1.8-0.8*(0.9+x./2))-(1.8-0.9))/(26e-3)).*(exp(x./(2*26e-3))-exp(-x./(2*26e-3)))
y2 = (1e-9)^0.8*exp((0.8*(1.8-0.8*(0.9+x./2))-(1.8-0.9))/(26e-3)).*(exp(x./(2*26e-3))-exp(-x./(2*26e-3)))
y3 = (1e-10)^0.8*exp((0.8*(1.8-0.8*(0.9+x./2))-(1.8-0.9))/(26e-3)).*(exp(x./(2*26e-3))-exp(-x./(2*26e-3)))
figure(1)
set(gcf,'units', 'centimeters', 'position', [0, 0, 8, 2], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
semilogy(x,abs(y1), 'k')
hold on
semilogy(x,abs(y2), 'k')
semilogy(x,abs(y3), 'k')
hold off
xlim([-0.7,0.7])
ylim([1e-10, 10e2])
xlabel('$\Delta V$', 'Interpreter', 'LaTeX')
ylabel('$|\log\left(I\right)|$', 'Interpreter', 'LaTeX')
set(gca,'YTick', [])
set(gca, 'XTick', [0])
saveas(gcf, './figs/matlabtimes.eps' ,'epsc')

%%
figure(1)
set(gcf,'units', 'centimeters', 'position', [0, 0, 8, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
x = -10:0.01:10;
EKV = log(1+exp(x./2)).^2;
expon = exp(x)/2;
quad = (x./2).^2;
plot(x,EKV, 'k')
hold on
plot(x, expon, 'k--')
plot(x, quad, 'k-.')
hold off
ylim([0,10])
xlabel('$x$', 'Interpreter', 'LaTeX')
ylabel('$y$', 'Interpreter', 'LaTeX')
legend({'$\ln^2\left(1+e^{\frac{x}{2}}\right)$', '$\frac{e^x}{2}$', '$\left(\frac{x}{2}\right)^2$'}, 'Interpreter', 'LaTeX', 'Location', 'North')
saveas(gcf,'./figs/expquad','epsc')

%%
v1 = 0.4:0.001:1.4 % del V
v2 = 0.9
y1 = (1e-9)^0.8*exp((0.8*(1.8-0.8*((v1+v2)./2+(v1-v2)./2))-(1.8-(v1+v2)./2))/(26e-3)).*(exp((v1-v2)./(2*26e-3))-exp(-(v1-v2)./(2*26e-3)))
figure(1)
set(gcf,'units', 'centimeters', 'position', [0, 0, 8, 2], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
semilogy(v1,abs(y1))
xlim([0.4,1.4])
ylim([1e-10, 10e2])
xlabel('$V_1$ / V', 'Interpreter', 'LaTeX')
ylabel('$|\log\left(I\right)| / A$', 'Interpreter', 'LaTeX')
v2 = 1
y1 = (1e-9)^0.8*exp((0.8*(1.8-0.8*((v1+v2)./2+(v1-v2)./2))-(1.8-(v1+v2)./2))/(26e-3)).*(exp((v1-v2)./(2*26e-3))-exp(-(v1-v2)./(2*26e-3)))
hold on
semilogy(v1,abs(y1))
v2 = 0.8
y1 = (1e-9)^0.8*exp((0.8*(1.8-0.8*((v1+v2)./2+(v1-v2)./2))-(1.8-(v1+v2)./2))/(26e-3)).*(exp((v1-v2)./(2*26e-3))-exp(-(v1-v2)./(2*26e-3)))
semilogy(v1,abs(y1))
hold off
saveas(gcf,'./figs/post5','epsc')

%%
exp2 = csvread('ex1.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
semilogy(exp2(:,1), abs(exp2(:,2)), 'k+')
xlim([-0.7,0.7]);
ylim([1e-16,1e-4]);
xlabel('$V_{diff}$ / V', 'Interpreter', 'LaTeX')
ylabel('$|\log\left(I\right)|$ / A', 'Interpreter', 'LaTeX')
title('Experiment 2' ,'Interpreter', 'LaTeX')
saveas(gcf,'./figs/exp2','epsc')

%%
figure(1)
clf(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
exp3 = csvread('ex3.csv', 1, 0)
semilogy(exp3(:,1), abs(exp3(:,2)), 'k+')
hold on
for i = 4:2:length(exp3(1,:))
    semilogy(exp3(:,1), abs(exp3(:,i)),'+')
end
hold off
xlim([-0.7,0.7]);
ylim([1e-16,1e-4]);
xlabel('$V_{diff}$ / V', 'Interpreter', 'LaTeX')
ylabel('$|\log\left(I\right)|$ / A', 'Interpreter', 'LaTeX')
title('Experiment 3' ,'Interpreter', 'LaTeX')
legend({'$V_m=0.1$ V','$V_m=0.2$ V','$V_m=0.3$ V','$V_m=0.4$ V','$V_m=0.5$ V'}, 'Interpreter', 'LaTeX', 'Location', 'SouthWest')
saveas(gcf,'./figs/exp3','epsc')
%%
figure(1)
clf(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
exp4 = csvread('ex4.csv', 1, 0)
semilogy(exp4(:,1), abs(exp4(:,2)), 'k+')
hold on
for i = 4:2:length(exp4(1,:))
    semilogy(exp4(:,1), abs(exp4(:,i)),'+')
end
hold off
xlim([-0.7,0.7]);
ylim([1e-16,1e-4]);
xlabel('$V_{diff}$ / V', 'Interpreter', 'LaTeX')
ylabel('$|\log\left(I\right)|$ / A', 'Interpreter', 'LaTeX')
title('Experiment 4' ,'Interpreter', 'LaTeX')
legend({'$V_{cm}=0.9$ V','$V_{cm}=1.0$ V','$V_{cm}=1.1$ V','$V_{cm}=1.2$ V','$V_{cm}=1.3$ V','$V_{cm}=1.4$ V','$V_{cm}=1.5$ V','$V_{cm}=1.6$ V','$V_{cm}=1.7$ V',}, 'Interpreter', 'LaTeX', 'Location', 'SouthWest')
saveas(gcf,'./figs/exp4','epsc')

%%
figure(1)
clf(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
exp53 = csvread('ex53.csv', 1, 0)
semilogy(exp53(:,1), abs(exp53(:,2)), 'k+')
hold on
for i = 4:2:length(exp53(1,:))
    semilogy(exp53(:,1), abs(exp53(:,i)),'+')
end
hold off
xlim([-0.7,0.7]);
ylim([1e-16,1e-4]);
xlabel('$V_{diff}$ / V', 'Interpreter', 'LaTeX')
ylabel('$|\log\left(I\right)|$ / A', 'Interpreter', 'LaTeX')
title('Experiment 5 varying $V_m$' ,'Interpreter', 'LaTeX')
legend({'$V_m=0.1$ V','$V_m=0.2$ V','$V_m=0.3$ V','$V_m=0.4$ V','$V_m=0.5$ V'}, 'Interpreter', 'LaTeX', 'Location', 'SouthEast')
saveas(gcf,'./figs/exp53','epsc')
%%
figure(1)
clf(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
exp54 = csvread('ex54.csv', 1, 0)
semilogy(exp54(:,1), abs(exp54(:,2)), 'k+')
hold on
for i = 4:2:length(exp54(1,:))
    semilogy(exp54(:,1), abs(exp54(:,i)),'+')
end
hold off
xlim([-0.7,0.7]);
ylim([1e-16,1e-4]);
xlabel('$V_{diff}$ / V', 'Interpreter', 'LaTeX')
ylabel('$|\log\left(I\right)|$ / A', 'Interpreter', 'LaTeX')
title('Experiment 5 varying $V_{cm}$' ,'Interpreter', 'LaTeX')
legend({'$V_{cm}=0.9$ V','$V_{cm}=1.0$ V','$V_{cm}=1.1$ V','$V_{cm}=1.2$ V','$V_{cm}=1.3$ V','$V_{cm}=1.4$ V','$V_{cm}=1.5$ V','$V_{cm}=1.6$ V','$V_{cm}=1.7$ V',}, 'Interpreter', 'LaTeX', 'Location', 'SouthEast')
saveas(gcf,'./figs/exp54','epsc')
