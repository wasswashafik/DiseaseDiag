%% Disease lable
%{
 Name: Wasswa Shafik
 Email ID: wasswashafik@gmail.com
 
Description:This is disease lable script.
%}

%% Starting function

function label_str = diseaselable2str( label )

c = {'disease free','Powdery Mildew', 'Septoria', 'rust'};

label_str = c(label);

end