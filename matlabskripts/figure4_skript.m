% Grafik 4
% Simulation and Measurment
% Coordinate are changed to phantom with 27 mM 
% Phantom tubes are (from left to right) 20mM, 27mM, 40mM, 60mM, 70mM
% You can also select other coordinates--> Please adjust yaml files regarding concentration, B0 and B1 

%% For 20 mM
load('pixel_in_20mM_tube.mat')

M_z1 = simulate_pulseqcest('StandardAcc_tp50td5.seq','WM_3T_20mM_L-arginin_V1c');
M_z2 = simulate_pulseqcest('KeineAcc_tp50td5.seq','WM_3T_20mM_L-arginin_V2c');
M_z3 = simulate_pulseqcest('QuadratischAcc_tp50_td5.seq','WM_3T_20mM_L-arginin_V3c');
ppmrange=[-4:0.05:4];

figure
subplot(2,3,1);hold on; plot(-4:0.05:4,abs(M_z1(2:end)));set(gca,'XDir','reverse');title('Standard Phase Cyclingn');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,2);hold on; plot(-4:0.05:4,abs(M_z2(2:end)));set(gca,'XDir','reverse');title('Without Phase Cycling');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,3);hold on; plot(-4:0.05:4,abs(M_z3(2:end)));set(gca,'XDir','reverse');title('Quaratic Phase Cycling');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,4);hold on; plot(ppmrange,abs(temp1));title('Standard Phase Cycling');set(gca,'XDir','reverse');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,5);hold on; plot(ppmrange,abs(temp2));title('Without Phase Cycling');set(gca,'XDir','reverse');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,6);hold on; plot(ppmrange,abs(temp3));title('Quadtratic Phase Cycling');set(gca,'XDir','reverse');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')




%% For 27 mM 
load('pixel_in_27mM_tube.mat')

M_z1 = simulate_pulseqcest('APTw_3T_001_2uT_36SincGauss_StandardAcc_tp50td5.seq','WM_3T_27mM_L-arginin_V1c');
M_z2 = simulate_pulseqcest('APTw_3T_001_2uT_36SincGauss_KeineAcc_tp50td5.seq','WM_3T_27mM_L-arginin_V2c');
M_z3 = simulate_pulseqcest('APTw_3T_001_2uT_36SincGauss_QuadratischAcc_tp50_td5.seq','WM_3T_27mM_L-arginin_V3c');
ppmrange=[-4:0.05:4];

figure
subplot(2,3,1);hold on; plot(-4:0.05:4,abs(M_z1(2:end)));set(gca,'XDir','reverse');title('Standard Phase Cyclingn');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,2);hold on; plot(-4:0.05:4,abs(M_z2(2:end)));set(gca,'XDir','reverse');title('Without Phase Cycling');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,3);hold on; plot(-4:0.05:4,abs(M_z3(2:end)));set(gca,'XDir','reverse');title('Quaratic Phase Cycling');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,4);hold on; plot(ppmrange,abs(temp1));title('Standard Phase Cycling');set(gca,'XDir','reverse');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,5);hold on; plot(ppmrange,abs(temp2));title('Without Phase Cycling');set(gca,'XDir','reverse');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
subplot(2,3,6);hold on; plot(ppmrange,abs(temp3));title('Quadtratic Phase Cycling');set(gca,'XDir','reverse');xlabel('\Delta\omega [ppm]');ylabel('Z(\Delta\omega)')
