fid = fopen('MonteCarlo.329.csv');

allText = textscan(fid,'%s','delimiter','\n');

NLines = length(allText{1});

fclose(fid);

results = csvread('MonteCarlo.329.csv', 1, 3, [1, 3, NLines - 2, 3] );


offselect = [1:2:NLines - 2];
onselect = [2:2:NLines - 2];

offspikes = results(offselect);
onspikes = results(onselect);
%%
bins = [8.5,9.5,10.5,11.5,12.5,13.5,14.5,15.5,16.5];

offspikes = ones(1,200)*12;
onspikes = offspikes;
figure(1)
figure(2)
clf(1)
clf(2)
figure(1)
NLines = 400;
set(gcf, 'PaperPositionMode', 'manual');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 8], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',6)
histogram(offspikes,bins, 'FaceColor', 'k')
mu = mean(offspikes) 
%mu = 11.92;
sigma = std(offspikes);
%sigma = 0.3379;
x = [min(offspikes) - 1 : 0.1 : max(offspikes) + 1];
x = [8 : 0.01 : 16];
f = exp(-(x-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi))*(NLines/2);
hold on
plot(x, f, 'k')
hold off
xlim([8,16]);
ylabel('Number of samples', 'Interpreter', 'LaTeX')
xlabel('Number of events', 'Interpreter', 'LaTeX')
title('Off events Monte Carlo histogram' ,'Interpreter', 'LaTeX')
saveas(gcf, './figs/pre-off-200-MC.eps' ,'epsc')
%legend({'Pre Layout', 'Post Layout'}, 'Interpreter', 'LaTeX', 'Location', 'NorthWest')


figure(2)
set(gcf, 'PaperPositionMode', 'manual');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 8], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',6)
histogram(onspikes, bins, 'FaceColor', 'k')
mu = mean(onspikes) 
%mu = 11.96;
sigma = std(onspikes);
%sigma = 0.2902;
x = [min(onspikes) - 1 : 0.1 : max(onspikes) + 1];
x = [8 : 0.01 : 16];
f = exp(-(x-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi))*(NLines/2);
hold on
plot(x, f, 'k')
hold off
xlim([8,16]);
ylabel('Number of samples', 'Interpreter', 'LaTeX')
xlabel('Number of events', 'Interpreter', 'LaTeX')
title('On event Monte Carlo histogram' ,'Interpreter', 'LaTeX')
saveas(gcf, './figs/pre-on-200-MC.eps' ,'epsc')


[mean(offspikes), std(offspikes), 3*std(offspikes)]
[mean(onspikes), std(onspikes), 3*std(onspikes)]

%%
wform = csvread('pixel-bode.csv',1,0)
figure(1)
set(gcf, 'PaperPositionMode', 'manual');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 8], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
semilogx(wform(:,7), wform(:,8))
ylim([100,240]);
ylabel('Magnitude / dB', 'Interpreter', 'LaTeX')
xlabel('Frequency / Hz', 'Interpreter', 'LaTeX')
title('AC magnitude analysis of \(V_{dif}\)' ,'Interpreter', 'LaTeX')
saveas(gcf, './figs/pixel-bode.eps' ,'epsc')

%%
wform = csvread('I-pixel.csv',1,0);
wform2 = csvread('I-don.csv',1,0);
wform3 = csvread('I-diff.csv',1,0);
wform4 = csvread('I-doff.csv',1,0);
wform5 = csvread('I-logsensor.csv',1,0);
wform6 = csvread('I-SF.csv',1,0);
wform7 = csvread('I-aer.csv',1,0);
figure(1)
clf(1)
set(gcf, 'PaperPositionMode', 'manual');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 8], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(wform(:,1), 1.8*cumtrapz(wform(:,1),wform(:,2)))
hold on
plot(wform2(:,1), 1.8*cumtrapz(wform2(:,1),wform2(:,2)))
plot(wform3(:,1), 1.8*cumtrapz(wform3(:,1),wform3(:,2)))
plot(wform4(:,1), 1.8*cumtrapz(wform4(:,1),wform4(:,2)))
%plot(wform5(:,1), cumtrapz(wform5(:,1),wform5(:,2)))
%plot(wform6(:,1), cumtrapz(wform6(:,1),wform6(:,2)))
%plot(wform7(:,1), cumtrapz(wform7(:,1),wform7(:,2)))
hold off
ylabel('energy / J', 'Interpreter', 'LaTeX')
xlabel('time / s', 'Interpreter', 'LaTeX')
title('Pixel energy consumption' ,'Interpreter', 'LaTeX')
xlim([0, 0.025])
legend({'pixel', 'on inv', 'diff inv', 'off inv'}, 'Interpreter', 'LaTeX', 'Location', 'northwest')
saveas(gcf, './figs/pixel-power.eps', 'epsc');
%%
wform = csvread('I-stim.csv',1,0);
wform2 = csvread('V-GR.csv',1,0);
figure(1)
set(gcf, 'PaperPositionMode', 'manual');
set(gcf,'units', 'centimeters', 'position', [0, 0, 16, 8], 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
clf(1)
subplot(2,1,1)
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
[hAx, hLine1, hLine2] = plotyy(wform(:,1), wform(:,2),wform2(:,1),wform2(:,2))
ylabel(hAx(1), 'current / A', 'Interpreter', 'LaTeX')
ylabel(hAx(2), 'voltage / V', 'Interpreter', 'LaTeX')

title('Test input and response' ,'Interpreter', 'LaTeX')
xlim(hAx(1), [0, 0.025]);
xlim(hAx(2), [0, 0.025]);
legend({'photocurrent' ,'global reset'}, 'Interpreter', 'LaTeX', 'fontsize', 6)

subplot(2,1,2)
wform = csvread('V-spikes.csv',1,0);
set(gca,'DefaultLineLineWidth', 0.5)
set(gca,'Fontsize',6)
plot(wform(:,1), wform(:,2));
hold on
plot(wform(:,3), wform(:,4));
hold off
ylabel('voltage / V', 'Interpreter', 'LaTeX')
xlabel('time / s', 'Interpreter', 'LaTeX')
legend({'OFF', 'ON'}, 'Interpreter', 'LaTeX', 'fontsize', 6)
xlim([0,0.025])
saveas(gcf, './figs/pixel-response.eps' ,'epsc')

%%
staticpower = 1.8*1.332e-9/0.005
dynamicON = 1.8*(5.283e-9-1.332e-9)/0.005-staticpower
dynamicOFF = 1.8*(7.965e-9-7.063e-9)/0.005-staticpower

pavg = 8.783e-9*1.8/0.025
onJ = 1.8*(5.283e-9-1.332e-9)/12
offJ = 1.8*(7.965e-9-7.063e-9)/12