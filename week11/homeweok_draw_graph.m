%n은 인덱스임 
EbNodBs=1:2:10;
n=length(EbNodBs);
ber=zeros(n,1);
for n=1:n
    
    EbNodB=EbNodBs(n);
    sim('qpsk.slx');
    ber(n)=BEPs.data(2);
end

semilogy(EbNodBs,ber);
grid on;

%% 11주차 과제 제출 코드 _ Plotting BER graph

SNRdBs = 0:10;
n      = length(SNRdBs);
BERs   = zeros(1,n);
for k=1:n
    snr = SNRdBs(k);
    sim('qpsk');
    BERs(k) =BEPs.data(2);
end
figure;
BERsTheory = berawgn( SNRdBs, 'psk', 2, 'nondiff');
semilogy( SNRdBs, BERsTheory, 'r-');
