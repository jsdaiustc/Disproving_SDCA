clear;
close all;
Snap=200;                  % The number of snapshots
position=[0,1,2,3,10,17];  % sensor's position set
N=length(position);        % The number of sensors

SNR=10;
alpha=10*rand(1,2) +   [-20,20];
N_alpha=length(alpha);
[X_idea,X_prac]=signal(N,position,alpha,SNR, Snap);



%%     ss_music  with simplified model %%%%%%%%%%%%%%%%%%%%%%%%%%
DOA_SS_idea=ss_music(X_idea,Snap,position,N_alpha);
MSE_idea=DOA_SS_idea'-alpha

%%     ss_music with practical model   %%%%%%%%%%%%%%%%%%%%%%%%%%
DOA_SS_prac=ss_music(X_prac,Snap,position,N_alpha);
MSE_prac=DOA_SS_prac'-alpha

