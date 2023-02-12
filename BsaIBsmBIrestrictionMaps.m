% BsaI and BsmBI restriction sites on SARS-cov viruses
% Nolan Tremelling
% nnt2109@columbia.edu
% 11 February 2023

%% Create axes

BsaI_SARS_CoV_2_x=[];
BsaI_SARS_CoV_2_y=[];
BsaI_SARS_TOR2_x=[];
BsaI_SARS_TOR2_y=[];
BsaI_SARS_Frankfurt_x=[];
BsaI_SARS_Frankfurt_y=[];
BsaI_SARS_AS_x=[];
BsaI_SARS_AS_y=[];
BsaI_SARS_C7_x=[];
BsaI_SARS_C7_y=[];

BsmBI_SARS_CoV_2_x=[33/186];
BsmBI_SARS_CoV_2_y=[0.1];
BsmBI_SARS_TOR2_x=[159/353];
BsmBI_SARS_TOR2_y=[0.2];
BsmBI_SARS_Frankfurt_x=[34/192];
BsmBI_SARS_Frankfurt_y=[0.3];
BsmBI_SARS_AS_x=[34/192];
BsmBI_SARS_AS_y=[0.4];
BsmBI_SARS_C7_x=[34/192];
BsmBI_SARS_C7_y=[0.5];

BsaI_x = [BsaI_SARS_CoV_2_x BsaI_SARS_TOR2_x BsaI_SARS_Frankfurt_x BsaI_SARS_AS_x BsaI_SARS_C7_x];
BsaI_y = [BsaI_SARS_CoV_2_y BsaI_SARS_TOR2_y BsaI_SARS_Frankfurt_y BsaI_SARS_AS_y BsaI_SARS_C7_y];
BsmBI_x = [BsmBI_SARS_CoV_2_x BsmBI_SARS_TOR2_x BsmBI_SARS_Frankfurt_x BsmBI_SARS_AS_x BsmBI_SARS_C7_x];
BsmBI_y = [BsmBI_SARS_CoV_2_y BsmBI_SARS_TOR2_y BsmBI_SARS_Frankfurt_y BsmBI_SARS_AS_y BsmBI_SARS_C7_y];



plot(BsaI_x, BsaI_y,'.', 'MarkerSize', 18, 'Color', 'red');
hold on;
plot(BsmBI_x, BsmBI_y,'.', 'MarkerSize', 18, 'Color', 'blue');

xlim([0 1])
ylim([-0.1 0.6])
grid on;
yticklabels({' ', ' ', 'SARS-CoV-2', 'SARS-TOR2', 'SARS-Frankfurt', 'SARS-AS', 'icSARS-C7-MA'})
xlabel('Genome position');
title('BsaI and BsmBI restriction sites in SARS-CoV viruses');
legend('BsmBI', 'BSaI');
hold off;
