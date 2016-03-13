%%
spike_10 = csvread('fig22_100ff_10_spikes.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(spike_10(:,1), spike_10(:,2))
hold on
plot(spike_10(:,3), spike_10(:,4))
hold off
xlim([-2.25e-3*0.1,2.25e-3]);
ylim([-0.1, 1.8]);
xlabel('$t$ / s', 'Interpreter', 'LaTeX')
ylabel('$V$ / V', 'Interpreter', 'LaTeX')
title('Axon hillock 100fF feedback' ,'Interpreter', 'LaTeX')
legend({'$V_{out}$', '$V_{mem}$'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')
saveas(gcf, './figs/fig1.eps' ,'epsc')
%%
ff50 = csvread('fig22_50ff.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(ff50(:,1), ff50(:,2))
hold on
plot(ff50(:,3), ff50(:,4))
hold off
xlim([-2.25e-3*0.1,2.25e-3]);
ylim([-0.1, 1.8]);
xlabel('$t$ / s', 'Interpreter', 'LaTeX')
ylabel('$V$ / V', 'Interpreter', 'LaTeX')
title('Axon hillock 50fF feedback', 'Interpreter', 'LaTeX')
legend({'$V_{out}$', '$V_{mem}$'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')
saveas(gcf, './figs/fig2.eps' ,'epsc')
%%
ff250 = csvread('fig22_250ff.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(ff250(:,1), ff250(:,2))
hold on
plot(ff250(:,3), ff250(:,4))
hold off
xlim([-2.25e-3*0.1,2.25e-3]);
ylim([-0.1, 1.8]);
xlabel('$t$ / s', 'Interpreter', 'LaTeX')
ylabel('$V$ / V', 'Interpreter', 'LaTeX')
title('Axon hillock 250fF feedback', 'Interpreter', 'LaTeX')
legend({'$V_{out}$', '$V_{mem}$'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')
saveas(gcf, './figs/fig3.eps' ,'epsc')
%%
ff500 = csvread('fig22_500ff.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(ff500(:,1), ff500(:,2))
hold on
plot(ff500(:,3), ff500(:,4))
hold off
xlim([-2.25e-3*0.1,2.25e-3]);
ylim([-0.4, 1.8]);
xlabel('$t$ / s', 'Interpreter', 'LaTeX')
ylabel('$V$ / V', 'Interpreter', 'LaTeX')
title('Axon hillock 500fF feedback', 'Interpreter', 'LaTeX')
legend({'$V_{out}$', '$V_{mem}$'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')
saveas(gcf, './figs/fig4.eps' ,'epsc')
%%
vpw02 = csvread('fig22_100ff_vpw02v.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(vpw02(:,1), vpw02(:,2))
hold on
plot(vpw02(:,3), vpw02(:,4))
hold off
xlim([-2.25e-3*0.1,2.25e-3]);
ylim([-0.1, 1.8]);
xlabel('$t$ / s', 'Interpreter', 'LaTeX')
ylabel('$V$ / V', 'Interpreter', 'LaTeX')
title('Axon hillock 100fF feedback $V_{pw}=0.2$ V', 'Interpreter', 'LaTeX')
legend({'$V_{out}$', '$V_{mem}$'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')
saveas(gcf, './figs/fig5.eps' ,'epsc')
%%
ex3 = csvread('ex3.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(ex3(:,1), ex3(:,2))
hold on
plot(ex3(:,3), ex3(:,4))
hold off
xlim([-2.25e-3*0.1,2.25e-3]);
ylim([-0.1, 1.8]);
xlabel('$t$ / s', 'Interpreter', 'LaTeX')
ylabel('$V$ / V', 'Interpreter', 'LaTeX')
title('Low power neuron circuit' ,'Interpreter', 'LaTeX')
legend({'$V_{out}$', '$V_{mem}$'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest', 'Orientation', 'Horizontal')
saveas(gcf, './figs/fig6.eps' ,'epsc')
%%
spike_10 = csvread('fig22_100ff_10_spikes.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 4], 'paperunits','centimeters','PaperPosition',[0 0 16 4]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(spike_10(:,1), spike_10(:,2))
hold on
plot(spike_10(:,3), spike_10(:,4))
hold off
xlim([0.45e-3,0.8e-3]);
ylim([-0.1, 1.8]);
xlabel('$t$ / s', 'Interpreter', 'LaTeX')
ylabel('$V$ / V', 'Interpreter', 'LaTeX')
title('Axon hillock 100fF feedback zoomed' ,'Interpreter', 'LaTeX')
legend({'$V_{out}$', '$V_{mem}$'}, 'Interpreter', 'LaTeX', 'Location', 'North')
saveas(gcf, './figs/fig_zoom.eps' ,'epsc')