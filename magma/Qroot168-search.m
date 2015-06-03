print "Field 2.2.168.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - 42);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK+(w)*OK);
Append(~Plist,(3)*OK+(w)*OK);
Append(~Plist,(w + 7)*OK);
Append(~Plist,(11)*OK+(w + 3)*OK);
Append(~Plist,(11)*OK+(w + 8)*OK);
Append(~Plist,(13)*OK+(w + 4)*OK);
Append(~Plist,(13)*OK+(w + 9)*OK);
Append(~Plist,(w + 5)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(19)*OK+(w + 2)*OK);
Append(~Plist,(19)*OK+(w + 17)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(29)*OK+(w + 10)*OK);
Append(~Plist,(29)*OK+(w + 19)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 1)*OK);
Append(~Plist,(-2*w + 11)*OK);
Append(~Plist,(2*w + 11)*OK);
Append(~Plist,(53)*OK+(w + 25)*OK);
Append(~Plist,(53)*OK+(w + 28)*OK);
Append(~Plist,(61)*OK+(w + 15)*OK);
Append(~Plist,(61)*OK+(w + 46)*OK);
Append(~Plist,(w + 11)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(-3*w + 17)*OK);
Append(~Plist,(-3*w - 17)*OK);
Append(~Plist,(107)*OK+(w + 16)*OK);
Append(~Plist,(107)*OK+(w + 91)*OK);
Append(~Plist,(w + 13)*OK);
Append(~Plist,(w - 13)*OK);
Append(~Plist,(139)*OK+(w + 43)*OK);
Append(~Plist,(139)*OK+(w + 96)*OK);
Append(~Plist,(149)*OK+(w + 41)*OK);
Append(~Plist,(149)*OK+(w + 108)*OK);
Append(~Plist,(-3*w - 23)*OK);
Append(~Plist,(3*w - 23)*OK);
Append(~Plist,(157)*OK+(w + 55)*OK);
Append(~Plist,(157)*OK+(w + 102)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(-2*w - 1)*OK);
Append(~Plist,(179)*OK+(w + 20)*OK);
Append(~Plist,(179)*OK+(w + 159)*OK);
Append(~Plist,(181)*OK+(w + 59)*OK);
Append(~Plist,(181)*OK+(w + 122)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 19)*OK);
Append(~Plist,(197)*OK+(w + 47)*OK);
Append(~Plist,(197)*OK+(w + 150)*OK);
Append(~Plist,(229)*OK+(w + 27)*OK);
Append(~Plist,(229)*OK+(w + 202)*OK);
Append(~Plist,(-3*w + 11)*OK);
Append(~Plist,(3*w + 11)*OK);
Append(~Plist,(283)*OK+(w + 61)*OK);
Append(~Plist,(283)*OK+(w + 222)*OK);
Append(~Plist,(307)*OK+(w + 137)*OK);
Append(~Plist,(307)*OK+(w + 170)*OK);
Append(~Plist,(-4*w + 19)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(317)*OK+(w + 26)*OK);
Append(~Plist,(317)*OK+(w + 291)*OK);
Append(~Plist,(-6*w + 43)*OK);
Append(~Plist,(6*w + 43)*OK);
Append(~Plist,(347)*OK+(w + 70)*OK);
Append(~Plist,(347)*OK+(w + 277)*OK);
Append(~Plist,(349)*OK+(w + 33)*OK);
Append(~Plist,(349)*OK+(w + 316)*OK);
Append(~Plist,(-3*w + 5)*OK);
Append(~Plist,(3*w + 5)*OK);
Append(~Plist,(-4*w - 17)*OK);
Append(~Plist,(4*w - 17)*OK);
Append(~Plist,(389)*OK+(w + 141)*OK);
Append(~Plist,(389)*OK+(w + 248)*OK);
Append(~Plist,(397)*OK+(w + 162)*OK);
Append(~Plist,(397)*OK+(w + 235)*OK);
Append(~Plist,(443)*OK+(w + 186)*OK);
Append(~Plist,(443)*OK+(w + 257)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 25)*OK);
Append(~Plist,(-3*w - 29)*OK);
Append(~Plist,(3*w - 29)*OK);
Append(~Plist,(-8*w + 47)*OK);
Append(~Plist,(-8*w - 47)*OK);
Append(~Plist,(w + 23)*OK);
Append(~Plist,(w - 23)*OK);
Append(~Plist,(491)*OK+(w + 32)*OK);
Append(~Plist,(491)*OK+(w + 459)*OK);
Append(~Plist,(-4*w - 13)*OK);
Append(~Plist,(4*w - 13)*OK);
Append(~Plist,(5*w + 23)*OK);
Append(~Plist,(5*w - 23)*OK);
Append(~Plist,(523)*OK+(w + 105)*OK);
Append(~Plist,(523)*OK+(w + 418)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(557)*OK+(w + 34)*OK);
Append(~Plist,(557)*OK+(w + 523)*OK);
Append(~Plist,(-9*w + 53)*OK);
Append(~Plist,(-9*w - 53)*OK);
Append(~Plist,(619)*OK+(w + 287)*OK);
Append(~Plist,(619)*OK+(w + 332)*OK);
Append(~Plist,(-5*w + 41)*OK);
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

ECSearch("6.1-a",(w - 6)*OK,[-1, -3, 0, 5, -4, 3, 6, -7, 2, -1, 6, 0, 9, -6, 9, 6, -3, 3, 8, -1, -1, 8, 6, 12, 0, 0, -16, 2]);
ECSearch("6.1-b",(w - 6)*OK,[-1, 0, -3, 4, -5, -6, -3, -2, 7, -1, 0, 6, 6, -9, -6, -9, 3, -3, 1, -8, 8, -1, -12, -6, 0, 0, 2, -16]);
ECSearch("6.1-c",(w - 6)*OK,[-1, 3, 0, 5, -4, -3, -6, -7, 2, -1, -6, 0, -9, 6, -9, -6, 3, -3, 8, -1, -1, 8, -6, -12, 0, 0, -16, 2]);
ECSearch("6.1-d",(w - 6)*OK,[-1, 0, 3, 4, -5, 6, 3, -2, 7, -1, 0, -6, -6, 9, 6, 9, -3, 3, 1, -8, 8, -1, 12, 6, 0, 0, 2, -16]);
ECSearch("6.1-e",(w - 6)*OK,[-1, 0, -3, -4, 5, 6, 3, 2, -7, -1, 0, 6, -6, 9, 6, 9, 3, -3, -1, 8, 8, -1, 12, 6, 0, 0, 2, -16]);
ECSearch("6.1-f",(w - 6)*OK,[-1, -3, 0, -5, 4, -3, -6, 7, -2, -1, 6, 0, -9, 6, -9, -6, -3, 3, -8, 1, -1, 8, -6, -12, 0, 0, -16, 2]);
ECSearch("6.1-g",(w - 6)*OK,[-1, 0, 3, -4, 5, -6, -3, 2, -7, -1, 0, -6, 6, -9, -6, -9, -3, 3, -1, 8, 8, -1, -12, -6, 0, 0, 2, -16]);
ECSearch("6.1-h",(w - 6)*OK,[-1, 3, 0, -5, 4, 3, 6, 7, -2, -1, -6, 0, 9, -6, 9, 6, 3, -3, -8, 1, -1, 8, 6, 12, 0, 0, -16, 2]);
ECSearch("9.1-a",(3)*OK,[2, -2, 0, 0, -4, 4, 2, -2, -4, 4, -6, -6, -6, 2, -2, -12, 12, 6, 6, 0, 0, -10, -10, -10, 10, -12, -12, -2, -2]);
ECSearch("9.1-b",(3)*OK,[-2, -2, 0, 0, -4, 4, -2, 2, -4, 4, -6, 6, 6, -2, 2, 12, -12, -6, -6, 0, 0, -10, -10, 10, -10, 12, 12, -2, -2]);
ECSearch("9.1-c",(3)*OK,[-2, -2, 0, 0, 4, -4, 2, -2, 4, -4, -6, 6, 6, 2, -2, -12, 12, -6, -6, 0, 0, -10, -10, -10, 10, 12, 12, -2, -2]);
ECSearch("9.1-d",(3)*OK,[2, -2, 0, 0, 4, -4, -2, 2, 4, -4, -6, -6, -6, -2, 2, 12, -12, 6, 6, 0, 0, -10, -10, 10, -10, -12, -12, -2, -2]);
ECSearch("14.1-a",(14)*OK+(w)*OK,[1, -3, 6, -4, 5, -6, 0, -4, -1, 8, 3, 6, 12, -3, 6, 0, -3, 6, -1, 8, 5, -16, 15, 0, 0, -3, -4, -1]);
ECSearch("14.1-b",(14)*OK+(w)*OK,[-2, 0, 0, -4, -4, -6, -6, 2, 2, -10, 6, 6, -6, -6, 12, 12, -6, -6, 8, 8, 8, 8, 6, 6, -12, -12, -16, -16]);
ECSearch("14.1-c",(14)*OK+(w)*OK,[2, 0, 0, 4, 4, -6, -6, -2, -2, -10, -6, -6, -6, -6, 12, 12, 6, 6, -8, -8, 8, 8, 6, 6, 12, 12, -16, -16]);
ECSearch("14.1-d",(14)*OK+(w)*OK,[-1, 3, -6, 4, -5, -6, 0, 4, 1, 8, -3, -6, 12, -3, 6, 0, 3, -6, 1, -8, 5, -16, 15, 0, 0, 3, -4, -1]);
ECSearch("14.1-e",(14)*OK+(w)*OK,[-1, -6, 3, -5, 4, 0, -6, 1, 4, 8, -6, -3, -3, 12, 0, 6, -6, 3, -8, 1, -16, 5, 0, 15, 3, 0, -1, -4]);
ECSearch("14.1-f",(14)*OK+(w)*OK,[1, -6, 3, 5, -4, 0, 6, -1, -4, 8, -6, -3, 3, -12, 0, -6, -6, 3, 8, -1, -16, 5, 0, -15, 3, 0, -1, -4]);
ECSearch("14.1-g",(14)*OK+(w)*OK,[-1, 6, -3, -5, 4, 0, 6, 1, 4, 8, 6, 3, 3, -12, 0, -6, 6, -3, -8, 1, -16, 5, 0, -15, -3, 0, -1, -4]);
ECSearch("14.1-h",(14)*OK+(w)*OK,[1, 6, -3, 5, -4, 0, -6, -1, -4, 8, 6, 3, -3, 12, 0, 6, 6, -3, 8, -1, -16, 5, 0, 15, -3, 0, -1, -4]);
ECSearch("14.1-i",(14)*OK+(w)*OK,[-1, -3, 6, 4, -5, 6, 0, 4, 1, 8, 3, 6, -12, 3, -6, 0, -3, 6, 1, -8, 5, -16, -15, 0, 0, -3, -4, -1]);
ECSearch("14.1-j",(14)*OK+(w)*OK,[-2, 0, 0, -4, -4, 6, 6, 2, 2, -10, -6, -6, 6, 6, -12, -12, 6, 6, 8, 8, 8, 8, -6, -6, 12, 12, -16, -16]);
ECSearch("14.1-k",(14)*OK+(w)*OK,[2, 0, 0, 4, 4, 6, 6, -2, -2, -10, 6, 6, 6, 6, -12, -12, -6, -6, -8, -8, 8, 8, -6, -6, -12, -12, -16, -16]);
ECSearch("14.1-l",(14)*OK+(w)*OK,[1, 3, -6, -4, 5, 6, 0, -4, -1, 8, -3, -6, -12, 3, -6, 0, 3, -6, -1, 8, 5, -16, -15, 0, 0, 3, -4, -1]);
ECSearch("18.1-a",(6)*OK+(3*w)*OK,[3, 0, 5, 4, 1, 2, 3, -6, 1, -1, -4, 6, 2, -7, -2, -3, -1, 9, -5, 0, 0, -5, 0, -10, 12, -8, -2, 8]);
ECSearch("18.1-b",(6)*OK+(3*w)*OK,[3, 5, 0, 1, 4, 3, 2, 1, -6, -1, 6, -4, -7, 2, -3, -2, 9, -1, 0, -5, -5, 0, -10, 0, -8, 12, 8, -2]);
ECSearch("18.1-c",(6)*OK+(3*w)*OK,[3, 5, 0, -1, -4, -3, -2, -1, 6, -1, 6, -4, 7, -2, 3, 2, 9, -1, 0, 5, -5, 0, 10, 0, -8, 12, 8, -2]);
ECSearch("18.1-d",(6)*OK+(3*w)*OK,[3, 0, -5, 4, 1, -2, -3, -6, 1, -1, 4, -6, -2, 7, 2, 3, 1, -9, -5, 0, 0, -5, 0, 10, -12, 8, -2, 8]);
ECSearch("18.1-e",(6)*OK+(3*w)*OK,[3, -5, 0, -1, -4, 3, 2, -1, 6, -1, -6, 4, -7, 2, -3, -2, -9, 1, 0, 5, -5, 0, -10, 0, 8, -12, 8, -2]);
ECSearch("18.1-f",(6)*OK+(3*w)*OK,[3, 0, -5, -4, -1, 2, 3, 6, -1, -1, 4, -6, 2, -7, -2, -3, 1, -9, 5, 0, 0, -5, 0, -10, -12, 8, -2, 8]);
ECSearch("18.1-g",(6)*OK+(3*w)*OK,[3, -5, 0, 1, 4, -3, -2, 1, -6, -1, -6, 4, 7, -2, 3, 2, -9, 1, 0, -5, -5, 0, 10, 0, 8, -12, 8, -2]);
ECSearch("18.1-h",(6)*OK+(3*w)*OK,[3, 0, 5, -4, -1, -2, -3, 6, -1, -1, -4, 6, -2, 7, 2, 3, -1, 9, 5, 0, 0, -5, 0, 10, 12, -8, -2, 8]);
ECSearch("21.1-a",(21)*OK+(w)*OK,[1, -4, -4, 2, 2, -6, -6, -4, -4, -6, 2, 2, 2, 2, 0, 0, -6, -6, 2, 2, -16, -16, -14, -14, -4, -4, 0, 0]);
ECSearch("21.1-b",(21)*OK+(w)*OK,[1, -4, -4, -2, -2, 6, 6, 4, 4, -6, 2, 2, -2, -2, 0, 0, -6, -6, -2, -2, -16, -16, 14, 14, -4, -4, 0, 0]);
ECSearch("21.1-c",(21)*OK+(w)*OK,[-1, 4, 4, 2, 2, 6, 6, -4, -4, -6, -2, -2, -2, -2, 0, 0, 6, 6, 2, 2, -16, -16, 14, 14, 4, 4, 0, 0]);
ECSearch("21.1-d",(21)*OK+(w)*OK,[-1, 4, 4, -2, -2, -6, -6, 4, 4, -6, -2, -2, 2, 2, 0, 0, 6, 6, -2, -2, -16, -16, -14, -14, 4, 4, 0, 0]);
ECSearch("24.1-a",(2*w - 12)*OK,[0, -4, -4, 2, 2, 2, 2, 4, 4, -6, -6, -6, -6, -6, 0, 0, 2, 2, 2, 2, -8, -8, -6, -6, 12, 12, -8, -8]);
ECSearch("24.1-b",(2*w - 12)*OK,[0, -4, -4, -2, -2, -2, -2, -4, -4, -6, -6, -6, 6, 6, 0, 0, 2, 2, -2, -2, -8, -8, 6, 6, 12, 12, -8, -8]);
ECSearch("24.1-c",(2*w - 12)*OK,[0, 4, 4, 2, 2, -2, -2, 4, 4, -6, 6, 6, 6, 6, 0, 0, -2, -2, 2, 2, -8, -8, 6, 6, -12, -12, -8, -8]);
ECSearch("24.1-d",(2*w - 12)*OK,[0, 4, 4, -2, -2, 2, 2, -4, -4, -6, 6, 6, -6, -6, 0, 0, -2, -2, -2, -2, -8, -8, -6, -6, -12, -12, -8, -8]);
ECSearch("25.1-a",(5)*OK,[-2, 0, -4, -2, -2, -6, 6, 6, -6, -4, 4, -6, -6, -4, 4, 4, -4, 10, 10, -4, 4, 2, 2, 4, -4, 20, 20, 0, 0]);
ECSearch("25.1-b",(5)*OK,[2, 0, -4, 2, 2, 6, -6, 6, -6, 4, -4, 6, 6, -4, 4, 4, -4, -10, -10, 4, -4, 2, 2, 4, -4, -20, -20, 0, 0]);
ECSearch("25.1-c",(5)*OK,[2, 0, -4, 2, 2, -6, 6, -6, 6, -4, 4, 6, 6, 4, -4, -4, 4, -10, -10, -4, 4, 2, 2, -4, 4, -20, -20, 0, 0]);
ECSearch("25.1-d",(5)*OK,[-2, 0, -4, -2, -2, 6, -6, -6, 6, 4, -4, -6, -6, 4, -4, -4, 4, 10, 10, 4, -4, 2, 2, -4, 4, 20, 20, 0, 0]);
ECSearch("32.1-a",(8)*OK+(4*w)*OK,[0, 0, 0, 0, 6, 6, 2, 2, 0, 0, -6, -10, -10, 10, 10, 0, 0, 14, 14, -10, -10, 0, 0, 10, 10, 0, 0, 0, 0]);
ECSearch("32.1-b",(8)*OK+(4*w)*OK,[0, 0, 0, 0, 6, 6, -2, -2, 0, 0, -6, 10, 10, -10, -10, 0, 0, -14, -14, -10, -10, 0, 0, -10, -10, 0, 0, 0, 0]);
ECSearch("32.1-c",(8)*OK+(4*w)*OK,[0, 0, 0, 0, -6, -6, 2, 2, 0, 0, -6, 10, 10, 10, 10, 0, 0, -14, -14, 10, 10, 0, 0, 10, 10, 0, 0, 0, 0]);
ECSearch("32.1-d",(8)*OK+(4*w)*OK,[0, 0, 0, 0, -6, -6, -2, -2, 0, 0, -6, -10, -10, -10, -10, 0, 0, 14, 14, 10, 10, 0, 0, -10, -10, 0, 0, 0, 0]);
ECSearch("36.1-a",(6)*OK,[0, -2, -6, -2, -2, -6, -2, -8, 0, 2, 0, -8, 10, -2, -12, -4, -12, 4, -6, 10, 16, 0, -2, -6, 2, 6, -16, 16]);
ECSearch("36.1-b",(6)*OK,[0, -6, -2, -2, -2, -2, -6, 0, -8, 2, -8, 0, -2, 10, -4, -12, 4, -12, 10, -6, 0, 16, -6, -2, 6, 2, 16, -16]);
ECSearch("36.1-c",(6)*OK,[0, 2, 6, 2, 2, -6, -2, 8, 0, 2, 0, 8, 10, -2, -12, -4, 12, -4, 6, -10, 16, 0, -2, -6, -2, -6, -16, 16]);
ECSearch("36.1-d",(6)*OK,[0, 6, 2, 2, 2, -2, -6, 0, 8, 2, 8, 0, -2, 10, -4, -12, -4, 12, -10, 6, 0, 16, -6, -2, -6, -2, 16, -16]);
ECSearch("36.1-e",(6)*OK,[-4, 0, 0, 2, 2, 0, 0, 8, 8, -10, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, -4, -4, 0, 0, 0, 0, 20, 20]);
ECSearch("36.1-f",(6)*OK,[0, -6, -2, 2, 2, 2, 6, 0, 8, 2, -8, 0, 2, -10, 4, 12, 4, -12, -10, 6, 0, 16, 6, 2, 6, 2, 16, -16]);
ECSearch("36.1-g",(6)*OK,[-4, 0, 0, -2, -2, 0, 0, -8, -8, -10, 0, 0, 0, 0, 0, 0, 0, 0, -14, -14, -4, -4, 0, 0, 0, 0, 20, 20]);
ECSearch("36.1-h",(6)*OK,[0, -2, -6, 2, 2, 6, 2, 8, 0, 2, 0, -8, -10, 2, 12, 4, -12, 4, 6, -10, 16, 0, 2, 6, 2, 6, -16, 16]);
ECSearch("36.1-i",(6)*OK,[0, 6, 2, -2, -2, 2, 6, 0, -8, 2, 8, 0, 2, -10, 4, 12, -4, 12, 10, -6, 0, 16, 6, 2, -6, -2, 16, -16]);
ECSearch("36.1-j",(6)*OK,[0, 2, 6, -2, -2, 6, 2, -8, 0, 2, 0, 8, -10, 2, 12, 4, 12, -4, -6, 10, 16, 0, 2, 6, -2, -6, -16, 16]);
ECSearch("38.1-a",(w + 2)*OK,[-2, -4, 0, 3, 2, 5, 0, -6, 5, 2, 6, 3, -3, 12, -3, 3, 9, -9, 8, 11, -1, -4, -6, 6, 12, 12, 5, -22]);
ECSearch("38.1-b",(w + 2)*OK,[2, -4, 0, 3, -2, -5, 0, 6, -5, 2, 6, 3, 3, -12, 3, -3, 9, -9, -8, -11, -1, -4, 6, -6, 12, 12, 5, -22]);
ECSearch("38.1-c",(w + 2)*OK,[-2, -4, 0, -3, 2, 5, 0, 6, 5, 2, -6, -3, 3, -12, 3, -3, -9, 9, 8, 11, -1, -4, 6, -6, -12, -12, 5, -22]);
ECSearch("38.1-d",(w + 2)*OK,[2, -4, 0, -3, -2, -5, 0, -6, -5, 2, -6, -3, -3, 12, -3, 3, -9, 9, -8, -11, -1, -4, -6, 6, -12, -12, 5, -22]);
ECSearch("38.2-a",(w - 2)*OK,[-2, -4, 3, 0, 5, 2, -6, 0, 5, 2, 3, 6, 12, -3, 3, -3, -9, 9, 11, 8, -4, -1, 6, -6, 12, 12, -22, 5]);
ECSearch("38.2-b",(w - 2)*OK,[2, -4, 3, 0, -5, -2, 6, 0, -5, 2, 3, 6, -12, 3, -3, 3, -9, 9, -11, -8, -4, -1, -6, 6, 12, 12, -22, 5]);
ECSearch("38.2-c",(w - 2)*OK,[-2, -4, -3, 0, 5, 2, 6, 0, 5, 2, -3, -6, -12, 3, -3, 3, 9, -9, 11, 8, -4, -1, -6, 6, -12, -12, -22, 5]);
ECSearch("38.2-d",(w - 2)*OK,[2, -4, -3, 0, -5, -2, -6, 0, -5, 2, -3, -6, 12, -3, 3, -3, 9, -9, -11, -8, -4, -1, 6, -6, -12, -12, -22, 5]);
ECSearch("42.1-a",(w)*OK,[-4, -4, 6, 6, 2, 2, -4, -4, -6, -2, -2, -6, -6, 0, 0, 6, 6, 6, 6, 0, 0, -6, -6, 12, 12, 0, 0]);
ECSearch("42.1-b",(w)*OK,[-1, -2, 0, 6, -5, 1, -1, 6, -2, -6, 2, -2, -2, 0, -1, 14, 3, -2, 4, -11, -10, -15, -10, -17, 0, 4, 16]);
ECSearch("42.1-c",(w)*OK,[-2, -1, 6, 0, 1, -5, 6, -1, -2, 2, -6, -2, -2, -1, 0, 3, 14, 4, -2, -10, -11, -10, -15, 0, -17, 16, 4]);
ECSearch("42.1-d",(w)*OK,[1, 2, 0, 6, 5, -1, -1, 6, -2, 6, -2, 2, 2, 0, 1, -14, -3, -2, 4, -11, -10, 15, 10, 17, 0, 4, 16]);
ECSearch("42.1-e",(w)*OK,[4, 4, 6, 6, -2, -2, -4, -4, -6, 2, 2, 6, 6, 0, 0, -6, -6, 6, 6, 0, 0, 6, 6, -12, -12, 0, 0]);
ECSearch("42.1-f",(w)*OK,[2, 1, 6, 0, -1, 5, 6, -1, -2, -2, 6, 2, 2, 1, 0, -3, -14, 4, -2, -10, -11, 10, 15, 0, 17, 16, 4]);
ECSearch("42.1-g",(w)*OK,[-2, -1, -6, 0, -1, 5, -6, 1, -2, 2, -6, 2, 2, 1, 0, 3, 14, -4, 2, -10, -11, 10, 15, 0, -17, 16, 4]);
ECSearch("42.1-h",(w)*OK,[-4, -4, -6, -6, -2, -2, 4, 4, -6, -2, -2, 6, 6, 0, 0, 6, 6, -6, -6, 0, 0, 6, 6, 12, 12, 0, 0]);
ECSearch("42.1-i",(w)*OK,[-1, -2, 0, -6, 5, -1, 1, -6, -2, -6, 2, 2, 2, 0, 1, 14, 3, 2, -4, -11, -10, 15, 10, -17, 0, 4, 16]);
ECSearch("42.1-j",(w)*OK,[2, 1, -6, 0, 1, -5, -6, 1, -2, -2, 6, -2, -2, -1, 0, -3, -14, -4, 2, -10, -11, -10, -15, 0, 17, 16, 4]);
ECSearch("42.1-k",(w)*OK,[1, 2, 0, -6, -5, 1, 1, -6, -2, 6, -2, -2, -2, 0, -1, -14, -3, 2, -4, -11, -10, -15, -10, 17, 0, 4, 16]);
ECSearch("42.1-l",(w)*OK,[4, 4, -6, -6, 2, 2, 4, 4, -6, 2, 2, -6, -6, 0, 0, -6, -6, -6, -6, 0, 0, -6, -6, -12, -12, 0, 0]);
ECSearch("44.1-a",(22)*OK+(2*w + 6)*OK,[-2, 0, 0, 0, -4, -2, -6, -6, -2, -2, 10, -6, -2, -6, -8, -12, -2, -2, -4, -8, 0, 0, 10, 2, -12, 8, -8, -8]);
ECSearch("44.1-b",(22)*OK+(2*w + 6)*OK,[-2, 0, 0, 0, -4, 2, 6, -6, -2, -2, -10, 6, 2, 6, 8, 12, 2, 2, -4, -8, 0, 0, -10, -2, 12, -8, -8, -8]);
ECSearch("44.1-c",(22)*OK+(2*w + 6)*OK,[2, 0, 0, 0, 4, -2, -6, 6, 2, -2, -10, 6, -2, -6, -8, -12, 2, 2, 4, 8, 0, 0, 10, 2, 12, -8, -8, -8]);
ECSearch("44.1-d",(22)*OK+(2*w + 6)*OK,[2, 0, 0, 0, 4, 2, 6, 6, 2, -2, 10, -6, 2, 6, 8, 12, -2, -2, 4, 8, 0, 0, -10, -2, -12, 8, -8, -8]);
ECSearch("44.2-a",(22)*OK+(2*w + 16)*OK,[-2, 0, 0, -4, 0, -6, -2, -2, -6, -2, -6, 10, -6, -2, -12, -8, -2, -2, -8, -4, 0, 0, 2, 10, 8, -12, -8, -8]);
ECSearch("44.2-b",(22)*OK+(2*w + 16)*OK,[-2, 0, 0, -4, 0, 6, 2, -2, -6, -2, 6, -10, 6, 2, 12, 8, 2, 2, -8, -4, 0, 0, -2, -10, -8, 12, -8, -8]);
ECSearch("44.2-c",(22)*OK+(2*w + 16)*OK,[2, 0, 0, 4, 0, -6, -2, 2, 6, -2, 6, -10, -6, -2, -12, -8, 2, 2, 8, 4, 0, 0, 2, 10, -8, 12, -8, -8]);
ECSearch("44.2-d",(22)*OK+(2*w + 16)*OK,[2, 0, 0, 4, 0, 6, 2, 2, 6, -2, -6, 10, 6, 2, 12, 8, -2, -2, 8, 4, 0, 0, -2, -10, 8, -12, -8, -8]);