%% Recall & precision
%{
 Name: Wasswa Shafik
 Email ID: wasswashafik@gmail.com
 
Description:This is recall & precision script.
%}

%% Starting function

function [label] = str2diseaselable( label_str )

switch label_str
    case 'disease free'
        label = 1;
    case 'Powdery Mildew'
        label = 2;
    case 'Septoria'
        label = 3;
    case 'rust'
        label = 4;
    otherwise
        error('Invalid input');
end

end