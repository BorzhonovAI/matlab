function ret = plotSpectr(signal, fs, fc)
    if(nargin < 3)
        fc = 0;
    end
    
    ret = 0;

    y = fftshift(fft(signal));
    n = length(signal);          % number of samples
    f = (-n/2:n/2-1)*(fs/n);     % frequency range
    f = f + fc;
    power = 10*log10(abs(y).^2/n);    % power of the DFT

    figure(99)
    plot(f,power)
    grid on;
    title('Spectrum')
    xlabel('Frequency, Hz')
    ylabel('Power, dB')
end