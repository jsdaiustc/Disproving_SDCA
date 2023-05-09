function Pm=music_linear(R,N_alfa,reslu)

M=length(R);
[U,T]=eig(R);
lam=diag(T);
[~,I]=sort(lam,'descend');
U=U(:,I);
U=U(:,N_alfa+1:M);
alfa1=-90:reslu:90;
alfa=alfa1(:)*pi/180;
L=(0:M-1)';
for l=1:length(alfa1)    
    a=exp(-1i*pi*sin(alfa(l))*L);
    tmp=a'*U;
    Pm(l)=1/(tmp*tmp');
end
temp=Pm-min(Pm);
Pm=temp/max(temp);