fid = fopen('MonteCarlo.327.csv');

allText = textscan(fid,'%s','delimiter','\n');

NLines = length(allText{1});

fclose(fid);

results = csvread('MonteCarlo.327.csv', 1, 3, [1, 3, NLines - 2, 3] );

bins = [8.5,9.5,10.5,11.5,12.5,13.5,14.5,15.5,16.5];

offselect = [1:2:NLines - 2];
onselect = [2:2:NLines - 2];

offspikes = results(offselect);
onspikes = results(onselect);

%offspikes = ones(1,200)*12;
%onspikes = offspikes;
%%
clf(1)
clf(2)
figure(1)
NLines = 400;
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 12], 'paperunits','centimeters','PaperPosition',[0 0 16 12]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',6)
%histogram(offspikes,bins)
%mu = mean(offspikes) 
mu = 11.92;
%sigma = std(offspikes);
sigma = 0.3379;
%x = [min(offspikes) - 1 : 0.1 : max(offspikes) + 1];
x = [8 : 0.01 : 16];
f = exp(-(x-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi))*(NLines/2);
hold on
plot(x, f, 'k')
hold off
xlim([8,16]);
ylabel('Num samples', 'Interpreter', 'LaTeX')
xlabel('Num spikes', 'Interpreter', 'LaTeX')
title('Off spike Monte Carlo histogram' ,'Interpreter', 'LaTeX')
saveas(gcf, './figs/fig1.png' ,'png')
%legend({'Pre Layout', 'Post Layout'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')


figure(2)
set(gcf, 'PaperPositionMode', 'auto');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 12], 'paperunits','centimeters','PaperPosition',[0 0 16 12]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',6)
%histogram(onspikes, bins, 'FaceColor', 'r')
%mu = mean(onspikes) 
mu = 11.96;
%sigma = std(onspikes);
sigma = 0.2902;
%x = [min(onspikes) - 1 : 0.1 : max(onspikes) + 1];
x = [8 : 0.01 : 16];
f = exp(-(x-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi))*(NLines/2);
hold on
plot(x, f, 'k')
hold off
xlim([8,16]);
ylabel('Num samples', 'Interpreter', 'LaTeX')
xlabel('Num spikes', 'Interpreter', 'LaTeX')
title('On spike Monte Carlo histogram' ,'Interpreter', 'LaTeX')
saveas(gcf, './figs/fig2.png' ,'png')


[mean(offspikes), std(offspikes), 3*std(offspikes)]
[mean(onspikes), std(onspikes), 3*std(onspikes)]