%% Figure 5
% Simulation opf Pulse Shapes

% Go to the example folder

M_z1 = simulate_pulseqcest('Sinc_B1_1p80_DC90_td.seq','CSF_20mM.yaml');
M_z2 = simulate_pulseqcest('Gauss_B1_1p80_DC90_td.seq','CSF_20mM.yaml');
M_z3 = simulate_pulseqcest('Block_B1_1p80_DC90_td.seq','CSF_20mM.yaml');
M_z4 = simulate_pulseqcest('Sinc_B1_1p80_DC90_spoiler.seq','CSF_20mM.yaml');
M_z5 = simulate_pulseqcest('Gauss_B1_1p80_DC90_spoiler.seq','CSF_20mM.yaml');
M_z6 = simulate_pulseqcest('Block_B1_1p80_DC90_spoiler.seq','CSF_20mM.yaml');
M_z7 = simulate_pulseqcest('Sinc_B1_1p80_DC90_spoiler.seq','CSF_20mM_dB0.yaml');
M_z8 = simulate_pulseqcest('Gauss_B1_1p80_DC90_spoiler.seq','CSF_20mM_dB0.yaml');
M_z9 = simulate_pulseqcest('Block_B1_1p80_DC90_spoiler.seq','CSF_20mM_dB0.yaml');


%Plot
fig=figure
subplot(3,3,1)
plot(-4:0.05:4,abs(M_z1(2:end)));title('Sinc');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,2)
plot(-4:0.05:4,abs(M_z2(2:end)));title('Gauss');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,3)
plot(-4:0.05:4,abs(M_z3(2:end)));title('Block');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,4)
plot(-4:0.05:4,abs(M_z4(2:end)));title('Sinc with Spoiler during Td');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,5)
plot(-4:0.05:4,abs(M_z5(2:end)));title('Gauss with Spoiler during Td');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,6)
plot(-4:0.05:4,abs(M_z6(2:end)));title('Block with Spoiler during Td');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,7)
plot(-4:0.05:4,abs(M_z7(2:end)));title('Sinc with Spoiler during Td');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,8)
plot(-4:0.05:4,abs(M_z8(2:end)));title('Gauss with Spoiler during Td');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,9)
plot(-4:0.05:4,abs(M_z9(2:end)));title('Block with Spoiler during Td');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
