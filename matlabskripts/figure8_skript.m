%% Figure 8
% In Vivo Measurment

load('invivo_Zfiles_CSF.mat')
%load('invivo_Zfiles_WM.mat')
%load('invivo_Zfiles_GM.mat')

offsets=-4:0.05:4;offsets2=-4:0.25:4;
mtroffsets=0.05:0.05:4;mtroffsets2=0.5:0.25:4;

figure
subplot(2,2,1)
hold on;
plot(offsets,Z1);  % Rohdaten
plot(mtroffsets,MTR1);  % Rohdaten
hold off;
legend('Z_corrExt','MTRasym')
xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)');set(gca,'XDir','reverse');ylim([-0.1 0.6]);
title('Without gradient spoiling - Sampling 0.05 ppm')

subplot(2,2,3)
hold on;
plot(offsets2,Z2);  % Rohdaten
plot(mtroffsets2,MTR2);  % Rohdaten
hold off;
legend('Z_corrExt','MTRasym')
xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)');set(gca,'XDir','reverse');ylim([-0.1 0.6]);
title('Without gradient spoiling - Sampling 0.25 ppm')



load('invivo_spoiler.mat')

subplot(2,2,2)
hold on;
plot(offsets,ZS1);  % Rohdaten
plot(mtroffsets,MTRS1);  % Rohdaten
hold off;
legend('Z_corrExt','MTRasym')
xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)');set(gca,'XDir','reverse');ylim([-0.1 0.6]);
title('With gradient spoiling - Sampling 0.05 ppm')

subplot(2,2,4)
hold on;
plot(offsets2,ZS2);  % Rohdaten
plot(mtroffsets2,MTRS2);  % Rohdaten
hold off;
legend('Z_corrExt','MTRasym')
xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)');set(gca,'XDir','reverse');ylim([-0.1 0.6]);
title('With gradient spoiling - Sampling 0.25 ppm')