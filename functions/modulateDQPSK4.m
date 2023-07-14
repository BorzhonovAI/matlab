function modulated_signal = modulateDQPSK4(bits)
    phase = 0;
    size = length(bits);
    modulated_signal(1:(size/2)) = complex(1, 1);
    j = 1;

    for i = 1:2:size
        if (bits(i) == 1) && (bits(i+1) == 1)
            dphase = -3*pi/4;
        end
        if (bits(i) == 1) && (bits(i+1) == 0)
        dphase = -pi/4;
        end   
        if (bits(i) == 0) && (bits(i+1) == 1)
        dphase = 3*pi/4;
        end
        if (bits(i) == 0) && (bits(i+1) == 0)
            dphase = pi/4;
        end
    
        phase = phase + dphase;
        modulated_signal(j) = complex(cos(phase), sin(phase));
        j = j + 1;
   
    end
end
