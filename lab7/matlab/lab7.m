pre = csvread('pre-layout.csv',1,0);
post = csvread('post-layout.csv', 1,0);
figure(1)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 12], 'paperunits','centimeters','PaperPosition',[0 0 16 12]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',6)
subplot(2,1,1)
semilogx(pre(:,1), pre(:,2))
hold on
semilogx(post(:,1), post(:,2))
hold off
grid on
ylabel('$|\frac{V_{out}}{V_{in}}|$ / dB', 'Interpreter', 'LaTeX')
title('Pre vs. post layout simulation' ,'Interpreter', 'LaTeX')
legend({'Pre Layout', 'Post Layout'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')
xlim([1e1,1e7]);
set(gca, 'XTick', [10.^0 10.^1 10.^2 10.^3 10.^4 10.^5 10.^6 10.^7 10.^8 10.^9 10.^10])
%ylim([-0.1, 1.8]);
subplot(2,1,2)
semilogx(pre(:,3), pre(:,4))
hold on
semilogx(post(:,3), post(:,4))
hold off
xlim([1e1,1e7]);
set(gca, 'XTick', [10.^0 10.^1 10.^2 10.^3 10.^4 10.^5 10.^6 10.^7 10.^8 10.^9 10.^10])
grid on
ylabel('Phase / deg', 'Interpreter', 'LaTeX')
legend({'Pre Layout', 'Post Layout'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')
xlabel('Freq / Hz', 'Interpreter', 'LaTeX')
saveas(gcf, './figs/fig1.eps' ,'epsc')

copyfile('figs/fig1.eps','../report/')