function diffSignal = diffConj(signal, step)
    if(nargin < 2)
        step = 1;
    end
    
    diffSignal = zeros(1, length(signal)-step);

    for i = 1:length(signal)-step
        diffSignal(i) = signal(i+step)*conj(signal(i));
    end

end