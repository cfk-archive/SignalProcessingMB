function [ff] = frek(nota,oktav)

% notalarý bir arraye at
notalar = ['A','B','C','D','E','F','G','a','b','d','e','f'];

% referans
ref = 16.35;

% arrayýn boyutu
nsize = length(notalar);

% oktavlarý gez [0-8]
for oIndex=0:8
    % parametre oktav gezerken denk gelirse
       if oIndex == oktav
           % notalarýn boyutu kadar for
           for j=1:nsize
               if nota==char(notalar(j))
                    ff=2^oIndex*(2^((j-1)/12)*ref)
               end  
            end
        end
    end
end

% Örnek Çýktý

    % frek('A',0);
    % ff = 16.3500