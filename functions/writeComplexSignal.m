function ret = writeComplexSignal(signal, path, type)
    ret = 0;
    
    fout = fopen(path, 'wb');
    for i = 1:length(signal)
        fwrite(fout, real(signal(i)), type);
        fwrite(fout, imag(signal(i)), type);
    end
    fclose(fout);
end