
%% Figure 7
% Simulation of Sidebands weith increasing number of pulses

% Go to the example folder

%========================================================================================================================================================================================
M_z1 = simulate_pulseqcest('Sinc_B1_1p80_td_1Puls.seq','CSF_20mM.yaml');
M_z2 = simulate_pulseqcest('Sinc_B1_1p80_td_2Puls.seq','CSF_20mM.yaml');
M_z3 = simulate_pulseqcest('Sinc_B1_1p80_td_3Puls.seq','CSF_20mM.yaml');
M_z4 = simulate_pulseqcest('Sinc_B1_1p80_td_4Puls.seq','CSF_20mM.yaml');
M_z5 = simulate_pulseqcest('Sinc_B1_1p80_td_5Puls.seq','CSF_20mM.yaml');
M_z6 = simulate_pulseqcest('Sinc_B1_1p80_td_10Puls.seq','CSF_20mM.yaml');

M_y1 = simulate_pulseqcest('Sinc_B1_1p80_spoiler_1Puls.seq','CSF_20mM.yaml');
M_y2 = simulate_pulseqcest('Sinc_B1_1p80_spoiler_2Puls.seq','CSF_20mM.yaml');
M_y3 = simulate_pulseqcest('Sinc_B1_1p80_spoiler_3Puls.seq','CSF_20mM.yaml');
M_y4 = simulate_pulseqcest('Sinc_B1_1p80_spoiler_4Puls.seq','CSF_20mM.yaml');
M_y5 = simulate_pulseqcest('Sinc_B1_1p80_spoiler_5Puls.seq','CSF_20mM.yaml');
M_y6 = simulate_pulseqcest('Sinc_B1_1p80_spoiler_10Puls.seq','CSF_20mM.yaml');

figure
ax1=subplot(6,2,1);plot(-4:0.05:4,abs(M_z1(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');title('Without Gradient Spoiler');legend('1 sinc puls');
ax2=subplot(6,2,3);plot(-4:0.05:4,abs(M_z2(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('2 sinc pulses');ax2.Position(2) = ax2.Position(2)+0.03;
ax3=subplot(6,2,5);plot(-4:0.05:4,abs(M_z3(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('3 sinc pulses');ax3.Position(2) = ax3.Position(2)+0.06;
ax4=subplot(6,2,7);plot(-4:0.05:4,abs(M_z4(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('4 sinc pulses');ax4.Position(2) = ax4.Position(2)+0.09;
ax5=subplot(6,2,9);plot(-4:0.05:4,abs(M_z5(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('5 sinc pulses');ax5.Position(2) = ax5.Position(2)+0.12;
ax6=subplot(6,2,11);plot(-4:0.05:4,abs(M_z6(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');legend('10 sinc pulses');ax6.Position(2) = ax6.Position(2)+0.15;

ax7=subplot(6,2,2);plot(-4:0.05:4,abs(M_y1(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');title('With Gradient Spoiler');legend('1 sinc puls');
ax8=subplot(6,2,4);plot(-4:0.05:4,abs(M_y2(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('2 sinc pulses');ax8.Position(2) = ax8.Position(2)+0.03;
ax9=subplot(6,2,6);plot(-4:0.05:4,abs(M_y3(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('3 sinc pulses');ax9.Position(2) = ax9.Position(2)+0.06;
ax10=subplot(6,2,8);plot(-4:0.05:4,abs(M_y4(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('4 sinc pulses');ax10.Position(2) = ax10.Position(2)+0.09;
ax11=subplot(6,2,10);plot(-4:0.05:4,abs(M_y5(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');legend('5 sinc pulses');ax11.Position(2) = ax11.Position(2)+0.12;
ax12=subplot(6,2,12);plot(-4:0.05:4,abs(M_y6(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');legend('10 sinc pulses');ax12.Position(2) = ax12.Position(2)+0.15;

