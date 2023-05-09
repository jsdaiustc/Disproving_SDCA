function [X_idea,X_prac]=signal(M,position,theta,SNR,K)

N_theta=length(theta);
phi=rand(N_theta,1)*2*pi;     % initial phase
G=diag(exp(1i*phi));

A=exp(-1i*pi*position'*sin(theta*pi/180));
Vj=sqrt((   (10).^(SNR/10)   ));
S=Vj*randn(N_theta,K);        % real-valued sources
noise=sqrt(1/2)*(randn(M,K)+1i*randn(M,K));

X_idea=A*S+noise;
X_prac=A*G*S+noise;
