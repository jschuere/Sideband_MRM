%% Figure 3
% Simulation of different Sampling rates 0.25 ppm , 0.1 ppm , 0.05 ppm , 0.01 ppm

% Go to the example folder
% 1) Simulation without B0 Drift
M_a1 = simulate_pulseqcest('S_0p25.seq','WM_3T_20mM_L-arginin.yaml');
M_a2 = simulate_pulseqcest('S_0p1.seq','WM_3T_20mM_L-arginin.yaml');
M_a3 = simulate_pulseqcest('S_0p05.seq','WM_3T_20mM_L-arginin.yaml');
M_a4 = simulate_pulseqcest('S_0p01.seq','WM_3T_20mM_L-arginin.yaml');

% 2) Simulation with B0 Drift of 0.07 ppm  (adjusted in the yaml file)
M_b1 = simulate_pulseqcest('S_0p25.seq','WM_3T_20mM_L-arginin_B0Drift.yaml');
M_b2 = simulate_pulseqcest('S_0p1.seq','WM_3T_20mM_L-arginin_B0Drift.yaml');
M_b3 = simulate_pulseqcest('S_0p05.seq','WM_3T_20mM_L-arginin_B0Drift.yaml');
M_b4 = simulate_pulseqcest('S_0p01.seq','WM_3T_20mM_L-arginin_B0Drift.yaml');

figure;
subplot(2,4,1)
plot(-4:0.25:4,abs(M_a1(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('Sampling 0.25 ppm')
subplot(2,4,2)
plot(-4:0.1:4,abs(M_a2(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('Sampling 0.1 ppm')
subplot(2,4,3)
plot(-4:0.05:4,abs(M_a3(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('Sampling 0.05 ppm')
subplot(2,4,4)
plot(-4:0.01:4,abs(M_a4(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('Sampling 0.01 ppm')

subplot(2,4,5)
plot(-4:0.25:4,abs(M_b1(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title(sprintf('With B0 Drift\Sampling 0.25 ppm'))
subplot(2,4,6)
plot(-4:0.1:4,abs(M_b2(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title(sprintf('With B0 Drift\Sampling 0.1 ppm'))
subplot(2,4,7)
plot(-4:0.05:4,abs(M_b3(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title(sprintf('With B0 Drift\Sampling 0.05 ppm'))
subplot(2,4,8)
plot(-4:0.01:4,abs(M_b4(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title(sprintf('With B0 Drift\Sampling 0.01 ppm'))
