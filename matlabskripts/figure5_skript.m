%% Figure 5
% Simulation opf Pulse Shapes

M1 = simulate_pulseqcest('Sinc_delay.seq','WM_3T_20mM_L-arginin.yaml');
M2 = simulate_pulseqcest('Gauss_delay.seq','WM_3T_20mM_L-arginin.yaml');
M3 = simulate_pulseqcest('Block_delay.seq','WM_3T_20mM_L-arginin.yaml');
M4 = simulate_pulseqcest('Sinc_spoiler.seq','WM_3T_20mM_L-arginin.yaml');
M5 = simulate_pulseqcest('Gauss_spoiler.seq','WM_3T_20mM_L-arginin.yaml');
M6 = simulate_pulseqcest('Block_spoiler.seq','WM_3T_20mM_L-arginin.yaml');
M7 = simulate_pulseqcest('Sinc_spoiler.seq','WM_3T_20mM_L-arginin_B0Drift.yaml');
M8 = simulate_pulseqcest('Gauss_spoiler.seq','WM_3T_20mM_L-arginin_B0Drift.yaml');
M9 = simulate_pulseqcest('Block_spoiler.seq','WM_3T_20mM_L-arginin_B0Drift.yaml');
fig=figure
subplot(3,3,1)
plot(-4:0.05:4,abs(M1(2:end)));title('Sinc pulse shape');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,2)
plot(-4:0.05:4,abs(M2(2:end)));title('Gauss pulse shape');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,3)
plot(-4:0.05:4,abs(M3(2:end)));title('Block pulse shape');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,4)
plot(-4:0.05:4,abs(M4(2:end)));title('Sinc pulse shape with gradient spoiling');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,5)
plot(-4:0.05:4,abs(M5(2:end)));title('Gauss pulse shape with gradient spoiling');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,6)
plot(-4:0.05:4,abs(M6(2:end)));title('Block pulse shape with gradient spoiling');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,7)
plot(-4:0.05:4,abs(M7(2:end)));title('Sinc pulse shape with gradient spoiling +B0 Drift');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,8)
plot(-4:0.05:4,abs(M8(2:end)));title('Gauss pulse shape with gradient spoiling +B0 Drift');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')
subplot(3,3,9)
plot(-4:0.05:4,abs(M9(2:end)));title('Block pulse shape with gradient spoiling +B0 Drift');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');ylim([0 1]);xlim([-4 4]);set(gca, 'XDir','reverse')



