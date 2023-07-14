function w = freqDetection(signal)
    I = real(signal)';
    Q = imag(signal)';
    dI = zeros(1, length(signal))';
    dQ = zeros(1, length(signal))';

    dI(2:end) = diff(I);
    dQ(2:end) = diff(Q);

    w = (dQ.*I-dI.*Q)./(I.^2+Q.^2);
    
end