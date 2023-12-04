%% Figure 6
% Simulation of Sidebands at different T1/T2 relaxation times

% Go to the example folder
load('delay_vs_spoiler.mat')
slice=6;

figure;
imshow(M0_stack(:,:,slice,1),[1 2000]); title('Zspec');colormap hsv;colorbar;
[aa bb]=ginput(1);aa=round(aa);bb=round(bb);
roi = imrect(gca, [aa bb 1 1]);
bw1 = createMask(roi)

for op=1:161
        stick1(op)=squeeze(temp1(bb,aa,slice,op));
        stick2(op)=squeeze(temp2(bb,aa,slice,op));
        stick3(op)=squeeze(temp3(bb,aa,slice,op));
end


figure
hold on;
plot(-4:0.05:4,stick1);set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('StandadPhase')
plot(-4:0.05:4,stick2);set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('StandardPhase_Spoiler')
plot(-4:0.05:4,stick3);set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('QuadPhase_Spoiler')
hold off
legend('Standard','Standard Spoiler','QuadSpoiler')

%oder

figure
subplot(1,3,1)
plot(-4:0.05:4,stick1);set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('StandadPhase')
subplot(1,3,2)
plot(-4:0.05:4,stick2);set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('StandardPhase_Spoiler')
subplot(1,3,3)
plot(-4:0.05:4,stick3);set(gca,'XDir','reverse');ylabel('Z(\Delta\omega)');xlabel('\Delta\omega [ppm]');title('QuadPhase_Spoiler')
hold off
legend('Standard','Standard Spoiler','QuadSpoiler')
