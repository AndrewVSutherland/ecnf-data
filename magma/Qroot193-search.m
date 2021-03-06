print "Field 2.2.193.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 48);
OK := Integers(K);
Plist := [];
Append(~Plist,(9*w + 58)*OK);
Append(~Plist,(9*w - 67)*OK);
Append(~Plist,(2*w - 15)*OK);
Append(~Plist,(2*w + 13)*OK);
Append(~Plist,(186*w - 1385)*OK);
Append(~Plist,(-186*w - 1199)*OK);
Append(~Plist,(38*w + 245)*OK);
Append(~Plist,(-38*w + 283)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(16*w - 119)*OK);
Append(~Plist,(-16*w - 103)*OK);
Append(~Plist,(4*w + 25)*OK);
Append(~Plist,(4*w - 29)*OK);
Append(~Plist,(-12*w + 89)*OK);
Append(~Plist,(-12*w - 77)*OK);
Append(~Plist,(92*w + 593)*OK);
Append(~Plist,(-92*w + 685)*OK);
Append(~Plist,(204*w - 1519)*OK);
Append(~Plist,(-204*w - 1315)*OK);
Append(~Plist,(24*w - 179)*OK);
Append(~Plist,(24*w + 155)*OK);
Append(~Plist,(-428*w - 2759)*OK);
Append(~Plist,(-428*w + 3187)*OK);
Append(~Plist,(298*w - 2219)*OK);
Append(~Plist,(298*w + 1921)*OK);
Append(~Plist,(818*w - 6091)*OK);
Append(~Plist,(-818*w - 5273)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(6*w + 37)*OK);
Append(~Plist,(6*w - 43)*OK);
Append(~Plist,(-150*w - 967)*OK);
Append(~Plist,(-150*w + 1117)*OK);
Append(~Plist,(-42*w - 271)*OK);
Append(~Plist,(-42*w + 313)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-1692*w - 10907)*OK);
Append(~Plist,(-1934*w - 12467)*OK);
Append(~Plist,(132*w - 983)*OK);
Append(~Plist,(132*w + 851)*OK);
Append(~Plist,(576*w + 3713)*OK);
Append(~Plist,(-576*w + 4289)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(-28*w + 209)*OK);
Append(~Plist,(-28*w - 181)*OK);
Append(~Plist,(-6*w - 41)*OK);
Append(~Plist,(6*w - 47)*OK);
Append(~Plist,(78*w - 581)*OK);
Append(~Plist,(78*w + 503)*OK);
Append(~Plist,(70*w - 521)*OK);
Append(~Plist,(-70*w - 451)*OK);
Append(~Plist,(1320*w - 9829)*OK);
Append(~Plist,(1320*w + 8509)*OK);
Append(~Plist,(14*w + 89)*OK);
Append(~Plist,(14*w - 103)*OK);
Append(~Plist,(-18*w + 133)*OK);
Append(~Plist,(-18*w - 115)*OK);
Append(~Plist,(-12*w - 79)*OK);
Append(~Plist,(-12*w + 91)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(-6*w + 41)*OK);
Append(~Plist,(-6*w - 35)*OK);
Append(~Plist,(-240*w - 1547)*OK);
Append(~Plist,(-240*w + 1787)*OK);
Append(~Plist,(-4*w - 31)*OK);
Append(~Plist,(4*w - 35)*OK);
Append(~Plist,(-4*w + 23)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(-2194*w - 14143)*OK);
Append(~Plist,(-2808*w - 18101)*OK);
Append(~Plist,(-10*w + 77)*OK);
Append(~Plist,(-10*w - 67)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(-6*w + 49)*OK);
Append(~Plist,(6*w + 43)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(-1804*w + 13433)*OK);
Append(~Plist,(-1804*w - 11629)*OK);
Append(~Plist,(-1078*w - 6949)*OK);
Append(~Plist,(-1078*w + 8027)*OK);
Append(~Plist,(258*w - 1921)*OK);
Append(~Plist,(258*w + 1663)*OK);
Append(~Plist,(594*w - 4423)*OK);
Append(~Plist,(-594*w - 3829)*OK);
Append(~Plist,(-82*w - 529)*OK);
Append(~Plist,(82*w - 611)*OK);
Append(~Plist,(50*w + 323)*OK);
Append(~Plist,(50*w - 373)*OK);
Append(~Plist,(-8*w + 55)*OK);
Append(~Plist,(-8*w - 47)*OK);
Append(~Plist,(-522*w + 3887)*OK);
Append(~Plist,(522*w + 3365)*OK);
Append(~Plist,(-4*w - 13)*OK);
Append(~Plist,(4*w - 17)*OK);
Append(~Plist,(84*w + 541)*OK);
Append(~Plist,(84*w - 625)*OK);
effort := 400;
ECSearch := procedure(class_label, N, aplist);
print "Isogeny class ", class_label;
goodP := [P: P in Plist | Valuation(N,P) eq 0];
goodP := [goodP[i]: i in [1..#(aplist)]];
curves := EllipticCurveSearch(N,effort : Primes:=goodP, Traces:=aplist);
curves := [E: E in curves | &and[TraceOfFrobenius(E,goodP[i]) eq aplist[i] : i in [1..#(aplist)]]];
if #curves eq 0 then print "No curve found"; end if;
for E in curves do;
 a1,a2,a3,a4,a6:=Explode(aInvariants(E));
 printf "Curve [%o,%o,%o,%o,%o]\n",a1,a2,a3,a4,a6;
 end for;
end procedure;
SetColumns(0);

ECSearch("2.1-a",(9*w + 58)*OK,[0, 2, -1, -3, 0, 3, -6, -9, 0, -9, 6, -3, 3, 6, -14, -5, 6, 12, -12, 18, -6, 0, -12, -15, 16, -2, 6, 6, 15]);
ECSearch("2.2-a",(9*w - 67)*OK,[0, -1, 2, 0, -3, -6, 3, -9, -9, 0, -3, 6, 6, 3, -5, -14, 12, 6, 18, -12, 0, -6, -15, -12, -2, 16, 6, 15, 6]);
ECSearch("4.2-a",(65*w - 484)*OK,[0, -2, 1, 1, -2, -3, 0, 1, 10, 1, 10, 1, 9, 12, 8, -13, -6, -12, -14, -8, -12, 12, -6, -15, -10, -10, -2, 0, -21]);
ECSearch("4.3-a",(65*w + 419)*OK,[0, 1, -2, -2, 1, 0, -3, 1, 1, 10, 1, 10, 12, 9, -13, 8, -12, -6, -8, -14, 12, -12, -15, -6, -10, -10, -2, -21, 0]);
ECSearch("6.1-a",(-w - 6)*OK,[-2, -1, -5, -2, -7, 2, -7, 4, 1, 8, 7, -15, 8, -16, -9, -6, -4, -2, -14, -12, -10, -10, -3, -16, 6, -14, 0, -15]);
ECSearch("6.1-b",(-w - 6)*OK,[0, 1, 1, -2, -3, 6, 1, -2, 1, -8, -11, -3, 6, -10, 11, 0, 12, 10, 10, -18, -12, -18, -3, -10, -4, 16, -18, 3]);
ECSearch("6.4-a",(w - 7)*OK,[-2, -1, -2, -5, 2, -7, -7, 1, 4, 7, 8, 8, -15, -9, -16, -4, -6, -14, -2, -10, -12, -3, -10, 6, -16, -14, -15, 0]);
ECSearch("6.4-b",(w - 7)*OK,[0, 1, -2, 1, 6, -3, 1, 1, -2, -11, -8, 6, -3, 11, -10, 12, 0, 10, 10, -12, -18, -3, -18, -4, -10, 16, 3, -18]);
ECSearch("7.1-a",(186*w - 1385)*OK,[-2, 0, 2, -3, -1, 9, 0, -8, 4, 0, -4, 0, 4, -3, 0, 8, -2, -7, -6, 1, -12, 9, -7, 17, -6, -11, 19, -13, -8]);
ECSearch("7.2-a",(-186*w - 1199)*OK,[0, -2, -3, 2, -1, 0, 9, -8, 0, 4, 0, -4, -3, 4, 8, 0, -7, -2, 1, -6, 9, -12, 17, -7, -11, -6, 19, -8, -13]);
ECSearch("8.1-a",(18*w + 116)*OK,[3, 0, 2, -1, -2, 7, 1, 3, 6, -1, -4, 10, -5, 5, 2, 4, -8, -10, 2, 0, -18, -5, -14, 4, 10, -16, 9, 18]);
ECSearch("8.1-b",(18*w + 116)*OK,[1, -2, -4, -1, -6, 9, -1, 5, -4, 11, 2, 6, -3, 5, 2, 12, -6, 14, 8, 0, 6, -9, 0, 14, -4, -10, -15, -18]);
ECSearch("8.3-a",(-w + 8)*OK,[0, 2, 3, 5, -4, -1, 6, 3, -4, -5, 6, -3, 15, 10, -2, 3, 6, -12, 8, -18, 6, -8, 8, 9, -4, -10, -2, -6, 7]);
ECSearch("8.2-a",(18*w - 134)*OK,[0, 3, -1, 2, 7, -2, 1, 6, 3, -4, -1, -5, 10, 2, 5, -8, 4, 2, -10, -18, 0, -14, -5, 10, 4, -16, 18, 9]);
ECSearch("8.2-b",(18*w - 134)*OK,[-2, 1, -1, -4, 9, -6, -1, -4, 5, 2, 11, -3, 6, 2, 5, -6, 12, 8, 14, 6, 0, 0, -9, -4, 14, -10, -18, -15]);
ECSearch("8.4-a",(w + 7)*OK,[0, 3, 2, -4, 5, 6, -1, 3, -5, -4, -3, 6, 10, 15, 3, -2, -12, 6, -18, 8, -8, 6, 9, 8, -10, -4, -2, 7, -6]);
ECSearch("9.1-a",(3)*OK,[0, 0, -3, -3, 6, 6, 6, 0, 0, -3, -3, 6, 6, -5, -5, 6, 6, 3, 3, -12, -12, 6, 6, 7, 7, 21, 0, 0]);
ECSearch("9.1-b",(3)*OK,[1, 1, -4, -4, 0, 0, 6, -4, -4, -8, -8, 12, 12, 12, 12, -4, -4, 2, 2, 10, 10, -12, -12, -14, -14, 18, 20, 20]);
ECSearch("12.1-a",(4*w - 30)*OK,[3, 0, 1, 3, -1, 3, -10, 7, -4, 4, 0, -3, -12, 2, -2, 11, -4, 2, 4, -8, 16, 6, 3, 0, -6, 8, -5]);
ECSearch("12.1-b",(4*w - 30)*OK,[2, 0, 0, -6, 6, -6, 0, 6, -6, 0, 0, 0, 4, 4, 0, 0, 12, 0, 6, 12, 18, 12, -2, 16, -12, 0, -12]);
ECSearch("12.1-c",(4*w - 30)*OK,[0, 0, 4, 0, -4, 6, 8, -8, -4, -8, 12, 12, 12, -4, 4, 8, 2, 2, 10, -2, 4, 12, 18, -18, -6, 20, 16]);
ECSearch("12.1-d",(4*w - 30)*OK,[-1, 0, 3, 3, -3, 3, -6, -9, -12, 12, 0, 3, 4, -14, -6, -9, -12, 6, -12, 0, 0, -18, -11, 16, 6, 0, 15]);
ECSearch("12.1-e",(4*w - 30)*OK,[-2, 0, -4, -2, -6, -2, 0, 2, 6, 4, 0, -8, -12, 12, 8, -4, -4, -8, 14, -8, 6, -4, -2, 20, 4, 8, 0]);
ECSearch("12.1-f",(4*w - 30)*OK,[3, 4, -3, 1, 1, 1, -2, 5, -4, -4, -12, -5, -16, -2, 14, -7, -16, -2, -12, 16, 8, -6, 13, 20, -10, -20, 1]);
ECSearch("12.1-g",(4*w - 30)*OK,[-1, 4, -1, -7, 3, -7, 2, -3, 4, 4, 4, -11, 8, -2, -6, -11, -16, -6, -12, 8, -8, 2, 11, -4, 10, -4, 21]);
ECSearch("12.4-a",(-7*w - 45)*OK,[-1, -1, -1, -2, 3, -2, 5, 10, -9, 0, 7, -9, -14, -14, -3, 12, 12, -18, -2, 14, -8, -2, 3, -2, 8, -4, 10, -7]);
ECSearch("12.2-a",(4*w + 26)*OK,[3, 1, 0, -1, 3, 3, 7, -10, 4, -4, -3, 0, 2, -12, 11, -2, 2, -4, -8, 4, 6, 16, 0, 3, -6, -5, 8]);
ECSearch("12.2-b",(4*w + 26)*OK,[2, 0, 0, 6, -6, -6, 6, 0, 0, -6, 0, 0, 4, 4, 0, 0, 0, 12, 12, 6, 12, 18, 16, -2, -12, -12, 0]);
ECSearch("12.2-c",(4*w + 26)*OK,[0, 4, 0, -4, 0, 6, -8, 8, -8, -4, 12, 12, -4, 12, 8, 4, 2, 2, -2, 10, 12, 4, -18, 18, -6, 16, 20]);
ECSearch("12.2-d",(4*w + 26)*OK,[-1, 3, 0, -3, 3, 3, -9, -6, 12, -12, 3, 0, -14, 4, -9, -6, 6, -12, 0, -12, -18, 0, 16, -11, 6, 15, 0]);
ECSearch("12.2-e",(4*w + 26)*OK,[-2, -4, 0, -6, -2, -2, 2, 0, 4, 6, -8, 0, 12, -12, -4, 8, -8, -4, -8, 14, -4, 6, 20, -2, 4, 0, 8]);
ECSearch("12.2-f",(4*w + 26)*OK,[3, -3, 4, 1, 1, 1, 5, -2, -4, -4, -5, -12, -2, -16, -7, 14, -2, -16, 16, -12, -6, 8, 20, 13, -10, 1, -20]);
ECSearch("12.2-g",(4*w + 26)*OK,[-1, -1, 4, 3, -7, -7, -3, 2, 4, 4, -11, 4, -2, 8, -11, -6, -6, -16, 8, -12, 2, -8, -4, 11, 10, 21, -4]);
ECSearch("12.5-a",(7*w - 52)*OK,[-1, -1, -2, -1, -2, 3, 5, -9, 10, 7, 0, -14, -9, -3, -14, 12, 12, -2, -18, -8, 14, 3, -2, 8, -2, -4, -7, 10]);
ECSearch("14.2-a",(11*w - 82)*OK,[-2, 0, -1, 5, -3, 0, -5, 6, 7, 6, -1, 9, -14, -10, -15, -4, 4, -14, -12, 12, -12, 8, -7, -8, 12, 4, -14, -13]);
ECSearch("14.3-a",(-11*w - 71)*OK,[-2, -1, 0, 5, 0, -3, -5, 7, 6, -1, 6, -14, 9, -15, -10, 4, -4, -12, -14, -12, 12, -7, 8, 12, -8, 4, -13, -14]);
ECSearch("16.1-a",(4)*OK,[-2, 3, 3, -2, 3, 8, -3, 2, 7, 2, 7, 3, -12, 0, 5, -14, -4, 14, -16, 4, 4, 10, 15, -6, -6, -6, 8, 13]);
ECSearch("16.1-b",(4)*OK,[3, -2, -2, 3, 8, 3, -3, 7, 2, 7, 2, -12, 3, 5, 0, -4, -14, -16, 14, 4, 4, 15, 10, -6, -6, -6, 13, 8]);
ECSearch("16.2-a",(130*w - 968)*OK,[-1, 0, 2, -1, 2, 3, -3, -1, -2, -9, 0, 6, 7, 13, -6, -12, 0, 2, 18, 0, 10, -13, 6, -16, -10, -8, -15, 22]);
ECSearch("16.4-a",(5*w + 32)*OK,[0, -2, 3, 5, 4, -1, -6, 3, 4, -5, -6, -3, 15, -10, 2, 3, -6, -12, -8, 18, -6, 8, -8, 9, 4, 10, 2, 6, 7]);
ECSearch("16.4-b",(5*w + 32)*OK,[0, 2, 1, 1, 2, -3, 0, 1, -10, 1, -10, 1, 9, -12, -8, -13, 6, -12, 14, 8, 12, -12, 6, -15, 10, 10, 2, 0, -21]);
ECSearch("16.4-c",(5*w + 32)*OK,[0, -2, -1, -3, 0, 3, 6, -9, 0, -9, -6, -3, 3, -6, 14, -5, -6, 12, 12, -18, 6, 0, 12, -15, -16, 2, -6, -6, 15]);
ECSearch("16.3-a",(130*w + 838)*OK,[0, -1, -1, 2, 3, 2, -3, -2, -1, 0, -9, 7, 6, -6, 13, 0, -12, 18, 2, 10, 0, 6, -13, -10, -16, -8, 22, -15]);
ECSearch("16.5-a",(5*w - 37)*OK,[0, 3, -2, 4, 5, -6, -1, 3, -5, 4, -3, -6, -10, 15, 3, 2, -12, -6, 18, -8, 8, -6, 9, -8, 10, 4, 2, 7, 6]);
ECSearch("16.5-b",(5*w - 37)*OK,[0, 1, 2, 2, 1, 0, -3, 1, 1, -10, 1, -10, -12, 9, -13, -8, -12, 6, 8, 14, -12, 12, -15, 6, 10, 10, 2, -21, 0]);
ECSearch("16.5-c",(5*w - 37)*OK,[0, -1, -2, 0, -3, 6, 3, -9, -9, 0, -3, -6, -6, 3, -5, 14, 12, -6, -18, 12, 0, 6, -15, 12, 2, -16, -6, 15, -6]);
ECSearch("18.1-a",(27*w + 174)*OK,[2, 4, -1, 7, -3, -1, -6, 4, 10, 0, 7, 12, -3, 7, 9, -6, -2, -12, -17, -7, 18, 13, 8, -2, -4, -4, -14]);
ECSearch("18.1-b",(27*w + 174)*OK,[-2, 0, 3, 3, -3, 3, -6, -4, -2, -8, -5, 8, -11, -9, 9, 6, 18, -4, 3, -15, 10, -3, 4, 6, -4, -20, -10]);
ECSearch("18.1-c",(27*w + 174)*OK,[1, 0, 0, 0, 0, -6, 0, 8, 4, 4, 4, -4, 4, -12, -12, -12, 6, -10, -6, -6, 4, -12, -14, -6, 14, 4, 20]);
ECSearch("18.1-d",(27*w + 174)*OK,[-1, -2, 2, 4, 0, -4, 6, 10, -2, 6, 4, 12, 12, 4, 0, 12, -8, 0, 10, 2, 12, -8, -10, -2, -4, -4, 16]);
ECSearch("18.1-e",(27*w + 174)*OK,[0, -2, 1, -9, 3, 1, -2, -8, -8, -8, -9, -6, -7, -13, 15, -12, 16, -8, 3, 15, -6, 15, 14, -10, -20, 12, 0]);
ECSearch("18.1-f",(27*w + 174)*OK,[1, -2, -2, -4, -4, -4, -2, -2, -10, -2, -12, -4, -4, 12, 12, -4, 4, 4, -6, 2, -4, -12, 14, -18, -8, 0, 0]);
ECSearch("18.3-a",(47*w + 303)*OK,[0, 2, 0, 3, 6, 3, 9, 9, 0, 3, -6, -6, 3, -5, -14, 12, -6, -18, 12, 0, -6, 15, -12, -2, 16, -6, 15, -6]);
ECSearch("18.4-a",(w + 5)*OK,[0, 1, 2, -1, 6, 3, -1, -1, 2, 11, 8, 6, 3, 11, -10, -12, 0, -10, -10, -12, 18, -3, 18, -4, -10, -16, -3, -18]);
ECSearch("18.4-b",(w + 5)*OK,[-2, -1, 2, 5, 2, 7, 7, -1, -4, -7, -8, 8, 15, -9, -16, 4, -6, 14, 2, -10, 12, -3, 10, 6, -16, 14, 15, 0]);
ECSearch("18.4-c",(w + 5)*OK,[0, -1, 0, 3, -6, -3, 9, 9, 0, 3, -6, 6, -3, -5, -14, -12, 6, -18, 12, 0, 6, -15, 12, -2, 16, -6, -15, 6]);
ECSearch("18.2-a",(27*w - 201)*OK,[2, -1, 4, -3, 7, -1, 4, -6, 0, 10, 12, 7, 7, -3, -6, 9, -12, -2, -7, -17, 13, 18, -2, 8, -4, -14, -4]);
ECSearch("18.2-b",(27*w - 201)*OK,[-2, 3, 0, -3, 3, 3, -4, -6, -8, -2, 8, -5, -9, -11, 6, 9, -4, 18, -15, 3, -3, 10, 6, 4, -4, -10, -20]);
ECSearch("18.2-c",(27*w - 201)*OK,[1, 0, 0, 0, 0, -6, 8, 0, 4, 4, -4, 4, -12, 4, -12, -12, -10, 6, -6, -6, -12, 4, -6, -14, 14, 20, 4]);
ECSearch("18.2-d",(27*w - 201)*OK,[-1, 2, -2, 0, 4, -4, 10, 6, 6, -2, 12, 4, 4, 12, 12, 0, 0, -8, 2, 10, -8, 12, -2, -10, -4, 16, -4]);
ECSearch("18.2-e",(27*w - 201)*OK,[0, 1, -2, 3, -9, 1, -8, -2, -8, -8, -6, -9, -13, -7, -12, 15, -8, 16, 15, 3, 15, -6, -10, 14, -20, 0, 12]);
ECSearch("18.2-f",(27*w - 201)*OK,[1, -2, -2, -4, -4, -4, -2, -2, -2, -10, -4, -12, 12, -4, -4, 12, 4, 4, 2, -6, -12, -4, -18, 14, -8, 0, 0]);
ECSearch("18.6-a",(-47*w + 350)*OK,[0, 2, 3, 0, 3, 6, 9, 0, 9, -6, 3, 3, -6, -14, -5, -6, 12, 12, -18, -6, 0, -12, 15, 16, -2, -6, -6, 15]);
ECSearch("18.5-a",(w - 6)*OK,[0, 1, -1, 2, 3, 6, -1, 2, -1, 8, 11, 3, 6, -10, 11, 0, -12, -10, -10, 18, -12, 18, -3, -10, -4, -16, -18, -3]);
ECSearch("18.5-b",(w - 6)*OK,[-2, -1, 5, 2, 7, 2, 7, -4, -1, -8, -7, 15, 8, -16, -9, -6, 4, 2, 14, 12, -10, 10, -3, -16, 6, 14, 0, 15]);
ECSearch("18.5-c",(w - 6)*OK,[0, -1, 3, 0, -3, -6, 9, 0, 9, -6, 3, -3, 6, -14, -5, 6, -12, 12, -18, 6, 0, 12, -15, 16, -2, -6, 6, -15]);
ECSearch("21.1-a",(20*w - 149)*OK,[2, 1, -1, -3, 4, 1, 3, -1, 10, -5, -2, 10, -3, -3, 14, -4, -8, -8, 14, -12, 8, -7, -16, -8, 0, 0, 3, -6]);
ECSearch("21.1-b",(20*w - 149)*OK,[1, -2, -1, -3, 5, 1, 3, -2, -4, 8, 5, 14, 0, -12, -10, 2, 5, 2, 7, 18, -10, 4, 20, 10, 6, -18, -3, -18]);
ECSearch("21.2-a",(74*w + 477)*OK,[0, 0, 1, 1, 3, 0, -2, 10, -8, -8, 4, 6, -3, -10, 2, -6, -9, 10, 7, 12, -3, -9, -3, 2, 17, 1, 15, -12]);
ECSearch("21.4-a",(20*w + 129)*OK,[1, 2, -1, -3, 1, 4, 3, 10, -1, -2, -5, -3, 10, 14, -3, -8, -4, 14, -8, 8, -12, -16, -7, 0, -8, 0, -6, 3]);
ECSearch("21.4-b",(20*w + 129)*OK,[-2, 1, -1, -3, 1, 5, 3, -4, -2, 5, 8, 0, 14, -10, -12, 5, 2, 7, 2, -10, 18, 20, 4, 6, 10, -18, -18, -3]);
ECSearch("21.3-a",(-74*w + 551)*OK,[0, 0, 1, 1, 0, 3, -2, -8, 10, 4, -8, -3, 6, 2, -10, -9, -6, 7, 10, -3, 12, -3, -9, 17, 2, 1, -12, 15]);
ECSearch("23.1-a",(38*w + 245)*OK,[-1, -2, -1, -2, -2, 2, -8, -4, -8, -7, 7, 9, 6, 3, -14, 2, 2, -4, 2, 10, 14, -14, -7, -20, -17, 10, 9, -7, 6]);
ECSearch("23.1-b",(38*w + 245)*OK,[-2, 1, -1, -2, 2, 1, -5, 7, 5, -2, -1, 0, -6, 15, -5, 2, -4, 4, -14, 2, 10, -14, -5, 16, -14, 4, -18, 5, 0]);
ECSearch("23.2-a",(-38*w + 283)*OK,[-2, -1, -2, -1, 2, -2, -8, -4, -7, -8, 9, 7, 3, 6, 2, -14, -4, 2, 10, 2, -14, 14, -20, -7, 10, -17, 9, 6, -7]);
ECSearch("23.2-b",(-38*w + 283)*OK,[1, -2, -2, -1, 1, 2, -5, 7, -2, 5, 0, -1, 15, -6, 2, -5, 4, -4, 2, -14, -14, 10, 16, -5, 4, -14, -18, 0, 5]);
ECSearch("24.1-a",(-2*w - 12)*OK,[1, -2, 1, -9, -3, 1, 4, -5, -8, 4, 12, -9, -4, -16, -12, 15, 4, 4, -12, 18, 12, 0, 11, -10, 4, -18, -9]);
ECSearch("24.2-a",(502*w + 3236)*OK,[1, -2, 1, -6, 3, 1, -5, -8, 1, -8, -12, 15, -7, -4, -12, -18, -2, 10, 6, 0, 3, -18, -10, -4, 10, 15, -12]);
ECSearch("24.2-b",(502*w + 3236)*OK,[0, 3, -2, -5, 7, 7, 8, -2, -4, 8, -2, 3, -11, -7, -4, 11, -8, -4, 1, 3, -3, 14, 2, 10, 20, 16, -20]);
ECSearch("24.2-c",(502*w + 3236)*OK,[-3, -2, -3, 2, 3, 9, -5, -4, -11, 8, 0, -9, -7, 0, -4, -14, 14, 2, -14, 4, 3, -2, 18, 0, -18, 19, 8]);
ECSearch("24.5-a",(29*w - 216)*OK,[2, -1, 3, 2, 1, 6, 1, 4, -7, 8, -1, -7, 8, 8, -9, 6, -4, 10, 14, -12, -6, 10, -3, 16, 10, 6, 0, -7]);
ECSearch("24.5-b",(29*w - 216)*OK,[0, 0, 2, -1, -7, 3, 3, -10, -8, 0, 12, -15, -2, -11, 3, -9, -12, -4, 0, 9, 7, -10, 3, 14, 14, 4, -12, 16]);
ECSearch("24.5-c",(29*w - 216)*OK,[-1, 0, 2, 0, 6, 0, -2, -4, -6, -8, -2, 6, 4, -12, 4, 12, 2, 16, 4, 0, 14, 12, 8, -6, -10, -12, 12, -6]);
ECSearch("24.6-a",(w + 8)*OK,[-1, -1, -2, 3, 2, -9, -7, -5, -2, -5, -4, 10, 3, 13, 6, 4, 0, 18, 6, 12, -18, 3, -6, 16, 14, -16, 13, 2]);
ECSearch("24.6-b",(w + 8)*OK,[-1, -1, 5, -4, 9, 5, -7, 9, -2, -12, -4, 3, -4, 6, -8, -3, 14, -10, -8, -16, -4, 10, 8, -12, -7, -2, 13, -12]);
ECSearch("24.6-c",(w + 8)*OK,[-1, -1, -2, -5, -6, -1, 1, 3, -10, 3, 4, -6, 11, -3, -2, -12, -8, 10, -10, 4, 14, -13, 2, 0, 14, 8, -11, 18]);
ECSearch("24.4-a",(2*w - 14)*OK,[1, 1, -2, -3, -9, 1, -5, 4, 4, -8, -9, 12, -16, -4, 15, -12, 4, 4, 18, -12, 0, 12, -10, 11, 4, -9, -18]);
ECSearch("24.3-a",(-502*w + 3738)*OK,[1, 1, -2, 3, -6, 1, -8, -5, -8, 1, 15, -12, -4, -7, -18, -12, 10, -2, 0, 6, -18, 3, -4, -10, 10, -12, 15]);
ECSearch("24.3-b",(-502*w + 3738)*OK,[0, -2, 3, 7, -5, 7, -2, 8, 8, -4, 3, -2, -7, -11, 11, -4, -4, -8, 3, 1, 14, -3, 10, 2, 20, -20, 16]);
ECSearch("24.3-c",(-502*w + 3738)*OK,[-3, -3, -2, 3, 2, 9, -4, -5, 8, -11, -9, 0, 0, -7, -14, -4, 2, 14, 4, -14, -2, 3, 0, 18, -18, 8, 19]);
ECSearch("24.8-a",(29*w + 187)*OK,[2, -1, 2, 3, 6, 1, 1, -7, 4, -1, 8, 8, -7, -9, 8, -4, 6, 14, 10, -6, -12, -3, 10, 10, 16, 6, -7, 0]);
ECSearch("24.8-b",(29*w + 187)*OK,[0, 0, -1, 2, 3, -7, 3, -8, -10, 12, 0, -2, -15, 3, -11, -12, -9, 0, -4, 7, 9, 3, -10, 14, 14, 4, 16, -12]);
ECSearch("24.8-c",(29*w + 187)*OK,[-1, 0, 0, 2, 0, 6, -2, -6, -4, -2, -8, 4, 6, 4, -12, 2, 12, 4, 16, 14, 0, 8, 12, -10, -6, -12, -6, 12]);
ECSearch("24.7-a",(w - 9)*OK,[-1, -1, 3, -2, -9, 2, -7, -2, -5, -4, -5, 3, 10, 6, 13, 0, 4, 6, 18, -18, 12, -6, 3, 14, 16, -16, 2, 13]);
ECSearch("24.7-b",(w - 9)*OK,[-1, -1, -4, 5, 5, 9, -7, -2, 9, -4, -12, -4, 3, -8, 6, 14, -3, -8, -10, -4, -16, 8, 10, -7, -12, -2, -12, 13]);
ECSearch("24.7-c",(w - 9)*OK,[-1, -1, -5, -2, -1, -6, 1, -10, 3, 4, 3, 11, -6, -2, -3, -8, -12, -10, 10, 14, 4, 2, -13, 14, 0, 8, 18, -11]);
ECSearch("27.1-a",(6*w - 45)*OK,[0, 0, 3, 3, -6, 6, -6, 0, 0, 3, 3, -6, 6, -5, -5, 6, -6, -3, -3, 12, -12, -6, 6, 7, 7, -21, 0, 0]);
ECSearch("27.1-b",(6*w - 45)*OK,[-1, 1, 4, 4, 0, 0, -6, 4, 4, 8, 8, -12, 12, 12, 12, -4, 4, -2, -2, -10, 10, 12, -12, -14, -14, -18, 20, -20]);
ECSearch("27.2-a",(6*w + 39)*OK,[0, 0, 3, 3, 6, -6, -6, 0, 0, 3, 3, 6, -6, -5, -5, -6, 6, -3, -3, -12, 12, 6, -6, 7, 7, -21, 0, 0]);
ECSearch("27.2-b",(6*w + 39)*OK,[1, -1, 4, 4, 0, 0, -6, 4, 4, 8, 8, 12, -12, 12, 12, 4, -4, -2, -2, 10, -10, -12, 12, -14, -14, -18, -20, 20]);
ECSearch("28.1-a",(372*w - 2770)*OK,[0, 2, 0, 2, 4, -4, -2, -6, -2, 12, 8, -4, -10, 4, 14, -16, -2, 12, 6, 0, -16, -8, 6, -4, -8, 12, 12]);
ECSearch("28.3-a",(-w - 4)*OK,[-2, -1, -2, -1, 8, -1, 4, 0, 4, -4, 8, 1, -8, -4, 8, -9, 2, -17, 6, -5, 4, 7, 17, -1, 14, 13, -12, -21]);
ECSearch("28.4-a",(3*w - 23)*OK,[0, 1, -2, 5, 0, -3, 8, 8, -4, 8, -4, -9, -12, 8, 8, 9, -6, -1, 14, -9, -12, -15, 15, 11, -10, 5, 0, 21]);
ECSearch("28.2-a",(-372*w - 2398)*OK,[2, 0, 0, 4, 2, -4, -6, -2, 12, -2, -4, 8, 4, -10, -16, 14, 12, -2, 0, 6, -8, -16, -4, 6, -8, 12, 12]);
ECSearch("28.6-a",(-w + 5)*OK,[-2, -2, -1, -1, -1, 8, 4, 4, 0, 8, -4, -8, 1, 8, -4, 2, -9, 6, -17, 4, -5, 17, 7, 14, -1, 13, -21, -12]);
ECSearch("28.5-a",(-3*w - 20)*OK,[0, -2, 1, 5, -3, 0, 8, -4, 8, -4, 8, -12, -9, 8, 8, -6, 9, 14, -1, -12, -9, 15, -15, -10, 11, 5, 21, 0]);
