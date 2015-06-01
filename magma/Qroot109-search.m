print "Field 2.2.109.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 27);
OK := Integers(K);
Plist := [];
Append(~Plist,(-w + 6)*OK);
Append(~Plist,(w + 5)*OK);
Append(~Plist,(2)*OK);
Append(~Plist,(-3*w + 17)*OK);
Append(~Plist,(3*w + 14)*OK);
Append(~Plist,(-w + 5)*OK);
Append(~Plist,(-w - 4)*OK);
Append(~Plist,(w + 7)*OK);
Append(~Plist,(w - 8)*OK);
Append(~Plist,(-5*w + 28)*OK);
Append(~Plist,(5*w + 23)*OK);
Append(~Plist,(6*w + 29)*OK);
Append(~Plist,(6*w - 35)*OK);
Append(~Plist,(-3*w + 19)*OK);
Append(~Plist,(-3*w - 16)*OK);
Append(~Plist,(7*w + 34)*OK);
Append(~Plist,(7*w - 41)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(-3*w + 14)*OK);
Append(~Plist,(3*w + 11)*OK);
Append(~Plist,(3*w + 17)*OK);
Append(~Plist,(-3*w + 20)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(-3*w - 10)*OK);
Append(~Plist,(3*w - 13)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-5*w + 31)*OK);
Append(~Plist,(-5*w - 26)*OK);
Append(~Plist,(-9*w - 41)*OK);
Append(~Plist,(9*w - 50)*OK);
Append(~Plist,(14*w - 79)*OK);
Append(~Plist,(14*w + 65)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-3*w - 7)*OK);
Append(~Plist,(3*w - 10)*OK);
Append(~Plist,(10*w + 49)*OK);
Append(~Plist,(10*w - 59)*OK);
Append(~Plist,(-22*w - 103)*OK);
Append(~Plist,(-22*w + 125)*OK);
Append(~Plist,(-6*w - 25)*OK);
Append(~Plist,(6*w - 31)*OK);
Append(~Plist,(-4*w - 13)*OK);
Append(~Plist,(4*w - 17)*OK);
Append(~Plist,(-8*w - 35)*OK);
Append(~Plist,(-8*w + 43)*OK);
Append(~Plist,(-9*w + 49)*OK);
Append(~Plist,(9*w + 40)*OK);
Append(~Plist,(-3*w + 5)*OK);
Append(~Plist,(3*w + 2)*OK);
Append(~Plist,(-3*w - 1)*OK);
Append(~Plist,(3*w - 4)*OK);
Append(~Plist,(19*w + 91)*OK);
Append(~Plist,(19*w - 110)*OK);
Append(~Plist,(-8*w + 49)*OK);
Append(~Plist,(-8*w - 41)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(-4*w + 29)*OK);
Append(~Plist,(4*w + 25)*OK);
Append(~Plist,(-3*w + 25)*OK);
Append(~Plist,(3*w + 22)*OK);
Append(~Plist,(-5*w - 29)*OK);
Append(~Plist,(5*w - 34)*OK);
Append(~Plist,(19*w + 88)*OK);
Append(~Plist,(19*w - 107)*OK);
Append(~Plist,(23*w - 133)*OK);
Append(~Plist,(23*w + 110)*OK);
Append(~Plist,(-15*w + 88)*OK);
Append(~Plist,(15*w + 73)*OK);
Append(~Plist,(w + 19)*OK);
Append(~Plist,(w - 20)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(23*w - 130)*OK);
Append(~Plist,(23*w + 107)*OK);
Append(~Plist,(9*w - 47)*OK);
Append(~Plist,(9*w + 38)*OK);
Append(~Plist,(-5*w + 19)*OK);
Append(~Plist,(5*w + 14)*OK);
Append(~Plist,(10*w - 53)*OK);
Append(~Plist,(10*w + 43)*OK);
Append(~Plist,(-15*w - 68)*OK);
Append(~Plist,(15*w - 83)*OK);
Append(~Plist,(24*w + 115)*OK);
Append(~Plist,(24*w - 139)*OK);
Append(~Plist,(30*w + 143)*OK);
Append(~Plist,(30*w - 173)*OK);
Append(~Plist,(12*w + 53)*OK);
Append(~Plist,(12*w - 65)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(3*w + 25)*OK);
Append(~Plist,(-21*w + 118)*OK);
Append(~Plist,(-21*w - 97)*OK);
Append(~Plist,(-6*w - 35)*OK);
Append(~Plist,(6*w - 41)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(w + 22)*OK);
Append(~Plist,(w - 23)*OK);
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

ECSearch("1.1-a",(1)*OK,[2, 2, 1, -3, -3, 2, 2, -3, -3, 10, 10, -2, -2, -7, -7, -6, -6, -5, -5, 12, 12, 15, 15, 7, 7, -2, 6, 6, -5, 12]);
ECSearch("7.1-a",(-w + 5)*OK,[0, 0, -1, 2, -4, -2, -6, 6, 10, -8, 4, 10, 2, 14, -14, -8, 2, 14, -4, 14, -8, -2, 2, 8, -16, 0, 0, -14, -6]);
ECSearch("7.2-a",(-w - 4)*OK,[0, 0, -1, -4, 2, -2, 6, -6, -8, 10, 10, 4, 14, 2, -8, -14, 14, 2, 14, -4, -2, -8, 8, 2, -16, 0, 0, -14, -12]);
ECSearch("9.2-a",(2*w + 9)*OK,[3, -1, 2, -1, 4, 1, 3, 0, 4, -5, -8, -2, 5, 2, 1, -8, -4, 2, 2, -16, -2, -14, 17, -13, 2, 18, -15, 13, 15]);
ECSearch("9.2-b",(2*w + 9)*OK,[-3, 1, 2, 1, 4, 1, 3, 0, -4, 5, 8, 2, 5, 2, 1, 8, 4, -2, 2, 16, -2, 14, -17, 13, -2, 18, 15, -13, 15]);
ECSearch("9.2-c",(2*w + 9)*OK,[-2, -1, -3, 3, 2, 2, -3, 3, -10, -10, 2, 2, -7, -7, -6, 6, 5, 5, 12, -12, 15, -15, -7, -7, 2, 6, -6, 5, 12]);
ECSearch("9.3-a",(2*w - 11)*OK,[3, -1, -1, 2, 1, 4, 0, 3, -5, 4, -2, -8, 2, 5, -8, 1, 2, -4, -16, 2, -14, -2, -13, 17, 2, -15, 18, 13, 15]);
ECSearch("9.3-b",(2*w - 11)*OK,[-3, 1, 1, 2, 1, 4, 0, 3, 5, -4, 2, 8, 2, 5, 8, 1, -2, 4, 16, 2, 14, -2, 13, -17, -2, 15, 18, -13, -15]);
ECSearch("9.3-c",(2*w - 11)*OK,[-2, -1, 3, -3, 2, 2, 3, -3, -10, -10, 2, 2, -7, -7, 6, -6, 5, 5, -12, 12, -15, 15, -7, -7, 2, -6, 6, 5, -12]);
ECSearch("12.1-a",(-2*w + 12)*OK,[1, 0, 3, 2, -1, 9, 0, 2, -1, -4, 8, 11, 2, -9, 0, 8, -10, -6, -12, 6, 6, -1, -7, 2, -6, -9, -13, 15]);
ECSearch("12.1-b",(-2*w + 12)*OK,[0, 3, -1, 0, -4, 7, -5, -4, 8, 4, -8, -13, -9, -8, -12, 11, -5, 16, 0, -9, -1, -17, 7, 14, -14, -14, 15, -8]);
ECSearch("12.1-c",(-2*w + 12)*OK,[-1, -4, 1, -2, 3, 5, 0, 2, -3, 4, 4, 7, 2, -13, -8, -16, -6, -6, 4, -10, 10, -7, -17, -10, -6, 9, -3, 7]);
ECSearch("12.1-d",(-2*w + 12)*OK,[-2, 3, 0, -4, -1, 6, 6, 8, -7, 2, -1, 14, -4, 9, 9, 14, 14, 3, 9, -6, -15, -10, 5, 2, 0, 21, 5, -12]);
ECSearch("12.2-a",(2*w + 10)*OK,[1, 3, 0, -1, 2, 0, 9, -1, 2, 8, -4, 2, 11, 0, -9, -10, 8, -12, -6, 6, 6, -7, -1, 2, -9, -6, -13, -15]);
ECSearch("12.2-b",(2*w + 10)*OK,[0, -1, 3, -4, 0, -5, 7, 8, -4, -8, 4, -9, -13, -12, -8, -5, 11, 0, 16, -1, -9, 7, -17, 14, -14, -14, 15, 0]);
ECSearch("12.2-c",(2*w + 10)*OK,[-1, 1, -4, 3, -2, 0, 5, -3, 2, 4, 4, 2, 7, -8, -13, -6, -16, 4, -6, 10, -10, -17, -7, -10, 9, -6, -3, 7]);
ECSearch("12.2-d",(2*w + 10)*OK,[-2, 0, 3, -1, -4, 6, 6, -7, 8, -1, 2, -4, 14, 9, 9, 14, 14, 9, 3, -15, -6, 5, -10, 2, 21, 0, 5, 0]);
ECSearch("15.1-a",(w + 3)*OK,[-3, 2, -2, 3, -2, -1, 4, 2, -4, 8, -11, -12, -10, 14, -15, 8, 3, -6, -2, -7, -14, 13, 18, 4, 14, -6, 4, -15]);
ECSearch("15.1-b",(w + 3)*OK,[-1, -2, 0, -1, 2, 3, -6, 10, -2, 10, 7, -10, -4, 0, 3, 10, -11, 0, 0, -3, -6, -5, -8, -2, -12, 6, 4, 9]);
ECSearch("15.1-c",(w + 3)*OK,[1, 2, 0, -1, -4, -9, 0, 8, -4, 2, 5, -10, -10, 0, 9, -4, -13, -6, 6, -3, -12, 5, 8, 20, -6, 0, 14, -3]);
ECSearch("15.1-d",(w + 3)*OK,[1, 2, 2, -5, -2, -1, 0, -6, 0, 4, 1, -8, -6, 2, 5, -4, -1, 14, -14, 1, -6, -7, -10, -8, 2, 10, -20, -7]);
ECSearch("15.2-a",(-w - 6)*OK,[-1, 1, 3, -4, -1, -9, 0, 10, 7, 4, -8, 11, -10, -15, -12, -2, 4, -12, 6, -18, 6, 19, 7, -2, -12, -3, -5, 9]);
ECSearch("15.4-a",(-w + 4)*OK,[-3, 2, -2, -2, 3, 4, -1, -4, 2, -11, 8, -10, -12, -15, 14, 3, 8, -2, -6, -14, -7, 18, 13, 4, -6, 14, 4, 0]);
ECSearch("15.4-b",(-w + 4)*OK,[-1, -2, 0, 2, -1, -6, 3, -2, 10, 7, 10, -4, -10, 3, 0, -11, 10, 0, 0, -6, -3, -8, -5, -2, 6, -12, 4, 6]);
ECSearch("15.4-c",(-w + 4)*OK,[1, 2, 0, -4, -1, 0, -9, -4, 8, 5, 2, -10, -10, 9, 0, -13, -4, 6, -6, -12, -3, 8, 5, 20, 0, -6, 14, -6]);
ECSearch("15.4-d",(-w + 4)*OK,[1, 2, 2, -2, -5, 0, -1, 0, -6, 1, 4, -6, -8, 5, 2, -1, -4, -14, 14, -6, 1, -10, -7, -8, 10, 2, -20, -12]);
ECSearch("15.3-a",(-w + 7)*OK,[-1, 1, 3, -1, -4, 0, -9, 7, 10, -8, 4, -10, 11, -12, -15, 4, -2, 6, -12, 6, -18, 7, 19, -2, -3, -12, -5, -21]);
ECSearch("16.1-a",(4)*OK,[-2, -2, -1, -1, 2, 2, 9, 9, 6, 6, -6, -6, -11, -11, 2, 2, 11, 11, 0, 0, 9, 9, 1, 1, -6, -6, -6, 21, 4]);
ECSearch("21.1-a",(-w - 2)*OK,[1, 1, 0, 4, 3, -2, 0, -8, 1, 2, 10, -5, -6, -10, 3, 12, 9, -9, 9, -13, 18, 2, -18, 5, -13, 8, -8, -4]);
ECSearch("21.1-b",(-w - 2)*OK,[-1, 3, 4, 0, 3, -6, 0, 4, -9, -6, -2, -13, 6, -14, -5, -4, -1, 1, 17, 13, -14, 14, 2, 11, 21, -4, -8, -12]);
ECSearch("21.2-a",(-5*w - 24)*OK,[-2, -3, 1, -3, 0, 3, -3, -8, 0, 6, -8, -7, 3, -2, 10, 17, 11, -2, 2, 1, -11, 5, -13, 14, 18, 14, 1, 0]);
ECSearch("21.2-b",(-5*w - 24)*OK,[-2, 3, -2, 0, 0, 6, 0, -2, 0, -6, -2, 2, -6, -8, -2, -10, 8, 4, 2, -2, -2, 2, 8, -4, -6, -4, -14, 0]);
ECSearch("21.4-a",(-w + 3)*OK,[1, 1, 4, 0, 3, 0, -2, 1, -8, 10, 2, -6, -5, 3, -10, 9, 12, 9, -9, 18, -13, -18, 2, 5, 8, -13, -8, -8]);
ECSearch("21.4-b",(-w + 3)*OK,[-1, 3, 0, 4, 3, 0, -6, -9, 4, -2, -6, 6, -13, -5, -14, -1, -4, 17, 1, -14, 13, 2, 14, 11, -4, 21, -8, 0]);
ECSearch("21.3-a",(5*w - 29)*OK,[-2, -3, -3, 1, 0, -3, 3, 0, -8, -8, 6, 3, -7, 10, -2, 11, 17, 2, -2, -11, 1, -13, 5, 14, 14, 18, 1, -6]);
ECSearch("21.3-b",(5*w - 29)*OK,[-2, 3, 0, -2, 0, 0, 6, 0, -2, -2, -6, -6, 2, -2, -8, 8, -10, 2, 4, -2, -2, 8, 2, -4, -4, -6, -14, 0]);
ECSearch("25.1-a",(5)*OK,[-2, 2, -1, 2, -2, -10, 6, -8, 8, -2, 10, 6, 6, -12, -4, -6, -6, -14, -2, -2, 14, 10, 18, 6, -6, 18, -10, 12]);
ECSearch("25.1-b",(5)*OK,[2, 2, 1, 2, 2, 6, 6, -8, -8, -2, -2, 2, 2, 12, 12, -14, -14, -6, -6, 6, 6, -2, -2, -2, 6, 6, 22, 12]);
ECSearch("25.1-c",(5)*OK,[2, -2, -1, -2, 2, 6, -10, 8, -8, 10, -2, 6, 6, -4, -12, -6, -6, -2, -14, 14, -2, 18, 10, 6, 18, -6, -10, -20]);
ECSearch("25.2-a",(w + 1)*OK,[-3, 2, 1, 2, 2, -3, 7, 2, 5, -10, 8, 8, 13, 3, 9, 4, 15, 5, -8, -3, 10, -10, 12, 2, -2, 6, 16, 10, -3]);
ECSearch("25.2-b",(w + 1)*OK,[-2, 2, -1, 3, -2, 2, -3, -3, 10, 10, 2, -2, 7, 7, 6, 6, 5, -5, 12, -12, 15, 15, 7, -7, -2, 6, -6, -5, 12]);
ECSearch("25.2-c",(w + 1)*OK,[3, 2, -1, -2, -2, -3, 7, 2, 5, -10, -8, 8, -13, -3, -9, -4, -15, 5, -8, 3, 10, -10, 12, -2, -2, 6, -16, 10, -3]);
ECSearch("25.3-a",(w - 2)*OK,[2, -3, 1, 2, -3, 2, 2, 7, -10, 5, 8, 8, 3, 13, 4, 9, 5, 15, -3, -8, -10, 10, 2, 12, -2, 16, 6, 10, -18]);
ECSearch("25.3-b",(w - 2)*OK,[2, -2, -1, 3, 2, -2, -3, -3, 10, 10, -2, 2, 7, 7, 6, 6, -5, 5, -12, 12, 15, 15, -7, 7, -2, -6, 6, -5, 12]);
ECSearch("25.3-c",(w - 2)*OK,[2, 3, -1, -2, -3, -2, 2, 7, -10, 5, 8, -8, -3, -13, -4, -9, 5, -15, 3, -8, -10, 10, -2, 12, -2, -16, 6, 10, -18]);
ECSearch("27.3-a",(w)*OK,[1, -1, -3, 0, 2, 2, 9, -6, 8, -1, 11, -7, 11, 2, 6, 3, -4, -4, -6, -9, -6, -12, -16, 2, 2, -3, -18, 14, 0]);
ECSearch("27.3-b",(w)*OK,[0, -1, 2, -1, 1, -2, -3, -6, 7, 4, 4, 1, -1, -7, 4, -2, 14, 14, 17, 8, 4, 7, 11, -7, 11, 6, 3, -5, 6]);
ECSearch("27.3-c",(w)*OK,[-2, -1, 0, -3, 5, 2, -3, 0, 5, 2, -10, 11, -13, 5, -12, -6, 2, 2, -15, 12, 18, -15, -7, -13, -7, 12, -15, 5, 0]);
ECSearch("27.3-d",(w)*OK,[-3, -1, 2, -1, -2, 4, -9, 6, -8, -5, -11, 4, -7, 11, 7, 13, -4, -10, 14, 14, -8, 10, 14, -10, 11, 12, -6, 13, -12]);
ECSearch("27.3-e",(w)*OK,[3, 1, 2, 1, -2, 4, -9, -6, 8, 5, 11, -4, -7, 11, 7, -13, 4, 10, 14, -14, -8, -10, -14, 10, -11, 12, 6, -13, -12]);
ECSearch("27.3-f",(w)*OK,[2, 1, 0, 3, 5, 2, -3, 0, -5, -2, 10, -11, -13, 5, -12, 6, -2, -2, -15, -12, 18, 15, 7, 13, 7, 12, 15, -5, 0]);
ECSearch("27.3-g",(w)*OK,[0, 1, 2, 1, 1, -2, -3, 6, -7, -4, -4, -1, -1, -7, 4, 2, -14, -14, 17, -8, 4, -7, -11, 7, -11, 6, -3, 5, 6]);
ECSearch("27.3-h",(w)*OK,[-1, 1, -3, 0, 2, 2, 9, 6, -8, 1, -11, 7, 11, 2, 6, -3, 4, 4, -6, 9, -6, 12, 16, -2, -2, -3, 18, -14, 0]);
ECSearch("27.4-a",(w - 1)*OK,[1, -1, 0, -3, 2, 2, -6, 9, -1, 8, -7, 11, 2, 11, 3, 6, -4, -4, -9, -6, -12, -6, 2, -16, 2, -18, -3, 14, -12]);
ECSearch("27.4-b",(w - 1)*OK,[0, -1, -1, 2, -2, 1, -6, -3, 4, 7, 1, 4, -7, -1, -2, 4, 14, 14, 8, 17, 7, 4, -7, 11, 11, 3, 6, -5, -18]);
ECSearch("27.4-c",(w - 1)*OK,[-2, -1, -3, 0, 2, 5, 0, -3, 2, 5, 11, -10, 5, -13, -6, -12, 2, 2, 12, -15, -15, 18, -13, -7, -7, -15, 12, 5, -6]);
ECSearch("27.4-d",(w - 1)*OK,[-3, -1, -1, 2, 4, -2, 6, -9, -5, -8, 4, -11, 11, -7, 13, 7, -10, -4, 14, 14, 10, -8, -10, 14, 11, -6, 12, 13, 3]);
ECSearch("27.4-e",(w - 1)*OK,[3, 1, 1, 2, 4, -2, -6, -9, 5, 8, -4, 11, 11, -7, -13, 7, 10, 4, -14, 14, -10, -8, 10, -14, -11, 6, 12, -13, -3]);
ECSearch("27.4-f",(w - 1)*OK,[2, 1, 3, 0, 2, 5, 0, -3, -2, -5, -11, 10, 5, -13, 6, -12, -2, -2, -12, -15, 15, 18, 13, 7, 7, 15, 12, -5, 6]);
ECSearch("27.4-g",(w - 1)*OK,[0, 1, 1, 2, -2, 1, 6, -3, -4, -7, -1, -4, -7, -1, 2, 4, -14, -14, -8, 17, -7, 4, 7, -11, -11, -3, 6, 5, 18]);
ECSearch("27.4-h",(w - 1)*OK,[-1, 1, 0, -3, 2, 2, 6, 9, 1, -8, 7, -11, 2, 11, -3, 6, 4, 4, 9, -6, 12, -6, -2, 16, -2, 18, -3, -14, 12]);
ECSearch("28.1-a",(-2*w + 10)*OK,[-1, 2, 0, 3, -1, -9, -9, -5, 4, -8, 10, -10, -10, -3, 15, -11, -2, 15, -12, 18, -6, 10, 10, -2, 12, -6, -5, 0]);
ECSearch("28.1-b",(-2*w + 10)*OK,[-1, 0, -2, -1, 3, 3, 7, 3, 4, -4, -4, -4, 14, 9, -5, -11, 4, 7, -2, -12, -6, -14, 16, 10, -14, 16, -17, 10]);
ECSearch("28.1-c",(-2*w + 10)*OK,[1, -2, 2, -1, -1, -3, 9, 3, 6, -6, 6, -2, -2, 5, -7, -7, -4, -9, 6, 0, -6, -2, 10, -6, 12, 0, -3, -14]);
ECSearch("28.1-d",(-2*w + 10)*OK,[3, 0, 2, -1, -5, -9, 3, -5, -8, -8, 4, -4, -10, 1, 7, 5, -16, -1, 2, 16, -14, 2, -16, 2, 18, 12, -5, -18]);
ECSearch("28.2-a",(-2*w - 8)*OK,[2, -1, 3, 0, -1, -9, -9, 4, -5, 10, -8, -10, -10, 15, -3, -2, -11, -12, 15, -6, 18, 10, 10, -2, -6, 12, -5, 3]);
ECSearch("28.2-b",(-2*w - 8)*OK,[0, -1, -1, -2, 3, 7, 3, 4, 3, -4, -4, 14, -4, -5, 9, 4, -11, -2, 7, -6, -12, 16, -14, 10, 16, -14, -17, -13]);
ECSearch("28.2-c",(-2*w - 8)*OK,[-2, 1, -1, 2, -1, 9, -3, 6, 3, 6, -6, -2, -2, -7, 5, -4, -7, 6, -9, -6, 0, 10, -2, -6, 0, 12, -3, 7]);
ECSearch("28.2-d",(-2*w - 8)*OK,[0, 3, -1, 2, -5, 3, -9, -8, -5, 4, -8, -10, -4, 7, 1, -16, 5, 2, -1, -14, 16, -16, 2, 2, 12, 18, -5, 3]);
ECSearch("36.1-a",(6)*OK,[-2, 3, 3, -2, -6, -6, -5, 0, 7, 2, 6, -4, -3, 7, -2, -12, -17, 3, -3, 2, -9, -14, -6, 9, -6, -9, -4]);
ECSearch("36.1-b",(6)*OK,[-1, 3, -2, -2, 5, 1, -4, 4, -10, 6, -1, 7, -6, 2, -9, -1, 6, 6, -1, -13, -15, -7, -10, 14, 14, -3, -4]);
ECSearch("36.1-c",(6)*OK,[-2, -1, 3, -2, 6, -10, 9, -4, 1, 10, 2, 4, 7, -1, -6, -4, 1, -9, 7, 14, 13, -10, -10, -21, -6, -3, -8]);
ECSearch("36.1-d",(6)*OK,[-1, -2, -2, 3, -10, 6, -4, 9, 10, 1, 4, 2, -1, 7, -4, -6, -9, 1, 14, 7, -10, 13, -10, -6, -21, -3, -14]);
ECSearch("36.1-e",(6)*OK,[3, -1, -2, -2, 1, 5, 4, -4, 6, -10, 7, -1, 2, -6, -1, -9, 6, 6, -13, -1, -7, -15, -10, 14, 14, -3, 12]);
ECSearch("36.1-f",(6)*OK,[3, -2, -2, 3, -6, -6, 0, -5, 2, 7, -4, 6, 7, -3, -12, -2, 3, -17, 2, -3, -14, -9, -6, -6, 9, -9, 6]);
ECSearch("36.2-a",(4*w + 18)*OK,[0, -1, 4, -2, -5, 0, -6, -10, -1, 8, -7, 8, -4, -11, 11, 4, -2, 11, 7, 4, -1, -14, 7, -2, 6, -9, -13, 12]);
ECSearch("36.2-b",(4*w + 18)*OK,[0, 3, 1, 0, -4, 7, 5, 4, -8, -4, 8, -13, -9, -8, 12, -11, 5, 16, 0, -9, 1, 17, -7, -14, -14, 14, -15, -8]);
ECSearch("36.2-c",(4*w + 18)*OK,[2, 3, 0, -4, -1, 6, -6, -8, 7, -2, 1, 14, -4, 9, -9, -14, -14, 3, -9, -6, 15, 10, -5, -2, 0, -21, -5, -12]);
ECSearch("36.2-d",(4*w + 18)*OK,[1, -4, -1, -2, 3, 5, 0, -2, 3, -4, -4, 7, 2, -13, 8, 16, 6, -6, -4, -10, -10, 7, 17, 10, -6, -9, 3, 7]);
ECSearch("36.2-e",(4*w + 18)*OK,[-1, 0, -3, 2, -1, 9, 0, -2, 1, 4, -8, 11, 2, -9, 0, -8, 10, -6, 12, 6, -6, 1, 7, -2, -6, 9, 13, 15]);
ECSearch("36.2-f",(4*w + 18)*OK,[0, -1, -4, -2, -5, 0, 6, 10, 1, -8, 7, 8, -4, -11, -11, -4, 2, 11, -7, 4, 1, 14, -7, 2, 6, 9, 13, 12]);
ECSearch("36.3-a",(4*w - 22)*OK,[0, 4, -1, -5, -2, -6, 0, -1, -10, -7, 8, -4, 8, 11, -11, -2, 4, 7, 11, -1, 4, 7, -14, -2, -9, 6, -13, 6]);
ECSearch("36.3-b",(4*w - 22)*OK,[0, 1, 3, -4, 0, 5, 7, -8, 4, 8, -4, -9, -13, 12, -8, 5, -11, 0, 16, 1, -9, -7, 17, -14, 14, -14, -15, 0]);
ECSearch("36.3-c",(4*w - 22)*OK,[2, 0, 3, -1, -4, -6, 6, 7, -8, 1, -2, -4, 14, -9, 9, -14, -14, -9, 3, 15, -6, -5, 10, -2, -21, 0, -5, 0]);
ECSearch("36.3-d",(4*w - 22)*OK,[1, -1, -4, 3, -2, 0, 5, 3, -2, -4, -4, 2, 7, 8, -13, 6, 16, -4, -6, -10, -10, 17, 7, 10, -9, -6, 3, -7]);
ECSearch("36.3-e",(4*w - 22)*OK,[-1, -3, 0, -1, 2, 0, 9, 1, -2, -8, 4, 2, 11, 0, -9, 10, -8, 12, -6, -6, 6, 7, 1, -2, 9, -6, 13, 15]);
ECSearch("36.3-f",(4*w - 22)*OK,[0, -4, -1, -5, -2, 6, 0, 1, 10, 7, -8, -4, 8, -11, -11, 2, -4, -7, 11, 1, 4, -7, 14, 2, 9, 6, 13, -6]);
ECSearch("45.1-a",(-9*w + 51)*OK,[3, 0, 2, 4, -6, -2, 8, 0, 12, 0, 6, -10, -12, 0, 14, 0, -10, 0, 14, 2, -8, -10, -12, -14, 8, -16, -14]);
ECSearch("45.1-b",(-9*w + 51)*OK,[1, 0, 2, -4, -6, 6, 4, -8, 4, 4, 14, -10, 12, -12, -14, 16, 6, 0, -6, -6, 4, -14, 16, -18, 0, 4, -18]);
ECSearch("45.3-a",(w + 8)*OK,[1, -1, -3, -1, -4, 0, -9, -7, -10, 8, -4, -10, 11, 12, -15, -4, 2, -6, -12, -6, -18, -7, -19, 2, 3, -12, 5, 21]);
ECSearch("45.4-a",(2*w - 9)*OK,[3, -2, -2, 3, -2, -1, -4, -2, 4, -8, 11, -12, -10, 14, 15, -8, -3, -6, 2, -7, 14, -13, -18, -4, 14, 6, -4, -15]);
ECSearch("45.4-b",(2*w - 9)*OK,[1, 2, 0, -1, 2, 3, 6, -10, 2, -10, -7, -10, -4, 0, -3, -10, 11, 0, 0, -3, 6, 5, 8, 2, -12, -6, -4, 9]);
ECSearch("45.4-c",(2*w - 9)*OK,[0, 1, 4, 0, -2, 2, 8, 4, -2, 10, -4, 6, 2, 2, -12, 4, -6, 0, -4, 2, 14, 14, 18, 2, -16, 6, -10, 12]);
ECSearch("45.4-d",(2*w - 9)*OK,[-1, -2, 0, -1, -4, -9, 0, -8, 4, -2, -5, -10, -10, 0, -9, 4, 13, -6, -6, -3, 12, -5, -8, -20, -6, 0, -14, -3]);
ECSearch("45.4-e",(2*w - 9)*OK,[0, -1, 4, 0, -2, 2, -8, -4, 2, -10, 4, 6, 2, 2, 12, -4, 6, 0, 4, 2, -14, -14, -18, -2, -16, -6, 10, 12]);
ECSearch("45.4-f",(2*w - 9)*OK,[-1, -2, 2, -5, -2, -1, 0, 6, 0, -4, -1, -8, -6, 2, -5, 4, 1, 14, 14, 1, 6, 7, 10, 8, 2, -10, 20, -7]);
ECSearch("45.2-a",(9*w + 42)*OK,[3, 0, 4, 2, -2, -6, 0, 8, 0, 12, -10, 6, 0, -12, 0, 14, 0, -10, 2, 14, -10, -8, -12, 8, -14, -16, 4]);
ECSearch("45.2-b",(9*w + 42)*OK,[1, 0, -4, 2, 6, -6, -8, 4, 4, 4, -10, 14, -12, 12, 16, -14, 0, 6, -6, -6, -14, 4, 16, 0, -18, 4, 12]);
ECSearch("45.6-a",(w - 9)*OK,[1, -1, -3, -4, -1, -9, 0, -10, -7, -4, 8, 11, -10, -15, 12, 2, -4, -12, -6, -18, -6, -19, -7, 2, -12, 3, 5, 9]);
ECSearch("45.5-a",(-2*w - 7)*OK,[3, -2, -2, -2, 3, -4, -1, 4, -2, 11, -8, -10, -12, 15, 14, -3, -8, 2, -6, 14, -7, -18, -13, -4, 6, 14, -4, 0]);
ECSearch("45.5-b",(-2*w - 7)*OK,[1, 2, 0, 2, -1, 6, 3, 2, -10, -7, -10, -4, -10, -3, 0, 11, -10, 0, 0, 6, -3, 8, 5, 2, -6, -12, -4, -6]);
ECSearch("45.5-c",(-2*w - 7)*OK,[0, 1, 4, -2, 0, 8, 2, -2, 4, -4, 10, 2, 6, -12, 2, -6, 4, -4, 0, 14, 2, 18, 14, 2, 6, -16, -10, 18]);
ECSearch("45.5-d",(-2*w - 7)*OK,[-1, -2, 0, -4, -1, 0, -9, 4, -8, -5, -2, -10, -10, -9, 0, 13, 4, -6, -6, 12, -3, -8, -5, -20, 0, -6, -14, 6]);
ECSearch("45.5-e",(-2*w - 7)*OK,[0, -1, 4, -2, 0, -8, 2, 2, -4, 4, -10, 2, 6, 12, 2, 6, -4, 4, 0, -14, 2, -18, -14, -2, -6, -16, 10, -18]);
ECSearch("45.5-f",(-2*w - 7)*OK,[-1, -2, 2, -2, -5, 0, -1, 0, 6, -1, -4, -6, -8, -5, 2, 1, 4, 14, 14, 6, 1, 10, 7, 8, -10, 2, 20, 12]);
ECSearch("48.1-a",(-4*w + 24)*OK,[1, -2, 1, -2, -3, -5, 6, -8, 9, -4, 8, -11, 2, 1, -8, 4, -6, -6, -8, 16, -2, -5, -7, -14, -12, -9, -9, -13]);
ECSearch("48.1-b",(-4*w + 24)*OK,[-2, -2, 4, 4, 0, -2, -6, 4, -6, 2, -4, -2, 2, -8, -14, -2, 6, 0, 16, 10, 4, 4, 8, 4, -18, 12, -12, 20]);
ECSearch("48.2-a",(4*w + 20)*OK,[1, 1, -2, -3, -2, 6, -5, 9, -8, 8, -4, 2, -11, -8, 1, -6, 4, -8, -6, -2, 16, -7, -5, -14, -9, -12, -9, 13]);
ECSearch("48.2-b",(4*w + 20)*OK,[-2, 4, -2, 0, 4, -6, -2, -6, 4, -4, 2, 2, -2, -14, -8, 6, -2, 16, 0, 4, 10, 8, 4, 4, 12, -18, -12, 10]);
ECSearch("49.1-a",(7)*OK,[0, 0, -1, -3, 1, 9, 1, 10, 2, -6, 10, -13, -1, -4, 12, -3, 9, -14, -6, 7, 3, -13, -17, -6, 10, 10, 1, -6]);
ECSearch("49.1-b",(7)*OK,[0, 0, -1, 1, -3, 1, 9, 2, 10, 10, -6, -1, -13, 12, -4, 9, -3, -6, -14, 3, 7, -17, -13, -6, 10, 10, 1, 18]);
ECSearch("49.2-a",(-9*w + 52)*OK,[0, 0, -1, 2, 4, 2, 6, -6, -10, -8, -4, -10, 2, -14, 14, 8, 2, -14, -4, -14, 8, -2, 2, -8, 16, 0, 0, -14, 6]);
ECSearch("49.2-b",(-9*w + 52)*OK,[2, -2, 1, -3, 3, -2, 3, 3, -10, 10, 2, 2, -7, 7, 6, 6, -5, 5, 12, -12, -15, 15, 7, -7, 2, -6, -6, -5, -12]);
ECSearch("49.3-a",(9*w + 43)*OK,[0, 0, -1, 4, 2, 2, -6, 6, -8, -10, -10, -4, -14, 2, 8, 14, -14, 2, -14, -4, -2, 8, -8, 2, 16, 0, 0, -14, -12]);
ECSearch("49.3-b",(9*w + 43)*OK,[-2, 2, 1, 3, -3, -2, 3, 3, 10, -10, 2, 2, 7, -7, 6, 6, 5, -5, -12, 12, 15, -15, -7, 7, 2, -6, -6, -5, 12]);
ECSearch("60.1-a",(2*w + 6)*OK,[0, 3, 0, 3, 0, 2, 10, 1, -10, -1, 8, -2, -15, -5, 4, 16, 9, 7, 12, -1, -10, 7, 0, 0, 7, -13, -8]);
ECSearch("60.1-b",(2*w + 6)*OK,[0, -1, 4, -1, 0, -2, -2, 3, 6, 9, -8, 2, -3, 1, -4, -4, 1, 9, 12, 1, 2, 9, 12, 4, 9, -19, 0]);
ECSearch("60.1-c",(2*w + 6)*OK,[0, -2, 0, -2, -10, -8, -10, -4, -10, 4, -12, 8, -10, 0, 14, 6, -6, -8, 2, 4, 10, 12, 10, 20, 12, -8, 12]);
ECSearch("60.2-a",(-2*w - 12)*OK,[3, -1, 0, -1, -5, -8, 2, -1, 4, -8, -1, 6, 1, -12, 2, -8, -8, -6, 6, 14, -5, 7, -10, -8, -11, -21, 13]);
ECSearch("60.2-b",(-2*w - 12)*OK,[-1, 3, 2, -4, 0, -9, 4, -8, -2, 4, -1, 5, 12, -3, 1, 16, -12, 15, 0, -3, -14, 10, 16, 6, 6, 13, -9]);
ECSearch("60.2-c",(-2*w - 12)*OK,[1, -3, -4, 3, -1, -8, 2, 9, 4, 4, -1, 6, -15, -12, 14, 0, 0, 6, -10, 18, -7, -15, -6, 16, 19, 17, -19]);
ECSearch("60.2-d",(-2*w - 12)*OK,[-3, -1, 0, 2, -8, 7, 8, -10, 4, 10, -7, 3, -8, -3, 11, -2, 4, -3, 12, 11, -2, 16, 2, -2, -8, -21, 7]);
ECSearch("60.4-a",(-2*w + 8)*OK,[0, 3, 3, 0, 2, 0, 1, 10, -1, -10, -2, 8, -5, -15, 16, 4, 7, 9, -1, 12, 7, -10, 0, 7, 0, -13, 14]);
ECSearch("60.4-b",(-2*w + 8)*OK,[0, -1, -1, 4, -2, 0, 3, -2, 9, 6, 2, -8, 1, -3, -4, -4, 9, 1, 1, 12, 9, 2, 12, 9, 4, -19, 18]);
ECSearch("60.4-c",(-2*w + 8)*OK,[0, -2, -2, 0, -8, -10, -4, -10, 4, -10, 8, -12, 0, -10, 6, 14, -8, -6, 4, 2, 12, 10, 10, 12, 20, -8, -6]);
ECSearch("60.3-a",(-2*w + 14)*OK,[3, -1, -1, 0, -8, -5, -1, 2, -8, 4, 6, -1, -12, 1, -8, 2, -6, -8, 14, 6, 7, -5, -10, -11, -8, -21, 15]);
ECSearch("60.3-b",(-2*w + 14)*OK,[-1, 3, -4, 2, -9, 0, -8, 4, 4, -2, 5, -1, -3, 12, 16, 1, 15, -12, -3, 0, 10, -14, 16, 6, 6, 13, -21]);
ECSearch("60.3-c",(-2*w + 14)*OK,[1, -3, 3, -4, -8, -1, 9, 2, 4, 4, 6, -1, -12, -15, 0, 14, 6, 0, 18, -10, -15, -7, -6, 19, 16, 17, 5]);
ECSearch("60.3-d",(-2*w + 14)*OK,[-3, -1, 2, 0, 7, -8, -10, 8, 10, 4, 3, -7, -3, -8, -2, 11, -3, 4, 11, 12, 16, -2, 2, -8, -2, -21, -15]);
ECSearch("61.1-a",(-3*w + 19)*OK,[0, 1, 1, 3, -2, -1, 3, -2, 10, -1, -7, -6, 2, 14, 6, -10, 0, -4, -1, -10, -4, -7, -8, -8, 11, 6, -11, 1, -9]);
ECSearch("61.1-b",(-3*w + 19)*OK,[0, 1, -3, -1, -2, -1, -1, 6, -6, 11, 1, 2, -6, 6, -10, -2, 16, -4, -1, 6, 12, -3, 8, 16, 7, 6, -15, 5, -21]);
ECSearch("61.2-a",(-3*w - 16)*OK,[1, 0, 1, -2, 3, 3, -1, 10, -2, -7, -1, 2, -6, 14, -10, 6, -4, 0, -10, -1, -7, -4, -8, -8, 11, -11, 6, 1, 20]);
ECSearch("61.2-b",(-3*w - 16)*OK,[1, 0, -3, -2, -1, -1, -1, -6, 6, 1, 11, -6, 2, 6, -2, -10, -4, 16, 6, -1, -3, 12, 16, 8, 7, -15, 6, 5, -4]);
ECSearch("63.1-a",(-3*w + 15)*OK,[1, 0, -2, 0, -8, 0, -8, 4, -4, 4, 10, 6, -10, 0, -6, -6, 6, -6, -10, 12, 14, -6, -10, 14, -10, -14, 2]);
ECSearch("63.1-b",(-3*w + 15)*OK,[-3, -2, 2, 4, 6, 6, -4, 0, -4, 0, -2, -2, 12, 8, -6, -6, 4, 0, 6, -6, -6, -2, 2, -2, -18, 2, 0]);
ECSearch("63.3-a",(-w - 9)*OK,[2, 3, 1, 3, 0, 3, 3, 8, 0, -6, 8, -7, 3, -2, -10, -17, -11, -2, -2, 1, 11, -5, 13, -14, 18, -14, -1, 0]);
ECSearch("63.3-b",(-w - 9)*OK,[0, 1, 2, 4, -2, -6, -6, -10, 8, -4, -10, 2, 14, -14, 8, -2, -14, -4, -14, -8, 2, -2, -8, 16, 0, 0, 14, -6]);
ECSearch("63.3-c",(-w - 9)*OK,[2, -3, -2, 0, 0, 6, 0, 2, 0, 6, 2, 2, -6, -8, 2, 10, -8, 4, -2, -2, 2, -2, -8, 4, -6, 4, 14, 0]);
ECSearch("63.3-d",(-w - 9)*OK,[1, -3, -2, -3, -3, -9, 0, 4, -3, 0, -2, 5, -6, 13, -8, 8, 14, -14, 8, 10, -2, -1, -7, -10, 6, -13, -5, 3]);
ECSearch("63.3-e",(-w - 9)*OK,[-1, 3, -2, 3, -3, -9, 0, -4, 3, 0, 2, 5, -6, 13, 8, -8, -14, -14, -8, 10, 2, 1, 7, 10, 6, 13, 5, 3]);
ECSearch("63.4-a",(-8*w + 45)*OK,[0, 1, -4, -2, -2, 6, 6, 8, -10, -10, -4, 14, 2, -8, 14, -14, -2, 14, 4, -2, 8, -8, -2, 16, 0, 0, 14, -12]);
ECSearch("63.4-b",(-8*w + 45)*OK,[-1, -1, 4, 0, 3, 0, 2, -1, 8, -10, -2, -6, -5, 3, 10, -9, -12, 9, 9, 18, 13, 18, -2, -5, 8, 13, 8, -8]);
ECSearch("63.4-c",(-8*w + 45)*OK,[1, -3, 0, -4, 3, 0, 6, 9, -4, 2, 6, 6, -13, -5, 14, 1, 4, 17, -1, -14, -13, -2, -14, -11, -4, -21, 8, 0]);
ECSearch("63.2-a",(-3*w - 12)*OK,[1, -2, 0, 0, 0, -8, 4, -8, 4, -4, 6, 10, 0, -10, -6, -6, -6, 6, 12, -10, -6, 14, -10, -10, 14, -14, -2]);
ECSearch("63.2-b",(-3*w - 12)*OK,[-3, 2, -2, 4, 6, 6, 0, -4, 0, -4, -2, -2, 8, 12, -6, -6, 0, 4, -6, 6, -2, -6, 2, -18, -2, 2, -12]);
ECSearch("63.6-a",(w - 10)*OK,[2, 3, 3, 1, 0, 3, 3, 0, 8, 8, -6, 3, -7, -10, -2, -11, -17, -2, -2, 11, 1, 13, -5, -14, -14, 18, -1, 6]);
ECSearch("63.6-b",(w - 10)*OK,[0, 1, 4, 2, -2, -6, -6, 8, -10, -10, -4, 14, 2, 8, -14, -14, -2, -14, -4, 2, -8, -8, -2, 16, 0, 0, 14, 12]);
ECSearch("63.6-c",(w - 10)*OK,[2, -3, 0, -2, 0, 0, 6, 0, 2, 2, 6, -6, 2, 2, -8, -8, 10, -2, 4, 2, -2, -8, -2, 4, 4, -6, 14, 0]);
ECSearch("63.6-d",(w - 10)*OK,[1, -3, -3, -2, -3, 0, -9, -3, 4, -2, 0, -6, 5, -8, 13, 14, 8, 8, -14, -2, 10, -7, -1, -10, -13, 6, -5, 9]);
ECSearch("63.6-e",(w - 10)*OK,[-1, 3, 3, -2, -3, 0, -9, 3, -4, 2, 0, -6, 5, 8, 13, -14, -8, -8, -14, 2, 10, 7, 1, 10, 13, 6, 5, -9]);
ECSearch("63.5-a",(-8*w - 37)*OK,[0, 1, -2, -4, -2, 6, 6, -10, 8, -4, -10, 2, 14, 14, -8, -2, -14, 4, 14, 8, -2, -2, -8, 16, 0, 0, 14, 6]);
ECSearch("63.5-b",(-8*w - 37)*OK,[-1, -1, 0, 4, 3, 2, 0, 8, -1, -2, -10, -5, -6, 10, 3, -12, -9, 9, 9, 13, 18, -2, 18, -5, 13, 8, 8, 4]);
ECSearch("63.5-c",(-8*w - 37)*OK,[1, -3, -4, 0, 3, 6, 0, -4, 9, 6, 2, -13, 6, 14, -5, 4, 1, -1, 17, -13, -14, -14, -2, -11, -21, -4, 8, 12]);
