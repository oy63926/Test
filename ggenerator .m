%参数
Eq_prime=1.15;
Xd_prime=0.32;
Xq=0.69;
%part1 网络部分
R=0.7;
X=0.5;


%交替求解

%guess 
Uq_guess=1; Ud_guess=0;
flag=1;
while flag
    I=(j*Uq_guess+Ud_guess)/(j*X+R);
    Iq=imag(I); Id=real(I);

    Uq=Eq_prime-Xd_prime*Id; 
    Ud=Xq*Iq; 
    
    if abs(Uq-Uq_guess)<1e-2 && abs(Ud-Ud_guess)<1e-2
        break;
    end
    Uq_guess=Uq;
    Ud_guess=Ud;
end




