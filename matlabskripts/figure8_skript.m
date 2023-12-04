
M1 = simulate_pulseqcest('NEW_p0287.seq','CSF_20mM.yaml');   
M2 = simulate_pulseqcest('NEW_p0574.seq','CSF_20mM.yaml');            
M3 = simulate_pulseqcest('NEW_p086.seq','CSF_20mM.yaml');               
M4 = simulate_pulseqcest('NEW_p1147.seq','CSF_20mM.yaml'); 

M5 = simulate_pulseqcest('NEW_p0287.seq','CSF_20mM_dB0.yaml');   
M6 = simulate_pulseqcest('NEW_p0574.seq','CSF_20mM_dB0.yaml');            
M7 = simulate_pulseqcest('NEW_p086.seq','CSF_20mM_dB0.yaml');               
M8 = simulate_pulseqcest('NEW_p1147.seq','CSF_20mM_dB0.yaml'); 

M13 = simulate_pulseqcest('NEW_p0287_spoiler.seq','CSF_20mM_dB0.yaml');   
M14 = simulate_pulseqcest('NEW_p0574_spoiler.seq','CSF_20mM_dB0.yaml');            
M15 = simulate_pulseqcest('NEW_p086_spoiler.seq','CSF_20mM_dB0.yaml');               
M16 = simulate_pulseqcest('NEW_p1147_spoiler.seq','CSF_20mM_dB0.yaml');   


figure
subplot(3,4,1);plot(-4:0.05:4,abs(M1(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 90^{\circ}');xlim([-4 4]);ylim([0 1]);
subplot(3,4,2);plot(-4:0.05:4,abs(M2(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 180^{\circ}');xlim([-4 4]);ylim([0 1]);
subplot(3,4,3);plot(-4:0.05:4,abs(M3(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 270^{\circ}');xlim([-4 4]);ylim([0 1]);
subplot(3,4,4);plot(-4:0.05:4,abs(M4(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 360^{\circ}');xlim([-4 4]);ylim([0 1]);
subplot(3,4,5);plot(-4:0.05:4,abs(M5(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 90^{\circ} with B0 Shift');xlim([-4 4]);ylim([0 1]);
subplot(3,4,6);plot(-4:0.05:4,abs(M6(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 180^{\circ} with B0 Shift');xlim([-4 4]);ylim([0 1]);
subplot(3,4,7);plot(-4:0.05:4,abs(M7(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 270^{\circ} with B0 Shift');xlim([-4 4]);ylim([0 1]);
subplot(3,4,8);plot(-4:0.05:4,abs(M8(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 360^{\circ} with B0 Shift');xlim([-4 4]);ylim([0 1]);
subplot(3,4,9);plot(-4:0.05:4,abs(M13(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 90^{\circ} with Spoiler and B0 Shift');xlim([-4 4]);ylim([0 1]);
subplot(3,4,10);plot(-4:0.05:4,abs(M14(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 180^{\circ} with Spoiler and B0 Shift');xlim([-4 4]);ylim([0 1]);
subplot(3,4,11);plot(-4:0.05:4,abs(M15(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 270^{\circ} with Spoiler and B0 Shift');xlim([-4 4]);ylim([0 1]);
subplot(3,4,12);plot(-4:0.05:4,abs(M16(2:end)));set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('FA = 360^{\circ} with Spoiler and B0 Shift');xlim([-4 4]);ylim([0 1]);

