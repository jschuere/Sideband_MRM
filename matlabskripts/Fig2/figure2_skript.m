
%% Figure 2
% Simulation of Sidebands at different T1/T2 relaxation times

% Go to the example folder

M_a1 = simulate_pulseqcest('Standard_0p25.seq','WM_20mM.yaml');             % WM T1/T2 Times    900/60
M_a2 = simulate_pulseqcest('Standard_0p25.seq','GM_20mM.yaml');             % GM T1/T2 Times    1400/ 80
M_a3 = simulate_pulseqcest('Standard_0p25.seq','CSF_20mM.yaml');            % CSF T1/T2 Times   4000/2000
M_a4 = simulate_pulseqcest('Standard_0p25.seq','WM_3T_20mM_L-arginin.yaml');     % PhantomTube T1/T2 Times   1500/1000

% Plot
figure;
subplot(2,2,1)
plot(-4:0.25:4,abs(M_a1(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('WM')
subplot(2,2,2)
plot(-4:0.25:4,abs(M_a2(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('GM')
subplot(2,2,3)
plot(-4:0.25:4,abs(M_a3(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('CSF')
subplot(2,2,4)
plot(-4:0.25:4,abs(M_a4(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('POhantom Tube')