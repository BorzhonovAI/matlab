clc; 
clear; 
close all;
addpath('../functions');

%% sinus
fs = 48000;
t = 0:1/fs:10;

freqSin = 1000;

sig = complex(cos(2*pi*freqSin*t), sin(2*pi*freqSin)*t);

figure(1)
plot(t, real(sig));
title("sin");

% sound(real(sig), fs);

%% file

fileName = "bin/signalAM_fd_12000.iqi";
unitType = "int32";
fs = 12000;

sigAM = read_complex_vector(fileName, unitType);
t = 0:1/fs:(length(sigAM)-1)/fs;

figure(2)
plot(t, real(sigAM));
title("signal AM");

infoSig = zeros(1, length(sigAM));
for i = 1:length(sigAM)
    infoSig(i) = abs(sigAM(i));
end

figure(3)
plot(t, infoSig)
title("info from signal AM");

%% play freq from signalFM
fsSound = fs;

resFreq = resample(infoSig, fsSound, fs);
resFreq = normVector(resFreq);

sound(resFreq, fsSound);