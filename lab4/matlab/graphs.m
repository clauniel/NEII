figure(1)
set(gcf, 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',10)

semilogx(frec05,mag05)
hold all
semilogx(frec,mag)
semilogx(frec2,mag2)

title('Transfer Functions of the Delay Line', 'Interpreter', 'LaTeX')
xlabel('Frequency (Hz)', 'Interpreter', 'LaTeX')
ylabel('Magnitude (dB)', 'Interpreter', 'LaTeX')
legend('AC = 0.5', 'AC = 1', 'AC = 2', 'Location', 'Southwest', 'Interpreter', 'LaTeX')
ylim([-140 20])

saveas(gcf,'C:/Users/Eloy/OneDrive/NSC/Neuromorphic II/Labs/lab4/matlab/exp1','epsc')

figure(2)
set(gcf, 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',10)

semilogx(frec05,mag05-(mag05(1)-mag(1)))
hold all
semilogx(frec,mag)
semilogx(frec2,mag2-(mag2(1)-mag(1)))

title('Transfer Functions of the Delay Line (Superimposed)', 'Interpreter', 'LaTeX')
xlabel('Frequency (Hz)', 'Interpreter', 'LaTeX')
ylabel('Magnitude (dB)', 'Interpreter', 'LaTeX')
legend('AC = 0.5, +6 dB', 'AC = 1', 'AC = 2, -6 dB', 'Location', 'Southwest', 'Interpreter', 'LaTeX')
ylim([-140 20])

saveas(gcf,'C:/Users/Eloy/OneDrive/NSC/Neuromorphic II/Labs/lab4/matlab/exp1b','epsc')

figure(3)
set(gcf, 'paperunits','centimeters','PaperPosition',[0 0 16 8]);
set(gca,'DefaultLineLineWidth', 1)
set(gca,'Fontsize',10)

semilogx(frecall,tres)
hold all
semilogx(frecall,dos)
semilogx(frecall,uno)

title('Transfer Functions of the Delay Line', 'Interpreter', 'LaTeX')
xlabel('Frequency (Hz)', 'Interpreter', 'LaTeX')
ylabel('Magnitude (dB)', 'Interpreter', 'LaTeX')
legend('Stage 1', 'Stage 2', 'Stage 3', 'Location', 'Southwest', 'Interpreter', 'LaTeX')
ylim([-140 20])

saveas(gcf,'C:/Users/Eloy/OneDrive/NSC/Neuromorphic II/Labs/lab4/matlab/exp2','epsc')

