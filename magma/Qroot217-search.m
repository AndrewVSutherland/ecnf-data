print "Field 2.2.217.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 54);
OK := Integers(K);
Plist := [];
Append(~Plist,(-w + 8)*OK);
Append(~Plist,(-w - 7)*OK);
Append(~Plist,(-52*w - 357)*OK);
Append(~Plist,(-52*w + 409)*OK);
Append(~Plist,(498*w + 3419)*OK);
Append(~Plist,(22*w - 173)*OK);
Append(~Plist,(22*w + 151)*OK);
Append(~Plist,(6*w + 41)*OK);
Append(~Plist,(-6*w + 47)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(-1048*w + 8243)*OK);
Append(~Plist,(-602*w + 4735)*OK);
Append(~Plist,(-602*w - 4133)*OK);
Append(~Plist,(186*w + 1277)*OK);
Append(~Plist,(186*w - 1463)*OK);
Append(~Plist,(-290*w + 2281)*OK);
Append(~Plist,(-290*w - 1991)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(2*w + 11)*OK);
Append(~Plist,(36*w + 247)*OK);
Append(~Plist,(36*w - 283)*OK);
Append(~Plist,(-126*w - 865)*OK);
Append(~Plist,(126*w - 991)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(12*w + 83)*OK);
Append(~Plist,(-12*w + 95)*OK);
Append(~Plist,(112*w + 769)*OK);
Append(~Plist,(112*w - 881)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-4*w - 25)*OK);
Append(~Plist,(-4*w + 29)*OK);
Append(~Plist,(-68*w + 535)*OK);
Append(~Plist,(-68*w - 467)*OK);
Append(~Plist,(6*w - 49)*OK);
Append(~Plist,(-6*w - 43)*OK);
Append(~Plist,(-1152*w + 9061)*OK);
Append(~Plist,(-1152*w - 7909)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(-26*w - 179)*OK);
Append(~Plist,(-26*w + 205)*OK);
Append(~Plist,(-216*w + 1699)*OK);
Append(~Plist,(-216*w - 1483)*OK);
Append(~Plist,(-16*w - 109)*OK);
Append(~Plist,(-16*w + 125)*OK);
Append(~Plist,(-54*w + 425)*OK);
Append(~Plist,(-54*w - 371)*OK);
Append(~Plist,(8*w - 61)*OK);
Append(~Plist,(8*w + 53)*OK);
Append(~Plist,(14*w - 109)*OK);
Append(~Plist,(14*w + 95)*OK);
Append(~Plist,(736*w + 5053)*OK);
Append(~Plist,(736*w - 5789)*OK);
Append(~Plist,(-10*w - 67)*OK);
Append(~Plist,(-10*w + 77)*OK);
Append(~Plist,(2148*w + 14747)*OK);
Append(~Plist,(2148*w - 16895)*OK);
Append(~Plist,(-810*w + 6371)*OK);
Append(~Plist,(-810*w - 5561)*OK);
Append(~Plist,(-200*w - 1373)*OK);
Append(~Plist,(200*w - 1573)*OK);
Append(~Plist,(-424*w + 3335)*OK);
Append(~Plist,(-424*w - 2911)*OK);
Append(~Plist,(-334*w - 2293)*OK);
Append(~Plist,(-334*w + 2627)*OK);
Append(~Plist,(28*w - 221)*OK);
Append(~Plist,(28*w + 193)*OK);
Append(~Plist,(-6*w - 37)*OK);
Append(~Plist,(-6*w + 43)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(64*w + 439)*OK);
Append(~Plist,(64*w - 503)*OK);
Append(~Plist,(84*w + 577)*OK);
Append(~Plist,(-84*w + 661)*OK);
Append(~Plist,(18*w + 125)*OK);
Append(~Plist,(-18*w + 143)*OK);
Append(~Plist,(-48*w + 377)*OK);
Append(~Plist,(-48*w - 329)*OK);
Append(~Plist,(-914*w + 7189)*OK);
Append(~Plist,(-914*w - 6275)*OK);
Append(~Plist,(-1836*w - 12605)*OK);
Append(~Plist,(1836*w - 14441)*OK);
Append(~Plist,(70*w - 551)*OK);
Append(~Plist,(70*w + 481)*OK);
Append(~Plist,(2698*w + 18523)*OK);
Append(~Plist,(2698*w - 21221)*OK);
Append(~Plist,(2386*w - 18767)*OK);
Append(~Plist,(2386*w + 16381)*OK);
Append(~Plist,(-438*w - 3007)*OK);
Append(~Plist,(-438*w + 3445)*OK);
Append(~Plist,(-6*w + 41)*OK);
Append(~Plist,(6*w + 35)*OK);
Append(~Plist,(-2252*w + 17713)*OK);
Append(~Plist,(-2252*w - 15461)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(-276*w - 1895)*OK);
Append(~Plist,(276*w - 2171)*OK);
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

ECSearch("4.1-a",(2)*OK,[2, 2, 4, 2, 2, 0, 0, 10, -4, 10, 10, 4, 4, 0, 0, -8, -8, -6, -6, -12, -12, -12, -12, -14, -14, -6, -6, 10]);
ECSearch("4.1-b",(2)*OK,[1, 1, 4, 4, 4, -6, -6, 7, 4, -10, -10, -11, -11, -6, -6, -7, -7, -9, -9, 15, 15, 3, 3, 16, 16, -9, -9, 10]);
ECSearch("4.1-c",(2)*OK,[-1, -1, 4, -4, -4, 6, 6, 7, -4, 10, 10, -11, -11, -6, -6, 7, 7, 9, 9, -15, -15, 3, 3, 16, 16, -9, -9, 10]);
ECSearch("4.1-d",(2)*OK,[-2, -2, 4, -2, -2, 0, 0, 10, 4, -10, -10, 4, 4, 0, 0, 8, 8, 6, 6, 12, 12, -12, -12, -14, -14, -6, -6, 10]);
ECSearch("6.1-a",(-7*w - 48)*OK,[-1, 1, 3, -5, 0, 3, -4, 1, -7, 5, -10, -12, 8, -15, 2, -10, 4, 4, -12, -2, 1, -18, -6, -1, 10, 17, -2, 13]);
ECSearch("6.1-b",(-7*w - 48)*OK,[-1, -1, 3, 5, 0, -3, 4, 1, 7, -5, 10, -12, 8, -15, 2, 10, -4, -4, 12, 2, -1, -18, -6, -1, 10, 17, -2, 13]);
ECSearch("6.2-a",(-275*w - 1888)*OK,[2, 1, 1, -6, 6, 5, 3, 2, 5, 2, 8, -11, 4, -6, -8, -4, -6, -10, 12, 14, -9, 16, -16, -10, -6, -7, 9, -10]);
ECSearch("6.2-b",(-275*w - 1888)*OK,[2, -1, 1, 6, -6, -5, -3, 2, -5, -2, -8, -11, 4, -6, -8, 4, 6, 10, -12, -14, 9, 16, -16, -10, -6, -7, 9, -10]);
ECSearch("6.4-a",(7*w - 55)*OK,[-1, 1, 3, 0, -5, -4, 3, 1, -7, -10, 5, 8, -12, 2, -15, 4, -10, -12, 4, 1, -2, -6, -18, 10, -1, -2, 17, 13]);
ECSearch("6.4-b",(7*w - 55)*OK,[-1, -1, 3, 0, 5, 4, -3, 1, 7, 10, -5, 8, -12, 2, -15, -4, 10, 12, -4, -1, 2, -6, -18, 10, -1, -2, 17, 13]);
ECSearch("6.3-a",(275*w - 2163)*OK,[2, 1, 1, 6, -6, 3, 5, 2, 5, 8, 2, 4, -11, -8, -6, -6, -4, 12, -10, -9, 14, -16, 16, -6, -10, 9, -7, -10]);
ECSearch("6.3-b",(275*w - 2163)*OK,[2, -1, 1, -6, 6, -3, -5, 2, -5, -8, -2, 4, -11, -8, -6, 6, 4, -12, 10, 9, -14, -16, 16, -6, -10, 9, -7, -10]);
ECSearch("7.1-a",(498*w + 3419)*OK,[-1, -1, 0, 0, 6, -6, -6, 6, -6, 0, 6, -6, -12, -12, -8, -8, 6, -6, 12, -12, -6, 6, 4, 4, -2, -2, 10, 10, -14]);
ECSearch("7.1-b",(498*w + 3419)*OK,[-1, -1, 0, 0, -6, 6, 6, -6, -6, 0, -6, 6, -12, -12, -8, -8, -6, 6, -12, 12, 6, -6, 4, 4, -2, -2, 10, 10, -14]);
ECSearch("8.1-a",(-2*w + 16)*OK,[2, -1, -1, -2, 4, 3, -3, 2, -5, -8, -14, -4, 11, -12, 12, 10, -2, 12, 0, 15, -6, -6, -12, 14, -4, 9, -15, 14]);
ECSearch("8.1-b",(-2*w + 16)*OK,[-2, 1, -1, 2, -4, -3, 3, 2, 5, 8, 14, -4, 11, -12, 12, -10, 2, -12, 0, -15, 6, -6, -12, 14, -4, 9, -15, 14]);
ECSearch("8.3-a",(-223*w + 1754)*OK,[-2, 1, 0, 1, 6, -2, -3, -5, 2, 5, 10, -8, 5, -4, -2, 16, 0, 10, 10, -4, -18, 7, 0, -12, 2, -6, 1, 9, -2]);
ECSearch("8.3-b",(-223*w + 1754)*OK,[-2, -1, 0, 1, -6, 2, 3, 5, 2, -5, -10, 8, 5, -4, -2, 16, 0, -10, -10, 4, 18, -7, 0, -12, 2, -6, 1, 9, -2]);
ECSearch("8.2-a",(-2*w - 14)*OK,[-1, 2, -1, 4, -2, -3, 3, 2, -5, -14, -8, 11, -4, 12, -12, -2, 10, 0, 12, -6, 15, -12, -6, -4, 14, -15, 9, 14]);
ECSearch("8.2-b",(-2*w - 14)*OK,[1, -2, -1, -4, 2, 3, -3, 2, 5, 14, 8, 11, -4, 12, -12, 2, -10, 0, -12, 6, -15, -12, -6, -4, 14, -15, 9, 14]);
ECSearch("8.4-a",(-223*w - 1531)*OK,[-2, 0, 1, 1, -2, 6, -5, -3, 2, 5, -8, 10, -4, 5, 16, -2, 10, 0, -4, 10, 7, -18, -12, 0, -6, 2, 9, 1, -2]);
ECSearch("8.4-b",(-223*w - 1531)*OK,[-2, 0, -1, 1, 2, -6, 5, 3, 2, -5, 8, -10, -4, 5, 16, -2, -10, 0, 4, -10, -7, 18, -12, 0, -6, 2, 9, 1, -2]);
ECSearch("12.1-a",(-104*w - 714)*OK,[3, 3, 1, -6, 7, 0, -3, -7, 7, 0, 8, -6, -11, 10, 10, 10, -2, 12, 16, 9, -14, 0, 13, 20, -11, -4, -19]);
ECSearch("12.1-b",(-104*w - 714)*OK,[-3, 3, -1, 6, -7, 0, -3, 7, -7, 0, 8, -6, -11, 10, -10, -10, 2, -12, -16, -9, -14, 0, 13, 20, -11, -4, -19]);
ECSearch("12.1-c",(-104*w - 714)*OK,[0, 0, 4, 0, -8, 0, -6, -4, -8, 12, -4, 12, -8, -8, 4, 4, -8, -12, 16, 0, 4, -12, -14, 2, -2, 14, -10]);
ECSearch("12.1-d",(-104*w - 714)*OK,[1, 1, 1, 4, 3, 0, 7, -5, -7, 2, 4, 4, -3, -6, 14, -4, 12, 0, 6, 9, -6, 6, -11, 10, 9, 18, -5]);
ECSearch("12.1-e",(-104*w - 714)*OK,[-1, 1, -1, -4, -3, 0, 7, 5, 7, -2, 4, 4, -3, -6, -14, 4, -12, 0, -6, -9, -6, 6, -11, 10, 9, 18, -5]);
ECSearch("12.1-f",(-104*w - 714)*OK,[-1, -1, 1, -4, 1, -4, -3, -9, -5, -10, 4, 4, 9, -6, 2, -8, -16, 4, -10, -5, -2, -2, -9, 6, 1, -14, -15]);
ECSearch("12.1-g",(-104*w - 714)*OK,[1, -1, -1, 4, -1, 4, -3, 9, 5, 10, 4, 4, 9, -6, -2, 8, 16, -4, 10, 5, -2, -2, -9, 6, 1, -14, -15]);
ECSearch("12.1-h",(-104*w - 714)*OK,[0, 0, -4, 0, 8, 0, -6, 4, 8, -12, -4, 12, -8, -8, -4, -4, 8, 12, -16, 0, 4, -12, -14, 2, -2, 14, -10]);
ECSearch("12.2-a",(-104*w + 818)*OK,[3, 3, -6, 1, 0, 7, -3, -7, 0, 7, -6, 8, 10, -11, 10, 10, 12, -2, 9, 16, 0, -14, 20, 13, -4, -11, -19]);
ECSearch("12.2-b",(-104*w + 818)*OK,[-3, 3, 6, -1, 0, -7, -3, 7, 0, -7, -6, 8, 10, -11, -10, -10, -12, 2, -9, -16, 0, -14, 20, 13, -4, -11, -19]);
ECSearch("12.2-c",(-104*w + 818)*OK,[0, 0, 0, 4, 0, -8, -6, -4, 12, -8, 12, -4, -8, -8, 4, 4, -12, -8, 0, 16, -12, 4, 2, -14, 14, -2, -10]);
ECSearch("12.2-d",(-104*w + 818)*OK,[1, 1, 4, 1, 0, 3, 7, -5, 2, -7, 4, 4, -6, -3, -4, 14, 0, 12, 9, 6, 6, -6, 10, -11, 18, 9, -5]);
ECSearch("12.2-e",(-104*w + 818)*OK,[-1, 1, -4, -1, 0, -3, 7, 5, -2, 7, 4, 4, -6, -3, 4, -14, 0, -12, -9, -6, 6, -6, 10, -11, 18, 9, -5]);
ECSearch("12.2-f",(-104*w + 818)*OK,[-1, -1, -4, 1, -4, 1, -3, -9, -10, -5, 4, 4, -6, 9, -8, 2, 4, -16, -5, -10, -2, -2, 6, -9, -14, 1, -15]);
ECSearch("12.2-g",(-104*w + 818)*OK,[1, -1, 4, -1, 4, -1, -3, 9, 10, 5, 4, 4, -6, 9, 8, -2, -4, 16, 5, 10, -2, -2, 6, -9, -14, 1, -15]);
ECSearch("12.2-h",(-104*w + 818)*OK,[0, 0, 0, -4, 0, 8, -6, 4, -12, 8, 12, -4, -8, -8, -4, -4, 12, 8, 0, -16, -12, 4, 2, -14, 14, -2, -10]);
ECSearch("16.1-a",(4)*OK,[2, -2, -1, 2, -2, 2, -2, -9, 0, 14, -14, -8, -8, 9, 9, 4, -4, 4, -4, -14, 14, 19, 19, 9, 9, 13, 13, 6]);
ECSearch("16.1-b",(4)*OK,[-2, 2, -1, -2, 2, -2, 2, -9, 0, -14, 14, -8, -8, 9, 9, -4, 4, -4, 4, 14, -14, 19, 19, 9, 9, 13, 13, 6]);
ECSearch("16.4-a",(171*w + 1174)*OK,[1, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, -4, 4, 16, -16, 0, 0, 0, 0, 0, 0, 20, -20, 18, 18, -2, -2, 6]);
ECSearch("16.4-b",(171*w + 1174)*OK,[0, 1, 2, -3, 0, 6, -3, 3, -6, 9, 10, -8, -3, -12, 0, -12, 2, 2, 12, -12, -6, -9, 12, 18, 0, -18, -15, 9, 6]);
ECSearch("16.4-c",(171*w + 1174)*OK,[0, -1, -2, -3, 0, -6, 3, -3, -6, -9, -10, 8, -3, -12, 0, -12, -2, -2, -12, 12, 6, 9, 12, 18, 0, -18, -15, 9, 6]);
ECSearch("16.5-a",(-171*w + 1345)*OK,[1, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 4, -4, -16, 16, 0, 0, 0, 0, 0, 0, -20, 20, 18, 18, -2, -2, 6]);
ECSearch("16.5-b",(-171*w + 1345)*OK,[0, 2, 1, -3, 6, 0, 3, -3, -6, 9, -8, 10, -12, -3, -12, 0, 2, 2, -12, 12, -9, -6, 18, 12, -18, 0, 9, -15, 6]);
ECSearch("16.5-c",(-171*w + 1345)*OK,[0, -2, -1, -3, -6, 0, -3, 3, -6, -9, 8, -10, -12, -3, -12, 0, -2, -2, 12, -12, 9, 6, 18, 12, -18, 0, 9, -15, 6]);
ECSearch("18.1-a",(-3*w + 24)*OK,[-1, 0, 2, -6, 6, -2, 10, -8, -14, 10, 12, -4, 0, 8, -2, 14, -4, -12, -10, 14, -12, 12, 14, -2, 2, -14, 10]);
ECSearch("18.1-b",(-3*w + 24)*OK,[-1, -2, 0, 0, 2, -6, -4, 2, -10, -10, -2, -2, 0, -8, -10, 6, -4, 12, 2, -6, -8, -16, -16, 0, 2, 18, 8]);
ECSearch("18.1-c",(-3*w + 24)*OK,[-1, -2, 0, 0, -2, 6, -4, -2, 10, 10, -2, -2, 0, -8, 10, -6, 4, -12, -2, 6, -8, -16, -16, 0, 2, 18, 8]);
ECSearch("18.1-d",(-3*w + 24)*OK,[-1, 0, -2, 6, -6, 2, 10, 8, 14, -10, 12, -4, 0, 8, 2, -14, 4, 12, 10, -14, -12, 12, 14, -2, 2, -14, 10]);
ECSearch("18.3-a",(-119*w + 936)*OK,[-1, 1, -3, 5, 0, 3, 4, -1, 7, 5, -10, 12, -8, -15, -2, -10, 4, -4, -12, 2, 1, -18, 6, 1, -10, 17, 2, -13]);
ECSearch("18.3-b",(-119*w + 936)*OK,[-1, -1, -3, -5, 0, -3, -4, -1, -7, -5, 10, 12, -8, -15, -2, 10, -4, 4, 12, -2, -1, -18, 6, 1, -10, 17, 2, -13]);
ECSearch("18.4-a",(w + 8)*OK,[-2, 1, -1, 6, -6, -5, 3, -2, -5, 2, 8, 11, -4, 6, -8, -4, -6, -10, -12, 14, 9, -16, -16, 10, 6, 7, 9, 10]);
ECSearch("18.4-b",(w + 8)*OK,[-2, -1, -1, -6, 6, 5, -3, -2, 5, -2, -8, 11, -4, 6, -8, 4, 6, 10, 12, -14, -9, -16, -16, 10, 6, 7, 9, 10]);
ECSearch("18.2-a",(-3*w - 21)*OK,[-1, 0, -6, 2, -2, 6, 10, -8, 10, -14, -4, 12, 8, 0, 14, -2, -12, -4, 14, -10, 12, -12, -2, 14, -14, 2, 10]);
ECSearch("18.2-b",(-3*w - 21)*OK,[-1, -2, 0, 0, -6, 2, -4, 2, -10, -10, -2, -2, -8, 0, 6, -10, 12, -4, -6, 2, -16, -8, 0, -16, 18, 2, 8]);
ECSearch("18.2-c",(-3*w - 21)*OK,[-1, -2, 0, 0, 6, -2, -4, -2, 10, 10, -2, -2, -8, 0, -6, 10, -12, 4, 6, -2, -16, -8, 0, -16, 18, 2, 8]);
ECSearch("18.2-d",(-3*w - 21)*OK,[-1, 0, 6, -2, 2, -6, 10, 8, -10, 14, -4, 12, 8, 0, -14, 2, 12, 4, -14, 10, 12, -12, -2, 14, -14, 2, 10]);
ECSearch("18.6-a",(-119*w - 817)*OK,[-1, 1, -3, 0, 5, 4, 3, -1, 7, -10, 5, -8, 12, -2, -15, 4, -10, -12, -4, 1, 2, 6, -18, -10, 1, 2, 17, -13]);
ECSearch("18.6-b",(-119*w - 817)*OK,[-1, -1, -3, 0, -5, -4, -3, -1, -7, 10, -5, -8, 12, -2, -15, -4, 10, 12, 4, -1, -2, 6, -18, -10, 1, 2, 17, -13]);
ECSearch("18.5-a",(w - 9)*OK,[-2, 1, -1, -6, 6, 3, -5, -2, -5, 8, 2, -4, 11, -8, 6, -6, -4, -12, -10, 9, 14, -16, -16, 6, 10, 9, 7, 10]);
ECSearch("18.5-b",(w - 9)*OK,[-2, -1, -1, 6, -6, -3, 5, -2, 5, -8, -2, -4, 11, -8, 6, 6, 4, 12, 10, -9, -14, -16, -16, 6, 10, 9, 7, 10]);
ECSearch("24.1-a",(-14*w - 96)*OK,[2, -2, 2, 2, 6, 6, -8, -4, -8, -2, -8, -14, 0, -12, -8, 4, 12, 12, -6, 6, 12, 6, 10, -20, -6, -18, -8]);
ECSearch("24.1-b",(-14*w - 96)*OK,[-2, -2, -2, -2, -6, -6, -8, 4, 8, 2, -8, -14, 0, -12, 8, -4, -12, -12, 6, -6, 12, 6, 10, -20, -6, -18, -8]);
ECSearch("24.2-a",(-550*w - 3776)*OK,[1, -1, -4, -1, 6, 3, 5, 5, 8, 5, 2, 8, 0, -3, 2, -4, -12, 0, -15, 6, -12, 18, 2, 11, -6, -3, 5]);
ECSearch("24.2-b",(-550*w - 3776)*OK,[-1, -1, 4, 1, -6, -3, 5, -5, -8, -5, 2, 8, 0, -3, -2, 4, 12, 0, 15, -6, -12, 18, 2, 11, -6, -3, 5]);
ECSearch("24.5-a",(-5*w - 34)*OK,[-1, 0, 0, 2, 6, 2, 2, 2, 4, -10, -6, 4, 12, -8, -8, -2, -2, 12, 0, -6, 2, 4, 4, 14, 14, 2, 18, 10]);
ECSearch("24.5-b",(-5*w - 34)*OK,[-1, 0, 0, -2, -6, -2, -2, 2, -4, 10, 6, 4, 12, -8, -8, 2, 2, -12, 0, 6, -2, 4, 4, 14, 14, 2, 18, 10]);
ECSearch("24.6-a",(w + 5)*OK,[1, 0, 4, 4, 0, 4, 0, 2, -4, 4, -8, 8, 8, 4, -8, 4, 12, -4, 16, -8, -12, 0, 12, -6, 2, -18, -2, -2]);
ECSearch("24.6-b",(w + 5)*OK,[1, 0, 4, -4, 0, -4, 0, 2, 4, -4, 8, 8, 8, 4, -8, -4, -12, 4, -16, 8, 12, 0, 12, -6, 2, -18, -2, -2]);
ECSearch("24.4-a",(14*w - 110)*OK,[2, -2, 2, 2, 6, 6, -8, -4, -2, -8, -14, -8, -12, 0, 4, -8, 12, 12, 6, -6, 6, 12, -20, 10, -18, -6, -8]);
ECSearch("24.4-b",(14*w - 110)*OK,[-2, -2, -2, -2, -6, -6, -8, 4, 2, 8, -14, -8, -12, 0, -4, 8, -12, -12, -6, 6, 6, 12, -20, 10, -18, -6, -8]);
ECSearch("24.3-a",(550*w - 4326)*OK,[1, -1, -1, -4, 3, 6, 5, 5, 5, 8, 8, 2, -3, 0, -4, 2, 0, -12, 6, -15, 18, -12, 11, 2, -3, -6, 5]);
ECSearch("24.3-b",(550*w - 4326)*OK,[-1, -1, 1, 4, -3, -6, 5, -5, -5, -8, 8, 2, -3, 0, 4, -2, 0, 12, -6, 15, 18, -12, 11, 2, -3, -6, 5]);
ECSearch("24.8-a",(5*w - 39)*OK,[-1, 0, 0, 6, 2, 2, 2, 2, 4, -6, -10, 12, 4, -8, -8, -2, -2, 0, 12, 2, -6, 4, 4, 14, 14, 18, 2, 10]);
ECSearch("24.8-b",(5*w - 39)*OK,[-1, 0, 0, -6, -2, -2, -2, 2, -4, 6, 10, 12, 4, -8, -8, 2, 2, 0, -12, -2, 6, 4, 4, 14, 14, 18, 2, 10]);
ECSearch("24.7-a",(-w + 6)*OK,[1, 0, 4, 0, 4, 0, 4, 2, -4, -8, 4, 8, 8, -8, 4, 12, 4, 16, -4, -12, -8, 12, 0, 2, -6, -2, -18, -2]);
ECSearch("24.7-b",(-w + 6)*OK,[1, 0, 4, 0, -4, 0, -4, 2, 4, 8, -4, 8, 8, -8, 4, -12, -4, -16, 4, 12, 8, 12, 0, 2, -6, -2, -18, -2]);
ECSearch("28.1-a",(996*w + 6838)*OK,[2, 2, 4, 4, -6, -6, -10, 4, -8, -8, -4, -4, 0, 0, -2, -2, 6, 6, 6, 6, 12, 12, 2, 2, 6, 6, -22]);
ECSearch("28.1-b",(996*w + 6838)*OK,[2, 2, 2, -4, -6, 0, -2, -4, -2, 4, -8, 4, 0, 12, 4, -14, 0, 0, 6, 12, -12, -12, -14, -2, 6, -18, -14]);
ECSearch("28.1-c",(996*w + 6838)*OK,[-1, 1, 2, -2, 2, -2, -9, 0, 2, -2, -5, -5, -6, -6, 1, -1, 13, -13, -17, 17, 1, 1, -18, -18, 1, 1, 6]);
ECSearch("28.1-d",(996*w + 6838)*OK,[-2, -2, 4, -2, 0, 6, -2, 4, -4, 2, 4, -8, 12, 0, 14, -4, 0, 0, -12, -6, -12, -12, -2, -14, -18, 6, -14]);
ECSearch("28.1-e",(996*w + 6838)*OK,[2, 2, -4, 2, 0, -6, -2, -4, 4, -2, 4, -8, 12, 0, -14, 4, 0, 0, 12, 6, -12, -12, -2, -14, -18, 6, -14]);
ECSearch("28.1-f",(996*w + 6838)*OK,[1, -1, -2, 2, -2, 2, -9, 0, -2, 2, -5, -5, -6, -6, -1, 1, -13, 13, 17, -17, 1, 1, -18, -18, 1, 1, 6]);
ECSearch("28.1-g",(996*w + 6838)*OK,[-2, -2, -2, 4, 6, 0, -2, 4, 2, -4, -8, 4, 0, 12, -4, 14, 0, 0, -6, -12, -12, -12, -14, -2, 6, -18, -14]);
ECSearch("28.1-h",(996*w + 6838)*OK,[-2, -2, -4, -4, 6, 6, -10, -4, 8, 8, -4, -4, 0, 0, 2, 2, -6, -6, -6, -6, 12, 12, 2, 2, 6, 6, -22]);
ECSearch("32.3-a",(-446*w + 3508)*OK,[0, 3, -3, 2, 2, -7, -1, 2, 3, 8, -10, -4, 13, -8, 14, 14, 8, 12, 6, 5, 2, 4, -16, 10, 10, 9, 9, 14]);
ECSearch("32.3-b",(-446*w + 3508)*OK,[-2, -1, 3, 6, 0, 3, -3, -6, -9, -8, 10, 12, 3, 12, 0, 2, 2, 12, -12, -9, -6, -18, -12, -18, 0, 9, -15, 6]);
ECSearch("32.3-c",(-446*w + 3508)*OK,[-1, 1, 0, 0, 0, 6, 6, 9, 0, -10, -10, 9, -9, -6, 6, -11, -11, 15, -15, -3, -3, -9, 9, 0, 0, -9, -9, -18]);
ECSearch("32.3-d",(-446*w + 3508)*OK,[1, -1, 0, 0, 0, -6, -6, 9, 0, 10, 10, 9, -9, -6, 6, 11, 11, -15, 15, 3, 3, -9, 9, 0, 0, -9, -9, -18]);
ECSearch("32.3-e",(-446*w + 3508)*OK,[2, 1, 3, -6, 0, -3, 3, -6, 9, 8, -10, 12, 3, 12, 0, -2, -2, -12, 12, 9, 6, -18, -12, -18, 0, 9, -15, 6]);
ECSearch("32.3-f",(-446*w + 3508)*OK,[0, -3, -3, -2, -2, 7, 1, 2, -3, -8, 10, -4, 13, -8, 14, -14, -8, -12, -6, -5, -2, 4, -16, 10, 10, 9, 9, 14]);
ECSearch("32.4-a",(-446*w - 3062)*OK,[3, 0, -3, 2, 2, -1, -7, 2, 3, -10, 8, 13, -4, 14, -8, 8, 14, 6, 12, 2, 5, -16, 4, 10, 10, 9, 9, 14]);
ECSearch("32.4-b",(-446*w - 3062)*OK,[-1, -2, 3, 0, 6, -3, 3, -6, -9, 10, -8, 3, 12, 0, 12, 2, 2, -12, 12, -6, -9, -12, -18, 0, -18, -15, 9, 6]);
ECSearch("32.4-c",(-446*w - 3062)*OK,[1, -1, 0, 0, 0, 6, 6, 9, 0, -10, -10, -9, 9, 6, -6, -11, -11, -15, 15, -3, -3, 9, -9, 0, 0, -9, -9, -18]);
ECSearch("32.4-d",(-446*w - 3062)*OK,[-1, 1, 0, 0, 0, -6, -6, 9, 0, 10, 10, -9, 9, 6, -6, 11, 11, 15, -15, 3, 3, 9, -9, 0, 0, -9, -9, -18]);
ECSearch("32.4-e",(-446*w - 3062)*OK,[1, 2, 3, 0, -6, 3, -3, -6, 9, -10, 8, 3, 12, 0, 12, -2, -2, 12, -12, 6, 9, -12, -18, 0, -18, -15, 9, 6]);
ECSearch("32.4-f",(-446*w - 3062)*OK,[-3, 0, -3, -2, -2, 1, 7, 2, -3, 10, -8, 13, -4, 14, -8, -8, -14, -6, -12, -2, -5, -16, 4, 10, 10, 9, 9, 14]);
ECSearch("36.1-a",(6)*OK,[-2, 4, 4, -6, -6, 4, 10, 14, 14, -14, -14, 0, 0, -10, -10, 0, 0, 18, 18, -12, -12, -20, -20, 18, 18, 16]);
ECSearch("36.1-b",(6)*OK,[-2, 5, -1, 3, 3, 1, -4, -5, 1, -5, -5, 15, -3, -8, 4, -9, -9, -6, 18, -18, -6, 4, 16, -6, -6, -17]);
ECSearch("36.1-c",(6)*OK,[-2, 4, 0, -2, -2, -4, 6, -14, 10, 10, -10, -8, 0, -6, 2, 16, -4, -2, 14, -16, 12, -4, -16, -6, -6, 8]);
ECSearch("36.1-d",(6)*OK,[-2, 2, 2, -6, -6, 10, -10, 10, 10, -8, -8, 0, 0, 4, 4, 6, 6, -6, -6, 6, 6, -2, -2, 6, 6, 22]);
ECSearch("36.1-e",(6)*OK,[-4, 5, -5, -7, 7, -9, 0, 5, -5, 7, 7, -15, -15, 4, -4, 1, -1, 10, -10, 4, 4, 12, 12, -8, -8, 21]);
ECSearch("36.1-f",(6)*OK,[-2, 0, 4, -2, -2, -4, 6, 10, -14, -10, 10, 0, -8, 2, -6, -4, 16, 14, -2, 12, -16, -16, -4, -6, -6, 8]);
ECSearch("36.1-g",(6)*OK,[-2, -1, 5, 3, 3, 1, -4, 1, -5, -5, -5, -3, 15, 4, -8, -9, -9, 18, -6, -6, -18, 16, 4, -6, -6, -17]);
ECSearch("36.1-h",(6)*OK,[-2, 1, -5, -3, -3, 1, 4, -1, 5, -5, -5, -3, 15, -4, 8, 9, 9, -18, 6, -6, -18, 16, 4, -6, -6, -17]);
ECSearch("36.1-i",(6)*OK,[-2, 0, -4, 2, 2, -4, -6, -10, 14, -10, 10, 0, -8, -2, 6, 4, -16, -14, 2, 12, -16, -16, -4, -6, -6, 8]);
ECSearch("36.1-j",(6)*OK,[-4, -5, 5, 7, -7, -9, 0, -5, 5, 7, 7, -15, -15, -4, 4, -1, 1, -10, 10, 4, 4, 12, 12, -8, -8, 21]);
ECSearch("36.1-k",(6)*OK,[-2, -2, -2, 6, 6, 10, 10, -10, -10, -8, -8, 0, 0, -4, -4, -6, -6, 6, 6, 6, 6, -2, -2, 6, 6, 22]);
ECSearch("36.1-l",(6)*OK,[-2, -4, 0, 2, 2, -4, -6, 14, -10, 10, -10, -8, 0, 6, -2, -16, 4, 2, -14, -16, 12, -4, -16, -6, -6, 8]);
ECSearch("36.1-m",(6)*OK,[-2, -5, 1, -3, -3, 1, 4, 5, -1, -5, -5, 15, -3, 8, -4, 9, 9, 6, -18, -18, -6, 4, 16, -6, -6, -17]);
ECSearch("36.1-n",(6)*OK,[-2, -4, -4, 6, 6, 4, -10, -14, -14, -14, -14, 0, 0, 10, 10, 0, 0, -18, -18, -12, -12, -20, -20, 18, 18, 16]);
ECSearch("36.2-a",(45*w + 309)*OK,[-1, -2, 6, -6, -6, 4, 2, -8, 4, 4, -14, -2, -14, 12, 0, 4, 0, 4, 12, 10, -10, 4, -18, 14, -18, 14, 14]);
ECSearch("36.2-b",(45*w + 309)*OK,[-1, -2, -6, 6, 6, -4, 2, 8, -4, -4, -14, -2, -14, 12, 0, -4, 0, -4, -12, -10, -10, 4, -18, 14, -18, 14, 14]);
ECSearch("36.4-a",(-16*w + 126)*OK,[2, 2, -2, 2, 4, 2, 6, 0, 10, -4, 16, -2, 12, 0, -10, -14, -4, -8, -10, 4, 4, -14, 0, 6, -2, 4, -18]);
ECSearch("36.4-b",(-16*w + 126)*OK,[-1, 1, -1, 4, 1, 4, 3, 9, -5, -10, -4, -4, 9, 6, 2, -8, 16, 4, 10, -5, -2, 2, 9, -6, 1, 14, 15]);
ECSearch("36.4-c",(-16*w + 126)*OK,[-1, 1, -1, 2, -3, 6, 1, 5, 1, -8, 4, 10, -9, -12, -14, -8, 0, 6, 0, -9, -12, -6, 1, -8, -15, -6, 1]);
ECSearch("36.4-d",(-16*w + 126)*OK,[-2, 2, 2, -2, -4, -2, 6, 0, -10, 4, 16, -2, 12, 0, 10, 14, 4, 8, 10, -4, 4, -14, 0, 6, -2, 4, -18]);
ECSearch("36.4-e",(-16*w + 126)*OK,[0, 0, -4, 0, -8, 0, 6, 4, -8, 12, 4, -12, -8, 8, 4, 4, 8, -12, -16, 0, 4, 12, 14, -2, -2, -14, 10]);
ECSearch("36.4-f",(-16*w + 126)*OK,[1, 1, 1, -2, 3, -6, 1, -5, -1, 8, 4, 10, -9, -12, 14, 8, 0, -6, 0, 9, -12, -6, 1, -8, -15, -6, 1]);
ECSearch("36.4-g",(-16*w + 126)*OK,[1, 1, 1, -4, -1, -4, 3, -9, 5, 10, -4, -4, 9, 6, -2, 8, -16, -4, -10, 5, -2, 2, 9, -6, 1, 14, 15]);
ECSearch("36.4-h",(-16*w + 126)*OK,[1, -1, -1, 2, 3, 6, -1, 5, -1, 8, -4, -10, -9, 12, 14, 8, 0, -6, 0, 9, -12, 6, -1, 8, -15, 6, -1]);
ECSearch("36.4-i",(-16*w + 126)*OK,[-1, -1, 1, 4, -3, 0, -7, -5, 7, -2, -4, -4, -3, 6, -14, 4, 12, 0, 6, -9, -6, -6, 11, -10, 9, -18, 5]);
ECSearch("36.4-j",(-16*w + 126)*OK,[0, 0, 4, 0, 8, 0, 6, -4, 8, -12, 4, -12, -8, 8, -4, -4, -8, 12, 16, 0, 4, 12, 14, -2, -2, -14, 10]);
ECSearch("36.4-k",(-16*w + 126)*OK,[1, -1, -1, -4, 3, 0, -7, 5, -7, 2, -4, -4, -3, 6, 14, -4, -12, 0, -6, 9, -6, -6, 11, -10, 9, -18, 5]);
ECSearch("36.4-l",(-16*w + 126)*OK,[-2, -2, -2, 2, -4, 2, -6, 0, -10, 4, -16, 2, 12, 0, 10, 14, -4, 8, -10, -4, 4, 14, 0, -6, -2, -4, 18]);
ECSearch("36.4-m",(-16*w + 126)*OK,[-1, -1, 1, -2, -3, -6, -1, -5, 1, -8, -4, -10, -9, 12, -14, -8, 0, 6, 0, -9, -12, 6, -1, 8, -15, 6, -1]);
ECSearch("36.4-n",(-16*w + 126)*OK,[3, -3, -1, 6, 7, 0, 3, 7, 7, 0, -8, 6, -11, -10, 10, 10, 2, 12, -16, 9, -14, 0, -13, -20, -11, 4, 19]);
ECSearch("36.4-o",(-16*w + 126)*OK,[2, -2, 2, -2, 4, -2, -6, 0, 10, -4, -16, 2, 12, 0, -10, -14, 4, -8, 10, 4, 4, 14, 0, -6, -2, -4, 18]);
ECSearch("36.4-p",(-16*w + 126)*OK,[1, -4, -4, -4, -6, 6, -7, -4, -10, -10, 11, 11, -6, 6, -7, -7, 9, -9, -15, 15, 3, -3, -16, -16, -9, 9, -10]);
ECSearch("36.4-q",(-16*w + 126)*OK,[2, -4, -2, -2, 0, 0, -10, 4, 10, 10, -4, -4, 0, 0, -8, -8, 6, -6, 12, -12, -12, 12, 14, 14, -6, 6, -10]);
ECSearch("36.4-r",(-16*w + 126)*OK,[-3, -3, 1, -6, -7, 0, 3, -7, -7, 0, -8, 6, -11, -10, -10, -10, -2, -12, 16, -9, -14, 0, -13, -20, -11, 4, 19]);
ECSearch("36.4-s",(-16*w + 126)*OK,[-2, -4, 2, 2, 0, 0, -10, -4, -10, -10, -4, -4, 0, 0, 8, 8, -6, 6, -12, 12, -12, 12, 14, 14, -6, 6, -10]);
ECSearch("36.4-t",(-16*w + 126)*OK,[-1, -4, 4, 4, 6, -6, -7, 4, 10, 10, 11, 11, -6, 6, 7, 7, -9, 9, 15, -15, 3, -3, -16, -16, -9, 9, -10]);
ECSearch("36.3-a",(-45*w + 354)*OK,[-1, -2, -6, 6, 4, -6, 2, -8, 4, 4, -2, -14, 12, -14, 4, 0, 4, 0, 10, 12, 4, -10, 14, -18, 14, -18, 14]);
ECSearch("36.3-b",(-45*w + 354)*OK,[-1, -2, 6, -6, -4, 6, 2, 8, -4, -4, -2, -14, 12, -14, -4, 0, -4, 0, -10, -12, 4, -10, 14, -18, 14, -18, 14]);
ECSearch("36.5-a",(16*w + 110)*OK,[2, 2, 2, -2, 2, 4, 6, 0, -4, 10, -2, 16, 0, 12, -14, -10, -8, -4, 4, -10, -14, 4, 6, 0, 4, -2, -18]);
ECSearch("36.5-b",(16*w + 110)*OK,[-1, 1, 4, -1, 4, 1, 3, 9, -10, -5, -4, -4, 6, 9, -8, 2, 4, 16, -5, 10, 2, -2, -6, 9, 14, 1, 15]);
ECSearch("36.5-c",(16*w + 110)*OK,[-1, 1, 2, -1, 6, -3, 1, 5, -8, 1, 10, 4, -12, -9, -8, -14, 6, 0, -9, 0, -6, -12, -8, 1, -6, -15, 1]);
ECSearch("36.5-d",(16*w + 110)*OK,[-2, 2, -2, 2, -2, -4, 6, 0, 4, -10, -2, 16, 0, 12, 14, 10, 8, 4, -4, 10, -14, 4, 6, 0, 4, -2, -18]);
ECSearch("36.5-e",(16*w + 110)*OK,[0, 0, 0, -4, 0, -8, 6, 4, 12, -8, -12, 4, 8, -8, 4, 4, -12, 8, 0, -16, 12, 4, -2, 14, -14, -2, 10]);
ECSearch("36.5-f",(16*w + 110)*OK,[1, 1, -2, 1, -6, 3, 1, -5, 8, -1, 10, 4, -12, -9, 8, 14, -6, 0, 9, 0, -6, -12, -8, 1, -6, -15, 1]);
ECSearch("36.5-g",(16*w + 110)*OK,[1, 1, -4, 1, -4, -1, 3, -9, 10, 5, -4, -4, 6, 9, 8, -2, -4, -16, 5, -10, 2, -2, -6, 9, 14, 1, 15]);
ECSearch("36.5-h",(16*w + 110)*OK,[1, -1, 2, -1, 6, 3, -1, 5, 8, -1, -10, -4, 12, -9, 8, 14, -6, 0, 9, 0, 6, -12, 8, -1, 6, -15, -1]);
ECSearch("36.5-i",(16*w + 110)*OK,[-1, -1, 4, 1, 0, -3, -7, -5, -2, 7, -4, -4, 6, -3, 4, -14, 0, 12, -9, 6, -6, -6, -10, 11, -18, 9, 5]);
ECSearch("36.5-j",(16*w + 110)*OK,[0, 0, 0, 4, 0, 8, 6, -4, -12, 8, -12, 4, 8, -8, -4, -4, 12, -8, 0, 16, 12, 4, -2, 14, -14, -2, 10]);
ECSearch("36.5-k",(16*w + 110)*OK,[1, -1, -4, -1, 0, 3, -7, 5, 2, -7, -4, -4, 6, -3, -4, 14, 0, -12, 9, -6, -6, -6, -10, 11, -18, 9, 5]);
ECSearch("36.5-l",(16*w + 110)*OK,[-2, -2, 2, -2, 2, -4, -6, 0, 4, -10, 2, -16, 0, 12, 14, 10, 8, -4, -4, -10, 14, 4, -6, 0, -4, -2, 18]);
ECSearch("36.5-m",(16*w + 110)*OK,[-1, -1, -2, 1, -6, -3, -1, -5, -8, 1, -10, -4, 12, -9, -8, -14, 6, 0, -9, 0, 6, -12, 8, -1, 6, -15, -1]);
ECSearch("36.5-n",(16*w + 110)*OK,[3, -3, 6, -1, 0, 7, 3, 7, 0, 7, 6, -8, -10, -11, 10, 10, 12, 2, 9, -16, 0, -14, -20, -13, 4, -11, 19]);
ECSearch("36.5-o",(16*w + 110)*OK,[2, -2, -2, 2, -2, 4, -6, 0, -4, 10, 2, -16, 0, 12, -14, -10, -8, 4, 4, 10, 14, 4, -6, 0, -4, -2, 18]);
ECSearch("36.5-p",(16*w + 110)*OK,[1, -4, -4, -4, 6, -6, -7, -4, -10, -10, 11, 11, 6, -6, -7, -7, -9, 9, 15, -15, -3, 3, -16, -16, 9, -9, -10]);
ECSearch("36.5-q",(16*w + 110)*OK,[2, -4, -2, -2, 0, 0, -10, 4, 10, 10, -4, -4, 0, 0, -8, -8, -6, 6, -12, 12, 12, -12, 14, 14, 6, -6, -10]);
ECSearch("36.5-r",(16*w + 110)*OK,[-3, -3, -6, 1, 0, -7, 3, -7, 0, -7, 6, -8, -10, -11, -10, -10, -12, -2, -9, 16, 0, -14, -20, -13, 4, -11, 19]);
ECSearch("36.5-s",(16*w + 110)*OK,[-2, -4, 2, 2, 0, 0, -10, -4, -10, -10, -4, -4, 0, 0, 8, 8, 6, -6, 12, -12, 12, -12, 14, 14, 6, -6, -10]);
ECSearch("36.5-t",(16*w + 110)*OK,[-1, -4, 4, 4, -6, 6, -7, 4, 10, 10, 11, 11, 6, -6, 7, 7, 9, -9, -15, 15, -3, 3, -16, -16, 9, -9, -10]);