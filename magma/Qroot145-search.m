print "Field 2.2.145.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 36);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK+(w)*OK);
Append(~Plist,(2)*OK+(w + 1)*OK);
Append(~Plist,(3)*OK+(w)*OK);
Append(~Plist,(3)*OK+(w + 2)*OK);
Append(~Plist,(5)*OK+(w + 2)*OK);
Append(~Plist,(17)*OK+(w + 1)*OK);
Append(~Plist,(17)*OK+(w + 15)*OK);
Append(~Plist,(29)*OK+(w + 14)*OK);
Append(~Plist,(37)*OK+(w + 10)*OK);
Append(~Plist,(37)*OK+(w + 26)*OK);
Append(~Plist,(43)*OK+(w + 19)*OK);
Append(~Plist,(43)*OK+(w + 23)*OK);
Append(~Plist,(47)*OK+(w + 22)*OK);
Append(~Plist,(47)*OK+(w + 24)*OK);
Append(~Plist,(7)*OK);
Append(~Plist,(59)*OK+(w + 16)*OK);
Append(~Plist,(59)*OK+(w + 42)*OK);
Append(~Plist,(71)*OK+(w + 21)*OK);
Append(~Plist,(71)*OK+(w + 49)*OK);
Append(~Plist,(73)*OK+(w + 13)*OK);
Append(~Plist,(73)*OK+(w + 59)*OK);
Append(~Plist,(97)*OK+(w + 28)*OK);
Append(~Plist,(97)*OK+(w + 68)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(113)*OK+(w + 45)*OK);
Append(~Plist,(113)*OK+(w + 67)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(127)*OK+(w + 39)*OK);
Append(~Plist,(127)*OK+(w + 87)*OK);
Append(~Plist,(137)*OK+(w + 37)*OK);
Append(~Plist,(137)*OK+(w + 99)*OK);
Append(~Plist,(4*w - 23)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(4*w - 29)*OK);
Append(~Plist,(-4*w - 25)*OK);
Append(~Plist,(151)*OK+(w + 60)*OK);
Append(~Plist,(151)*OK+(w + 90)*OK);
Append(~Plist,(157)*OK+(w + 53)*OK);
Append(~Plist,(157)*OK+(w + 103)*OK);
Append(~Plist,(163)*OK+(w + 54)*OK);
Append(~Plist,(163)*OK+(w + 108)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(181)*OK+(w + 33)*OK);
Append(~Plist,(181)*OK+(w + 147)*OK);
Append(~Plist,(193)*OK+(w + 48)*OK);
Append(~Plist,(193)*OK+(w + 144)*OK);
Append(~Plist,(199)*OK+(w + 77)*OK);
Append(~Plist,(199)*OK+(w + 121)*OK);
Append(~Plist,(239)*OK+(w + 31)*OK);
Append(~Plist,(239)*OK+(w + 207)*OK);
Append(~Plist,(241)*OK+(w + 38)*OK);
Append(~Plist,(241)*OK+(w + 202)*OK);
Append(~Plist,(263)*OK+(w + 56)*OK);
Append(~Plist,(263)*OK+(w + 206)*OK);
Append(~Plist,(6*w - 35)*OK);
Append(~Plist,(6*w + 29)*OK);
Append(~Plist,(293)*OK+(w + 130)*OK);
Append(~Plist,(293)*OK+(w + 162)*OK);
Append(~Plist,(307)*OK+(w + 25)*OK);
Append(~Plist,(307)*OK+(w + 281)*OK);
Append(~Plist,(317)*OK+(w + 123)*OK);
Append(~Plist,(317)*OK+(w + 193)*OK);
Append(~Plist,(337)*OK+(w + 151)*OK);
Append(~Plist,(337)*OK+(w + 185)*OK);
Append(~Plist,(349)*OK+(w + 102)*OK);
Append(~Plist,(349)*OK+(w + 246)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(367)*OK+(w + 81)*OK);
Append(~Plist,(367)*OK+(w + 285)*OK);
Append(~Plist,(401)*OK+(w + 40)*OK);
Append(~Plist,(401)*OK+(w + 360)*OK);
Append(~Plist,(419)*OK+(w + 50)*OK);
Append(~Plist,(419)*OK+(w + 368)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(433)*OK+(w + 197)*OK);
Append(~Plist,(433)*OK+(w + 235)*OK);
Append(~Plist,(439)*OK+(w + 187)*OK);
Append(~Plist,(439)*OK+(w + 251)*OK);
Append(~Plist,(443)*OK+(w + 89)*OK);
Append(~Plist,(443)*OK+(w + 353)*OK);
Append(~Plist,(467)*OK+(w + 167)*OK);
Append(~Plist,(467)*OK+(w + 299)*OK);
Append(~Plist,(-4*w + 11)*OK);
Append(~Plist,(4*w + 7)*OK);
Append(~Plist,(503)*OK+(w + 155)*OK);
Append(~Plist,(503)*OK+(w + 347)*OK);
Append(~Plist,(-4*w - 31)*OK);
Append(~Plist,(4*w - 35)*OK);
Append(~Plist,(-6*w - 25)*OK);
Append(~Plist,(6*w - 31)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(563)*OK+(w + 164)*OK);
Append(~Plist,(563)*OK+(w + 398)*OK);
Append(~Plist,(-4*w - 1)*OK);
Append(~Plist,(4*w - 5)*OK);
Append(~Plist,(577)*OK+(w + 34)*OK);
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

ECSearch("2.1-a",(2)*OK+(w)*OK,[1, 3, -1, 1, 6, 6, 2, -4, 12, -1, -5, -7, -3, 2, 2, -6, -12, -12, 4, 4, -14, 18, 7, 7, 20, 4, -9, -4, 4]);
ECSearch("2.1-b",(2)*OK+(w)*OK,[-1, -3, 1, 1, -6, -6, 2, 4, -12, 1, 5, 7, 3, 2, 2, -6, -12, -12, -4, -4, 14, -18, 7, 7, -20, -4, -9, 4, -4]);
ECSearch("2.2-a",(2)*OK+(w + 1)*OK,[1, -1, 3, 1, 6, 6, 2, 12, -4, -5, -1, -3, -7, 2, -6, 2, -12, -12, 4, 4, 18, -14, 7, 7, 4, 20, -9, 4, -4]);
ECSearch("2.2-b",(2)*OK+(w + 1)*OK,[-1, 1, -3, 1, -6, -6, 2, -12, 4, 5, 1, 3, 7, 2, -6, 2, -12, -12, -4, -4, -18, 14, 7, 7, -4, -20, -9, -4, 4]);
ECSearch("4.1-a",(2)*OK,[1, -1, -1, 2, -2, -10, 8, -8, -9, 9, -3, 3, -10, -10, -10, 8, 8, -16, 16, 2, -2, -15, -15, -4, 4, -3, -12, 12]);
ECSearch("4.1-b",(2)*OK,[-1, 1, -1, -2, 2, -10, -8, 8, 9, -9, 3, -3, -10, -10, -10, 8, 8, 16, -16, -2, 2, -15, -15, 4, -4, -3, 12, -12]);
ECSearch("4.2-a",(4)*OK+(w)*OK,[1, 0, 2, -2, 0, 0, 2, -4, 0, -10, -8, -10, 0, -10, 8, -12, 0, 0, 10, 10, 10, -6, 10, 10, -10, -2, -6, 14, -20]);
ECSearch("4.2-b",(4)*OK+(w)*OK,[-1, 0, -2, -2, 0, 0, 2, 4, 0, 10, 8, 10, 0, -10, 8, -12, 0, 0, -10, -10, -10, 6, 10, 10, 10, 2, -6, -14, 20]);
ECSearch("4.3-a",(4)*OK+(w + 3)*OK,[1, 2, 0, -2, 0, 0, 2, 0, -4, -8, -10, 0, -10, -10, -12, 8, 0, 0, 10, 10, -6, 10, 10, 10, -2, -10, -6, -20, 14]);
ECSearch("4.3-b",(4)*OK+(w + 3)*OK,[-1, -2, 0, -2, 0, 0, 2, 0, 4, 8, 10, 0, 10, -10, -12, 8, 0, 0, -10, -10, 6, -10, 10, 10, 2, 10, -6, 20, -14]);
ECSearch("6.2-a",(6)*OK+(w + 2)*OK,[1, -2, 2, 0, 2, 8, -12, 10, -8, 0, 8, 2, 10, 12, 6, 10, 0, 6, 6, -2, -14, -12, -2, -14, 2, -10, -8, -20]);
ECSearch("6.2-b",(6)*OK+(w + 2)*OK,[2, -1, -1, 3, -8, -10, -3, 8, -1, 6, -2, -8, -5, 0, 0, -2, -12, -9, 9, 8, 2, 0, 10, 14, 1, -13, 2, 8]);
ECSearch("6.2-c",(6)*OK+(w + 2)*OK,[1, -2, -4, 6, -4, 2, 6, -8, 4, 0, 8, 2, -8, 12, -6, -2, -12, -6, -6, -14, -2, -18, -8, 10, 14, -4, 16, 4]);
ECSearch("6.2-d",(6)*OK+(w + 2)*OK,[1, 0, -2, -6, 6, 2, -10, -6, -4, 4, 8, -12, 2, -4, 0, 12, 0, -2, -2, -2, -18, 10, -2, 14, -2, 18, 8, 16]);
ECSearch("6.2-e",(6)*OK+(w + 2)*OK,[-1, 0, -2, 6, -6, 2, 10, 6, 4, -4, -8, 12, 2, -4, 0, 12, 0, 2, 2, 2, 18, 10, -2, -14, 2, 18, -8, -16]);
ECSearch("6.2-f",(6)*OK+(w + 2)*OK,[-1, 2, 2, 0, -2, 8, 12, -10, 8, 0, -8, -2, 10, 12, 6, 10, 0, -6, -6, 2, 14, -12, -2, 14, -2, -10, 8, 20]);
ECSearch("6.2-g",(6)*OK+(w + 2)*OK,[-2, 1, -1, -3, 8, -10, 3, -8, 1, -6, 2, 8, -5, 0, 0, -2, -12, 9, -9, -8, -2, 0, 10, -14, -1, -13, -2, -8]);
ECSearch("6.2-h",(6)*OK+(w + 2)*OK,[-1, 2, -4, -6, 4, 2, -6, 8, -4, 0, -8, -2, -8, 12, -6, -2, -12, 6, 6, 14, 2, -18, -8, -10, -14, -4, -16, -4]);
ECSearch("6.3-a",(6)*OK+(w + 3)*OK,[1, -2, 2, 2, 0, 8, 10, -12, 0, -8, 2, 8, 10, 6, 12, 0, 10, 6, 6, -14, -2, -2, -12, 2, -14, -10, -20, -8]);
ECSearch("6.3-b",(6)*OK+(w + 3)*OK,[2, -1, -1, -8, 3, -10, 8, -3, 6, -1, -8, -2, -5, 0, 0, -12, -2, 9, -9, 2, 8, 10, 0, 1, 14, -13, 8, 2]);
ECSearch("6.3-c",(6)*OK+(w + 3)*OK,[1, -2, -4, -4, 6, 2, -8, 6, 0, 4, 2, 8, -8, -6, 12, -12, -2, -6, -6, -2, -14, -8, -18, 14, 10, -4, 4, 16]);
ECSearch("6.3-d",(6)*OK+(w + 3)*OK,[1, 0, -2, 6, -6, 2, -6, -10, 4, -4, -12, 8, 2, 0, -4, 0, 12, -2, -2, -18, -2, -2, 10, -2, 14, 18, 16, 8]);
ECSearch("6.3-e",(6)*OK+(w + 3)*OK,[-1, 0, -2, -6, 6, 2, 6, 10, -4, 4, 12, -8, 2, 0, -4, 0, 12, 2, 2, 18, 2, -2, 10, 2, -14, 18, -16, -8]);
ECSearch("6.3-f",(6)*OK+(w + 3)*OK,[-1, 2, 2, -2, 0, 8, -10, 12, 0, 8, -2, -8, 10, 6, 12, 0, 10, -6, -6, 14, 2, -2, -12, -2, 14, -10, 20, 8]);
ECSearch("6.3-g",(6)*OK+(w + 3)*OK,[-2, 1, -1, 8, -3, -10, -8, 3, -6, 1, 8, 2, -5, 0, 0, -12, -2, -9, 9, -2, -8, 10, 0, -1, -14, -13, -8, -2]);
ECSearch("6.3-h",(6)*OK+(w + 3)*OK,[-1, 2, -4, 4, -6, 2, 8, -6, 0, -4, -2, -8, -8, -6, 12, -12, -2, 6, 6, 2, 14, -8, -18, -14, -10, -4, -4, -16]);
ECSearch("9.1-a",(3)*OK,[2, 2, 4, 6, 6, -4, 1, 1, 1, 1, -8, -8, -2, 8, 8, 2, 2, -15, -15, -11, -11, -1, -1, 8, 8, 21, -7, -7]);
ECSearch("9.1-b",(3)*OK,[1, 1, -2, 6, 6, -10, 2, 2, -4, -4, 8, 8, 10, -4, -4, 8, 8, 6, 6, 14, 14, -10, -10, -2, -2, 18, -8, -8]);
ECSearch("9.1-c",(3)*OK,[-1, -1, -2, -6, -6, -10, -2, -2, 4, 4, -8, -8, 10, -4, -4, 8, 8, -6, -6, -14, -14, -10, -10, 2, 2, 18, 8, 8]);
ECSearch("9.1-d",(3)*OK,[-2, -2, 4, -6, -6, -4, -1, -1, -1, -1, 8, 8, -2, 8, 8, 2, 2, 15, 15, 11, 11, -1, -1, -8, -8, 21, 7, 7]);
ECSearch("12.1-a",(6)*OK+(2*w)*OK,[2, 2, 2, 4, -4, 2, -8, 0, 0, 6, 0, 2, 2, -4, 8, -10, 14, -2, 2, -2, 6, 0, 2, -14, 6, 12, 0]);
ECSearch("12.1-b",(6)*OK+(2*w)*OK,[2, 0, 0, 6, 6, 4, -2, -8, 4, 6, 0, -4, -6, 12, 12, 6, -2, -2, -14, -2, -4, 2, 18, 6, -16, 4, -8]);
ECSearch("12.1-c",(6)*OK+(2*w)*OK,[-2, 0, 0, -6, 6, -4, 2, 8, -4, -6, 0, -4, -6, 12, 12, 6, 2, 2, 14, 2, -4, 2, -18, -6, -16, -4, 8]);
ECSearch("12.1-d",(6)*OK+(2*w)*OK,[-2, 2, -2, -4, -4, -2, 8, 0, 0, -6, 0, 2, 2, -4, 8, -10, -14, 2, -2, 2, 6, 0, -2, 14, 6, -12, 0]);
ECSearch("12.2-a",(6)*OK+(2*w + 4)*OK,[2, 2, 4, 2, -4, -8, 2, 0, 0, 0, 6, 2, -4, 2, -10, 8, -2, 14, -2, 2, 0, 6, -14, 2, 6, 0, 12]);
ECSearch("12.2-b",(6)*OK+(2*w + 4)*OK,[2, 0, 6, 0, 6, -2, 4, 4, -8, 0, 6, -4, 12, -6, 6, 12, -2, -2, -2, -14, 2, -4, 6, 18, -16, -8, 4]);
ECSearch("12.2-c",(6)*OK+(2*w + 4)*OK,[-2, 0, -6, 0, 6, 2, -4, -4, 8, 0, -6, -4, 12, -6, 6, 12, 2, 2, 2, 14, 2, -4, -6, -18, -16, 8, -4]);
ECSearch("12.2-d",(6)*OK+(2*w + 4)*OK,[-2, 2, -4, -2, -4, 8, -2, 0, 0, 0, -6, 2, -4, 2, -10, 8, 2, -14, 2, -2, 0, 6, 14, -2, 6, 0, -12]);
ECSearch("16.4-a",(w + 4)*OK,[-1, 0, 2, 2, 0, 0, -2, -4, 0, -10, 8, -10, 0, 10, -8, -12, 0, 0, -10, -10, -10, 6, -10, -10, 10, 2, 6, 14, 20]);
ECSearch("16.4-b",(w + 4)*OK,[1, 3, 1, -1, -6, -6, -2, 4, -12, 1, -5, 7, -3, -2, -2, -6, -12, 12, 4, 4, -14, 18, -7, -7, 20, 4, 9, 4, 4]);
ECSearch("16.4-c",(w + 4)*OK,[-1, -3, -1, -1, 6, 6, -2, -4, 12, -1, 5, -7, 3, -2, -2, -6, -12, 12, -4, -4, 14, -18, -7, -7, -20, -4, 9, -4, -4]);
ECSearch("16.4-d",(w + 4)*OK,[1, 0, -2, 2, 0, 0, -2, 4, 0, 10, -8, 10, 0, 10, -8, -12, 0, 0, 10, 10, 10, -6, -10, -10, -10, -2, 6, -14, -20]);
ECSearch("16.5-a",(w - 5)*OK,[-1, 2, 0, 2, 0, 0, -2, 0, -4, 8, -10, 0, -10, 10, -12, -8, 0, 0, -10, -10, 6, -10, -10, -10, 2, 10, 6, 20, 14]);
ECSearch("16.5-b",(w - 5)*OK,[1, 1, 3, -1, -6, -6, -2, -12, 4, -5, 1, -3, 7, -2, -6, -2, 12, -12, 4, 4, 18, -14, -7, -7, 4, 20, 9, 4, 4]);
ECSearch("16.5-c",(w - 5)*OK,[-1, -1, -3, -1, 6, 6, -2, 12, -4, 5, -1, 3, -7, -2, -6, -2, 12, -12, -4, -4, -18, 14, -7, -7, -4, -20, 9, -4, -4]);
ECSearch("16.5-d",(w - 5)*OK,[1, -2, 0, 2, 0, 0, -2, 0, 4, -8, 10, 0, 10, 10, -12, -8, 0, 0, 10, 10, -6, 10, -10, -10, -2, -10, 6, -20, -14]);