print "Field 2.2.165.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 41);
OK := Integers(K);
Plist := [];
Append(~Plist,(3)*OK+(w + 1)*OK);
Append(~Plist,(2)*OK);
Append(~Plist,(5)*OK+(w + 2)*OK);
Append(~Plist,(7)*OK+(w + 2)*OK);
Append(~Plist,(7)*OK+(w + 4)*OK);
Append(~Plist,(w + 5)*OK);
Append(~Plist,(13)*OK+(w + 1)*OK);
Append(~Plist,(13)*OK+(w + 11)*OK);
Append(~Plist,(23)*OK+(w + 10)*OK);
Append(~Plist,(23)*OK+(w + 12)*OK);
Append(~Plist,(w + 3)*OK);
Append(~Plist,(w - 4)*OK);
Append(~Plist,(w + 8)*OK);
Append(~Plist,(w - 9)*OK);
Append(~Plist,(w)*OK);
Append(~Plist,(w - 1)*OK);
Append(~Plist,(43)*OK+(w + 18)*OK);
Append(~Plist,(43)*OK+(w + 24)*OK);
Append(~Plist,(47)*OK+(w + 13)*OK);
Append(~Plist,(47)*OK+(w + 33)*OK);
Append(~Plist,(53)*OK+(w + 17)*OK);
Append(~Plist,(53)*OK+(w + 35)*OK);
Append(~Plist,(73)*OK+(w + 23)*OK);
Append(~Plist,(73)*OK+(w + 49)*OK);
Append(~Plist,(-2*w + 9)*OK);
Append(~Plist,(2*w + 7)*OK);
Append(~Plist,(113)*OK+(w + 19)*OK);
Append(~Plist,(113)*OK+(w + 93)*OK);
Append(~Plist,(127)*OK+(w + 30)*OK);
Append(~Plist,(127)*OK+(w + 96)*OK);
Append(~Plist,(-3*w + 17)*OK);
Append(~Plist,(3*w + 14)*OK);
Append(~Plist,(137)*OK+(w + 56)*OK);
Append(~Plist,(137)*OK+(w + 80)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(2*w + 3)*OK);
Append(~Plist,(-3*w + 25)*OK);
Append(~Plist,(3*w + 22)*OK);
Append(~Plist,(193)*OK+(w + 50)*OK);
Append(~Plist,(193)*OK+(w + 142)*OK);
Append(~Plist,(w + 15)*OK);
Append(~Plist,(w - 16)*OK);
Append(~Plist,(-3*w - 23)*OK);
Append(~Plist,(3*w - 26)*OK);
Append(~Plist,(-3*w - 10)*OK);
Append(~Plist,(3*w - 13)*OK);
Append(~Plist,(257)*OK+(w + 28)*OK);
Append(~Plist,(257)*OK+(w + 228)*OK);
Append(~Plist,(277)*OK+(w + 44)*OK);
Append(~Plist,(277)*OK+(w + 232)*OK);
Append(~Plist,(-3*w + 11)*OK);
Append(~Plist,(3*w + 8)*OK);
Append(~Plist,(283)*OK+(w + 110)*OK);
Append(~Plist,(283)*OK+(w + 172)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(307)*OK+(w + 63)*OK);
Append(~Plist,(307)*OK+(w + 243)*OK);
Append(~Plist,(317)*OK+(w + 31)*OK);
Append(~Plist,(317)*OK+(w + 285)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(3*w + 25)*OK);
Append(~Plist,(337)*OK+(w + 66)*OK);
Append(~Plist,(337)*OK+(w + 270)*OK);
Append(~Plist,(353)*OK+(w + 42)*OK);
Append(~Plist,(353)*OK+(w + 310)*OK);
Append(~Plist,(-3*w + 5)*OK);
Append(~Plist,(3*w + 2)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(373)*OK+(w + 51)*OK);
Append(~Plist,(373)*OK+(w + 321)*OK);
Append(~Plist,(w + 20)*OK);
Append(~Plist,(w - 21)*OK);
Append(~Plist,(383)*OK+(w + 34)*OK);
Append(~Plist,(383)*OK+(w + 348)*OK);
Append(~Plist,(w + 21)*OK);
Append(~Plist,(w - 22)*OK);
Append(~Plist,(-5*w + 27)*OK);
Append(~Plist,(-5*w - 22)*OK);
Append(~Plist,(443)*OK+(w + 47)*OK);
Append(~Plist,(443)*OK+(w + 395)*OK);
Append(~Plist,(457)*OK+(w + 199)*OK);
Append(~Plist,(457)*OK+(w + 257)*OK);
Append(~Plist,(-6*w + 35)*OK);
Append(~Plist,(6*w + 29)*OK);
Append(~Plist,(467)*OK+(w + 208)*OK);
Append(~Plist,(467)*OK+(w + 258)*OK);
Append(~Plist,(-5*w - 21)*OK);
Append(~Plist,(5*w - 26)*OK);
Append(~Plist,(-4*w + 15)*OK);
Append(~Plist,(4*w + 11)*OK);
Append(~Plist,(-3*w + 31)*OK);
Append(~Plist,(3*w + 28)*OK);
Append(~Plist,(523)*OK+(w + 195)*OK);
Append(~Plist,(523)*OK+(w + 327)*OK);
Append(~Plist,(547)*OK+(w + 153)*OK);
Append(~Plist,(547)*OK+(w + 393)*OK);
Append(~Plist,(-5*w + 24)*OK);
Append(~Plist,(5*w + 19)*OK);
Append(~Plist,(587)*OK+(w + 176)*OK);
Append(~Plist,(587)*OK+(w + 410)*OK);
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

ECSearch("1.1-a",(1)*OK,[-1, 4, 3, 0, 0, 0, 0, 0, -9, -9, 0, 0, -5, -5, 0, 0, 0, 0, 12, 12, -6, -6, 0, 0, 0, 0, 21, 21, 0, 0]);
ECSearch("1.1-b",(1)*OK,[1, 4, -3, 0, 0, 0, 0, 0, 9, 9, 0, 0, -5, -5, 0, 0, 0, 0, -12, -12, 6, 6, 0, 0, 0, 0, -21, -21, 0, 0]);
ECSearch("7.1-a",(7)*OK+(w + 2)*OK,[0, 1, -2, 0, 4, -6, 2, -4, 4, 6, -10, 0, 8, 2, 10, -4, -12, -4, 12, -10, 6, -2, -10, -18, -10, -6, -6, -8, -16]);
ECSearch("7.1-b",(7)*OK+(w + 2)*OK,[0, 1, 2, 0, 4, 6, -2, 4, -4, 6, -10, 0, 8, 2, 10, 4, 12, 4, -12, 10, -6, 2, 10, -18, -10, 6, 6, 8, 16]);
ECSearch("7.1-c",(7)*OK+(w + 2)*OK,[0, 1, -2, 0, -4, 6, -2, -4, 4, -6, 10, 0, 8, -2, -10, 4, 12, -4, 12, -10, 6, 2, 10, 18, 10, -6, -6, 8, 16]);
ECSearch("7.1-d",(7)*OK+(w + 2)*OK,[0, 1, 2, 0, -4, -6, 2, 4, -4, -6, 10, 0, 8, -2, -10, -4, -12, 4, -12, 10, -6, -2, -10, 18, 10, 6, 6, -8, -16]);
ECSearch("7.2-a",(7)*OK+(w + 4)*OK,[0, 1, -2, 0, 4, 2, -6, 4, -4, -10, 6, 8, 0, 10, 2, -12, -4, 12, -4, 6, -10, -10, -2, -10, -18, -6, -6, -16, -8]);
ECSearch("7.2-b",(7)*OK+(w + 4)*OK,[0, 1, 2, 0, 4, -2, 6, -4, 4, -10, 6, 8, 0, 10, 2, 12, 4, -12, 4, -6, 10, 10, 2, -10, -18, 6, 6, 16, 8]);
ECSearch("7.2-c",(7)*OK+(w + 4)*OK,[0, 1, -2, 0, -4, -2, 6, 4, -4, 10, -6, 8, 0, -10, -2, 12, 4, 12, -4, 6, -10, 10, 2, 10, 18, -6, -6, 16, 8]);
ECSearch("7.2-d",(7)*OK+(w + 4)*OK,[0, 1, 2, 0, -4, 2, -6, -4, 4, 10, -6, 8, 0, -10, -2, -12, -4, -12, 4, -6, 10, -10, -2, 10, 18, 6, 6, -16, -8]);
ECSearch("11.1-a",(w + 5)*OK,[-1, 0, 1, -2, -2, 4, 4, -1, -1, 0, 0, 7, 7, -8, -8, -6, -6, 8, 8, -6, -6, 4, 4, 2, 2, 9, 9, 8, 8]);
ECSearch("11.1-b",(w + 5)*OK,[1, 0, -1, -2, -2, 4, 4, 1, 1, 0, 0, 7, 7, 8, 8, -6, -6, -8, -8, 6, 6, 4, 4, -2, -2, -9, -9, 8, 8]);
ECSearch("11.1-c",(w + 5)*OK,[-1, 0, 1, 2, 2, -4, -4, -1, -1, 0, 0, 7, 7, 8, 8, 6, 6, 8, 8, -6, -6, -4, -4, -2, -2, 9, 9, -8, -8]);
ECSearch("11.1-d",(w + 5)*OK,[1, 0, -1, 2, 2, -4, -4, 1, 1, 0, 0, 7, 7, -8, -8, 6, 6, -8, -8, 6, 6, -4, -4, 2, 2, -9, -9, -8, -8]);
ECSearch("12.1-a",(6)*OK+(2*w + 2)*OK,[0, 0, 0, 0, -6, 6, 6, 6, 6, -6, 4, 4, -6, 6, 6, -6, -6, -6, 12, 12, 12, -12, -6, 6, 6, 6, 12, -12]);
ECSearch("12.1-b",(6)*OK+(2*w + 2)*OK,[0, 0, 0, 0, -6, 6, -6, -6, -6, 6, 4, 4, 6, -6, 6, -6, 6, 6, -12, -12, 12, -12, 6, -6, -6, -6, 12, -12]);
ECSearch("12.1-c",(6)*OK+(2*w + 2)*OK,[0, 0, 0, 0, 6, -6, 6, 6, -6, 6, 4, 4, 6, -6, -6, 6, -6, -6, 12, 12, -12, 12, 6, -6, 6, 6, -12, 12]);
ECSearch("12.1-d",(6)*OK+(2*w + 2)*OK,[0, 0, 0, 0, 6, -6, -6, -6, 6, -6, 4, 4, -6, 6, -6, 6, 6, 6, -12, -12, -12, 12, -6, 6, -6, -6, -12, 12]);
ECSearch("15.1-a",(w - 8)*OK,[3, -2, 2, 0, -4, 4, -4, -4, -6, 6, 8, 8, -6, 6, -6, 6, 8, 8, 6, 6, -16, 16, -14, 14, -6, -6, -2, 2]);
ECSearch("15.1-b",(w - 8)*OK,[3, -2, 2, 0, -4, 4, 4, 4, 6, -6, 8, 8, 6, -6, -6, 6, -8, -8, -6, -6, -16, 16, 14, -14, 6, 6, -2, 2]);
ECSearch("15.1-c",(w - 8)*OK,[-3, 0, 0, -4, -2, -2, 0, 0, -2, -2, 0, 0, 10, 10, 4, 4, 8, 8, -10, -10, 10, 10, 6, 6, 2, 2, -8, -8]);
ECSearch("15.1-d",(w - 8)*OK,[-3, 0, 0, 4, -2, -2, 0, 0, 2, 2, 0, 0, -10, -10, 4, 4, -8, -8, 10, 10, 10, 10, -6, -6, -2, -2, -8, -8]);
ECSearch("15.1-e",(w - 8)*OK,[3, 2, -2, 0, 4, -4, 4, 4, -6, 6, 8, 8, -6, 6, 6, -6, -8, -8, -6, -6, 16, -16, -14, 14, 6, 6, 2, -2]);
ECSearch("15.1-f",(w - 8)*OK,[-3, 0, 0, -4, 2, 2, 0, 0, -2, -2, 0, 0, 10, 10, -4, -4, -8, -8, 10, 10, -10, -10, 6, 6, -2, -2, 8, 8]);
ECSearch("15.1-g",(w - 8)*OK,[-3, 0, 0, 4, 2, 2, 0, 0, 2, 2, 0, 0, -10, -10, -4, -4, 8, 8, -10, -10, -10, -10, -6, -6, 2, 2, 8, 8]);
ECSearch("15.1-h",(w - 8)*OK,[3, 2, -2, 0, 4, -4, -4, -4, 6, -6, 8, 8, 6, -6, 6, -6, 8, 8, 6, 6, 16, -16, 14, -14, -6, -6, 2, -2]);
ECSearch("20.1-a",(10)*OK+(2*w + 4)*OK,[2, 0, 0, 0, -6, 6, -6, -6, 0, 0, 4, 4, -12, 12, -12, 12, -6, -6, -6, -6, -6, 6, -12, 12, -18, -18, 0, 0]);
ECSearch("20.1-b",(10)*OK+(2*w + 4)*OK,[3, -5, 5, 0, -4, 4, -4, -4, 5, -5, -1, -1, -2, 2, -8, 8, 6, 6, 11, 11, 6, -6, 18, -18, 8, 8, 0, 0]);
ECSearch("20.1-c",(10)*OK+(2*w + 4)*OK,[-3, -5, 5, 0, -4, 4, 4, 4, -5, 5, -1, -1, 2, -2, -8, 8, -6, -6, -11, -11, 6, -6, -18, 18, -8, -8, 0, 0]);
ECSearch("20.1-d",(10)*OK+(2*w + 4)*OK,[-2, 0, 0, 0, -6, 6, 6, 6, 0, 0, 4, 4, 12, -12, -12, 12, 6, 6, 6, 6, -6, 6, 12, -12, 18, 18, 0, 0]);
ECSearch("20.1-e",(10)*OK+(2*w + 4)*OK,[-1, -3, 3, 0, 0, 0, 0, 0, -9, 9, -5, -5, 6, -6, 12, -12, -6, -6, 3, 3, -6, 6, 6, -6, 12, 12, 0, 0]);
ECSearch("20.1-f",(10)*OK+(2*w + 4)*OK,[1, -3, 3, 0, 0, 0, 0, 0, 9, -9, -5, -5, -6, 6, 12, -12, 6, 6, -3, -3, -6, 6, -6, 6, -12, -12, 0, 0]);
ECSearch("20.1-g",(10)*OK+(2*w + 4)*OK,[-1, 3, -3, 0, 0, 0, 0, 0, 9, -9, -5, -5, -6, 6, -12, 12, -6, -6, 3, 3, 6, -6, -6, 6, 12, 12, 0, 0]);
ECSearch("20.1-h",(10)*OK+(2*w + 4)*OK,[1, 3, -3, 0, 0, 0, 0, 0, -9, 9, -5, -5, 6, -6, -12, 12, 6, 6, -3, -3, 6, -6, 6, -6, -12, -12, 0, 0]);
ECSearch("20.1-i",(10)*OK+(2*w + 4)*OK,[2, 0, 0, 0, 6, -6, -6, -6, 0, 0, 4, 4, 12, -12, 12, -12, -6, -6, -6, -6, 6, -6, 12, -12, -18, -18, 0, 0]);
ECSearch("20.1-j",(10)*OK+(2*w + 4)*OK,[3, 5, -5, 0, 4, -4, -4, -4, -5, 5, -1, -1, 2, -2, 8, -8, 6, 6, 11, 11, -6, 6, -18, 18, 8, 8, 0, 0]);
ECSearch("20.1-k",(10)*OK+(2*w + 4)*OK,[-3, 5, -5, 0, 4, -4, 4, 4, 5, -5, -1, -1, -2, 2, 8, -8, -6, -6, -11, -11, -6, 6, 18, -18, -8, -8, 0, 0]);
ECSearch("20.1-l",(10)*OK+(2*w + 4)*OK,[-2, 0, 0, 0, 6, -6, 6, 6, 0, 0, 4, 4, -12, 12, 12, -12, 6, 6, 6, 6, 6, -6, -12, 12, 18, 18, 0, 0]);
ECSearch("33.1-a",(33)*OK+(w + 16)*OK,[-3, -2, 4, 4, -2, -2, 8, 8, -6, -6, -8, -8, -2, -2, 0, 0, 8, 8, 6, 6, -14, -14, 2, 2, -6, -6, -4, -4]);
ECSearch("33.1-b",(33)*OK+(w + 16)*OK,[-3, 2, 4, 4, -2, -2, -8, -8, 6, 6, -8, -8, 2, 2, 0, 0, -8, -8, -6, -6, -14, -14, -2, -2, 6, 6, -4, -4]);
ECSearch("33.1-c",(33)*OK+(w + 16)*OK,[-3, -2, -4, -4, 2, 2, 8, 8, 6, 6, -8, -8, 2, 2, 0, 0, 8, 8, 6, 6, 14, 14, -2, -2, -6, -6, 4, 4]);
ECSearch("33.1-d",(33)*OK+(w + 16)*OK,[-3, 2, -4, -4, 2, 2, -8, -8, -6, -6, -8, -8, -2, -2, 0, 0, -8, -8, -6, -6, 14, 14, 2, 2, 6, 6, 4, 4]);
ECSearch("36.1-a",(6)*OK,[-2, 2, -2, 4, 2, -2, 6, -2, -2, -6, 8, -8, -6, 6, 0, 8, 6, -2, -2, -2, -4, -4, -2, -6, 12, -4, -2, 2]);
ECSearch("36.1-b",(6)*OK,[-2, -2, 2, -4, -2, 2, 6, -2, 2, 6, 8, -8, 6, -6, 0, -8, 6, -2, -2, -2, 4, 4, 2, 6, 12, -4, 2, -2]);
ECSearch("36.1-c",(6)*OK,[2, 2, -2, 4, 2, -2, 2, -6, -6, -2, -8, 8, 6, -6, -8, 0, 2, -6, 2, 2, 4, 4, -6, -2, 4, -12, -2, 2]);
ECSearch("36.1-d",(6)*OK,[2, -2, 2, -4, -2, 2, 2, -6, 6, 2, -8, 8, -6, 6, 8, 0, 2, -6, 2, 2, -4, -4, 6, 2, 4, -12, 2, -2]);
ECSearch("36.1-e",(6)*OK,[-2, 2, -2, -4, 2, -2, -2, 6, 6, 2, -8, 8, -6, 6, -8, 0, -2, 6, -2, -2, 4, 4, 6, 2, -4, 12, -2, 2]);
ECSearch("36.1-f",(6)*OK,[-2, -2, 2, 4, -2, 2, -2, 6, -6, -2, -8, 8, 6, -6, 8, 0, -2, 6, -2, -2, -4, -4, -6, -2, -4, 12, 2, -2]);
ECSearch("36.1-g",(6)*OK,[2, 2, -2, -4, 2, -2, -6, 2, 2, 6, 8, -8, 6, -6, 0, 8, -6, 2, 2, 2, -4, -4, 2, 6, -12, 4, -2, 2]);
ECSearch("36.1-h",(6)*OK,[2, -2, 2, 4, -2, 2, -6, 2, -2, -6, 8, -8, -6, 6, 0, -8, -6, 2, 2, 2, 4, 4, -2, -6, -12, 4, 2, -2]);
