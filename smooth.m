function X=smooth(R,M)
for i=1:M
    J(i,M-i+1)=1;
end
Rf=zeros(M,M);
P=length(R)-M+1;
for i=1:P
    Rf=Rf+R(i:i+M-1,i:i+M-1);
end
X=Rf/P;

