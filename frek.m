function ff = frek(nota,oktav)

%% frek fonksiyonu

    %tüm notalari arraye koy
    
    notalar = {
        'Do',
        'Dod',
        'Re',
        'Mib',
        'Mi',
        'Fa',
        'Fad',
        'Sol',
        'Sold',
        'La',
        'Sib',
        'Si',
        'Sus'
    };

    referans = 16.35;  %donun oktav = 0daki degeri

    array_boyutu = length(notalar); %notalar arrayinin boyutunu al

    % http://stackoverflow.com/questions/8590478/how-to-check-whether-an-argument-is-supplied-in-function-call
  
 %% oktav yoksa
 
    % oktav parametresi belirlenmemisse default ata
    if ~exist('oktav','var') || isempty(oktav) 
      oktav = 4;
    end
    
 %% notayý bul
    for i = 1:array_boyutu %notalarý iterate ederek hangisine esit olduguna bak

        % stringcomparison = strcmp -> http://www.mathworks.com/help/matlab/ref/strcmp.html?requestedDomain=www.mathworks.com
        % checks whether the 2 given strings are identical.

        if strcmp(nota,notalar{i}) % verilen nota parametresi dizinin i.elemanýna esitmi (string comparison)
            ff = 2^oktav*(2^((i-1)/12)*referans); % frekans formulu.

        elseif strcmp(nota,notalar{13}) % eðer nota deðil de sus ise;
            ff = 0; % frekansý 0 belirle.

        end % if - end

    end % for - end

end % function - end
