[m_t,Fs]=audioread('korean.au');
Ts = 1/Fs; % sampling frequency, period

t = (1:length(m_t)) * Ts;
figure;
plot(t,m_t,'b')