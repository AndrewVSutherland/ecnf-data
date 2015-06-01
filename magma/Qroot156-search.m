print "Field 2.2.156.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - 39);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK+(w + 1)*OK);
Append(~Plist,(w + 6)*OK);
Append(~Plist,(5)*OK+(w + 2)*OK);
Append(~Plist,(5)*OK+(w + 3)*OK);
Append(~Plist,(7)*OK+(w + 2)*OK);
Append(~Plist,(7)*OK+(w + 5)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(19)*OK+(w + 1)*OK);
Append(~Plist,(19)*OK+(w + 18)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 4)*OK);
Append(~Plist,(31)*OK+(w + 15)*OK);
Append(~Plist,(31)*OK+(w + 16)*OK);
Append(~Plist,(41)*OK+(w + 11)*OK);
Append(~Plist,(41)*OK+(w + 30)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 10)*OK);
Append(~Plist,(67)*OK+(w + 21)*OK);
Append(~Plist,(67)*OK+(w + 46)*OK);
Append(~Plist,(89)*OK+(w + 22)*OK);
Append(~Plist,(89)*OK+(w + 67)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 7)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(137)*OK+(w + 54)*OK);
Append(~Plist,(137)*OK+(w + 83)*OK);
Append(~Plist,(149)*OK+(w + 28)*OK);
Append(~Plist,(149)*OK+(w + 121)*OK);
Append(~Plist,(151)*OK+(w + 48)*OK);
Append(~Plist,(151)*OK+(w + 103)*OK);
Append(~Plist,(w + 14)*OK);
Append(~Plist,(w - 14)*OK);
Append(~Plist,(163)*OK+(w + 56)*OK);
Append(~Plist,(163)*OK+(w + 107)*OK);
Append(~Plist,(6*w - 35)*OK);
Append(~Plist,(6*w + 35)*OK);
Append(~Plist,(5*w + 34)*OK);
Append(~Plist,(-5*w + 34)*OK);
Append(~Plist,(-5*w - 28)*OK);
Append(~Plist,(5*w - 28)*OK);
Append(~Plist,(197)*OK+(w + 32)*OK);
Append(~Plist,(197)*OK+(w + 165)*OK);
Append(~Plist,(223)*OK+(w + 40)*OK);
Append(~Plist,(223)*OK+(w + 183)*OK);
Append(~Plist,(-3*w - 10)*OK);
Append(~Plist,(3*w - 10)*OK);
Append(~Plist,(-4*w + 19)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(271)*OK+(w + 44)*OK);
Append(~Plist,(271)*OK+(w + 227)*OK);
Append(~Plist,(6*w + 41)*OK);
Append(~Plist,(-6*w + 41)*OK);
Append(~Plist,(281)*OK+(w + 38)*OK);
Append(~Plist,(281)*OK+(w + 243)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(293)*OK+(w + 25)*OK);
Append(~Plist,(293)*OK+(w + 268)*OK);
Append(~Plist,(307)*OK+(w + 119)*OK);
Append(~Plist,(307)*OK+(w + 188)*OK);
Append(~Plist,(-7*w - 40)*OK);
Append(~Plist,(7*w - 40)*OK);
Append(~Plist,(8*w + 53)*OK);
Append(~Plist,(8*w - 53)*OK);
Append(~Plist,(317)*OK+(w + 91)*OK);
Append(~Plist,(317)*OK+(w + 226)*OK);
Append(~Plist,(331)*OK+(w + 45)*OK);
Append(~Plist,(331)*OK+(w + 286)*OK);
Append(~Plist,(-4*w - 31)*OK);
Append(~Plist,(4*w - 31)*OK);
Append(~Plist,(-3*w + 2)*OK);
Append(~Plist,(3*w + 2)*OK);
Append(~Plist,(353)*OK+(w + 133)*OK);
Append(~Plist,(353)*OK+(w + 220)*OK);
Append(~Plist,(-2*w + 23)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(379)*OK+(w + 163)*OK);
Append(~Plist,(379)*OK+(w + 216)*OK);
Append(~Plist,(401)*OK+(w + 29)*OK);
Append(~Plist,(401)*OK+(w + 372)*OK);
Append(~Plist,(10*w - 59)*OK);
Append(~Plist,(10*w + 59)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(3*w + 28)*OK);
Append(~Plist,(-6*w - 31)*OK);
Append(~Plist,(6*w - 31)*OK);
Append(~Plist,(449)*OK+(w + 200)*OK);
Append(~Plist,(449)*OK+(w + 249)*OK);
Append(~Plist,(461)*OK+(w + 31)*OK);
Append(~Plist,(461)*OK+(w + 430)*OK);
Append(~Plist,(463)*OK+(w + 94)*OK);
Append(~Plist,(463)*OK+(w + 369)*OK);
Append(~Plist,(-7*w + 38)*OK);
Append(~Plist,(7*w + 38)*OK);
Append(~Plist,(487)*OK+(w + 195)*OK);
Append(~Plist,(487)*OK+(w + 292)*OK);
Append(~Plist,(-5*w + 22)*OK);
Append(~Plist,(-5*w - 22)*OK);
Append(~Plist,(499)*OK+(w + 187)*OK);
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

ECSearch("12.1-a",(2*w + 12)*OK,[0, 4, -2, 2, -2, -2, -6, -8, 0, -2, 2, -12, 0, -6, 10, -10, 2, -4, -8, -12, -4, 10, -4, 20, 8, -4, 0, -12]);
ECSearch("12.1-b",(2*w + 12)*OK,[-4, 0, -2, 2, -2, 6, 2, 0, -8, -2, 2, 0, 12, 10, -6, -2, 10, 8, 4, -4, -12, 10, 20, -4, 4, -8, 12, 0]);
ECSearch("12.1-c",(2*w + 12)*OK,[0, -4, -2, 2, -2, -2, -6, 8, 0, -2, 2, 12, 0, -6, 10, -10, 2, 4, 8, 12, 4, 10, 4, -20, -8, 4, 0, 12]);
ECSearch("12.1-d",(2*w + 12)*OK,[-4, 0, 2, -2, -2, -6, -2, 0, 8, 2, -2, 0, 12, 10, -6, 2, -10, 8, 4, 4, 12, 10, -20, 4, 4, -8, 12, 0]);
ECSearch("12.1-e",(2*w + 12)*OK,[4, 0, -2, 2, -2, 6, 2, 0, 8, -2, 2, 0, -12, 10, -6, -2, 10, -8, -4, 4, 12, 10, -20, 4, -4, 8, -12, 0]);
ECSearch("12.1-f",(2*w + 12)*OK,[0, 4, 2, -2, -2, 2, 6, 8, 0, 2, -2, -12, 0, -6, 10, 10, -2, -4, -8, 12, 4, 10, 4, -20, 8, -4, 0, -12]);
ECSearch("12.1-g",(2*w + 12)*OK,[4, 0, 2, -2, -2, -6, -2, 0, -8, 2, -2, 0, -12, 10, -6, 2, -10, -8, -4, -4, -12, 10, 20, -4, -4, 8, -12, 0]);
ECSearch("12.1-h",(2*w + 12)*OK,[0, -4, 2, -2, -2, 2, 6, -8, 0, 2, -2, 12, 0, -6, 10, 10, -2, 4, 8, -12, -4, 10, -4, 20, -8, 4, 0, 12]);
ECSearch("16.1-a",(4)*OK,[0, 0, 0, -4, -4, 2, -8, -8, 0, 0, 4, 4, 0, 0, -14, -14, -16, -16, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0]);
ECSearch("16.1-b",(4)*OK,[-1, -3, 3, -3, 3, 4, -6, 6, -6, -6, 0, 0, 0, 0, 8, 8, 12, -12, -6, 6, 12, 12, 22, 3, 3, 18, -18, 6, -6]);
ECSearch("16.1-c",(4)*OK,[1, 3, -3, -3, 3, 4, -6, 6, 6, 6, 0, 0, 0, 0, 8, 8, 12, -12, 6, -6, -12, -12, 22, -3, -3, -18, 18, -6, 6]);
ECSearch("16.1-d",(4)*OK,[1, -3, 3, 3, -3, 4, 6, -6, 6, 6, 0, 0, 0, 0, 8, 8, -12, 12, -6, 6, -12, -12, 22, -3, -3, 18, -18, 6, -6]);
ECSearch("16.1-e",(4)*OK,[-1, 3, -3, 3, -3, 4, 6, -6, -6, -6, 0, 0, 0, 0, 8, 8, -12, 12, 6, -6, 12, 12, 22, 3, 3, -18, 18, -6, 6]);
ECSearch("16.1-f",(4)*OK,[0, 0, 0, 4, 4, 2, 8, 8, 0, 0, -4, -4, 0, 0, -14, -14, 16, 16, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0]);
ECSearch("18.1-a",(6)*OK+(3*w + 3)*OK,[3, 3, 3, -3, 4, -6, 6, 6, -6, 0, 0, 0, 0, -8, -8, -12, 12, -6, -6, -12, 12, -22, 3, -3, -18, -18, -6, -6]);
ECSearch("18.1-b",(6)*OK+(3*w + 3)*OK,[2, 2, 2, -2, -6, 6, -6, -4, 4, -10, 10, -10, -10, 2, 2, 2, -2, 6, 6, 8, -8, -22, 8, -8, -2, -2, -14, -14]);
ECSearch("18.1-c",(6)*OK+(3*w + 3)*OK,[-3, -3, 3, -3, 4, -6, 6, -6, 6, 0, 0, 0, 0, -8, -8, -12, 12, 6, 6, 12, -12, -22, -3, 3, 18, 18, 6, 6]);
ECSearch("18.1-d",(6)*OK+(3*w + 3)*OK,[-2, -2, 2, -2, -6, 6, -6, 4, -4, -10, 10, 10, 10, 2, 2, 2, -2, -6, -6, -8, 8, -22, -8, 8, 2, 2, 14, 14]);
ECSearch("18.1-e",(6)*OK+(3*w + 3)*OK,[2, 2, -2, 2, -6, -6, 6, 4, -4, 10, -10, -10, -10, 2, 2, -2, 2, 6, 6, -8, 8, -22, -8, 8, -2, -2, -14, -14]);
ECSearch("18.1-f",(6)*OK+(3*w + 3)*OK,[3, 3, -3, 3, 4, 6, -6, -6, 6, 0, 0, 0, 0, -8, -8, 12, -12, -6, -6, 12, -12, -22, -3, 3, -18, -18, -6, -6]);
ECSearch("18.1-g",(6)*OK+(3*w + 3)*OK,[-2, -2, -2, 2, -6, -6, 6, -4, 4, 10, -10, 10, 10, 2, 2, -2, 2, -6, -6, 8, -8, -22, 8, -8, 2, 2, 14, 14]);
ECSearch("18.1-h",(6)*OK+(3*w + 3)*OK,[-3, -3, -3, 3, 4, 6, -6, 6, -6, 0, 0, 0, 0, -8, -8, 12, -12, 6, 6, -12, 12, -22, 3, -3, 18, 18, 6, 6]);
