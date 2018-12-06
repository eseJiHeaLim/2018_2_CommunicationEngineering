m=[1 0 1 1 0 0 1 1 0 1 0 0];
res=[];
l=length(m);
n=l/4;
m=reshape(m,4,n)';
m=gf(m);
for i=1:3
    temp_m=m(1,:);
    c2=bitxor(bitxor(temp_m(1),temp_m(3)),temp_m(4));
    c1=bitxor(bitxor(temp_m(1),temp_m(2)),temp_m(3));
    c0=bitxor(bitxor(temp_m(1),temp_m(2)),temp_m(4));
end

%%
m=[1 0 1 1 0 0 1 1 0 1 0 0];
res=[];
l=length(m);
n=l/4;
m=reshape(m,4,n)';

for i=1:3
    temp_m=m(i,:);
    c2=xor(xor(temp_m(1),temp_m(3)),temp_m(4));
    c1=xor(xor(temp_m(1),temp_m(2)),temp_m(3));
    c0=xor(xor(temp_m(1),temp_m(2)),temp_m(4));
    disp([temp_m c2 c1 c0])
end
