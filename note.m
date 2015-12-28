function [xx,tt] = note(f,dur) 

Fs = 8192; % frekans degeri (örnekleme)
tt = 0:1/Fs:((0.25-(1/Fs))/2); %t aralýgý
z = 0; %zarfýn ilk elemeaný

xx = sin(2*pi*f*tt);

if length(xx) == length(z)
    z=[linspace(0,1.5,Fs*dur*(2/8)),linspace(1.5,1,Fs*dur*(1/8)),linspace(1,1,Fs*dur*(4/8)),linspace(1,0,Fs*dur*(1/8))];
end
    
end