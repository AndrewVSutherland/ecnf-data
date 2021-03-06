print "Field 2.2.77.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 19);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK);
Append(~Plist,(w + 3)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(w - 6)*OK);
Append(~Plist,(w + 2)*OK);
Append(~Plist,(w - 3)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 2)*OK);
Append(~Plist,(w)*OK);
Append(~Plist,(w - 1)*OK);
Append(~Plist,(w + 6)*OK);
Append(~Plist,(w - 7)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(w + 7)*OK);
Append(~Plist,(w - 8)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(w + 8)*OK);
Append(~Plist,(w - 9)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(2*w + 3)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(2*w + 11)*OK);
Append(~Plist,(w + 9)*OK);
Append(~Plist,(w - 10)*OK);
Append(~Plist,(-2*w + 3)*OK);
Append(~Plist,(2*w + 1)*OK);
Append(~Plist,(-3*w + 11)*OK);
Append(~Plist,(3*w + 8)*OK);
Append(~Plist,(-3*w - 7)*OK);
Append(~Plist,(3*w - 10)*OK);
Append(~Plist,(w + 11)*OK);
Append(~Plist,(w - 12)*OK);
Append(~Plist,(-3*w + 8)*OK);
Append(~Plist,(3*w + 5)*OK);
Append(~Plist,(w + 12)*OK);
Append(~Plist,(w - 13)*OK);
Append(~Plist,(-4*w + 15)*OK);
Append(~Plist,(4*w + 11)*OK);
Append(~Plist,(w + 13)*OK);
Append(~Plist,(w - 14)*OK);
Append(~Plist,(-3*w - 1)*OK);
Append(~Plist,(3*w - 4)*OK);
Append(~Plist,(-3*w + 2)*OK);
Append(~Plist,(3*w - 1)*OK);
Append(~Plist,(-2*w + 17)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(w + 14)*OK);
Append(~Plist,(w - 15)*OK);
Append(~Plist,(-4*w + 11)*OK);
Append(~Plist,(4*w + 7)*OK);
Append(~Plist,(5*w + 13)*OK);
Append(~Plist,(5*w - 18)*OK);
Append(~Plist,(-5*w + 17)*OK);
Append(~Plist,(-5*w - 12)*OK);
Append(~Plist,(-4*w + 7)*OK);
Append(~Plist,(4*w + 3)*OK);
Append(~Plist,(-6*w + 23)*OK);
Append(~Plist,(6*w + 17)*OK);
Append(~Plist,(-4*w + 3)*OK);
Append(~Plist,(4*w - 1)*OK);
Append(~Plist,(-4*w - 23)*OK);
Append(~Plist,(4*w - 27)*OK);
Append(~Plist,(-5*w + 31)*OK);
Append(~Plist,(5*w + 26)*OK);
Append(~Plist,(-5*w + 14)*OK);
Append(~Plist,(5*w + 9)*OK);
Append(~Plist,(-3*w + 25)*OK);
Append(~Plist,(3*w + 22)*OK);
Append(~Plist,(5*w + 27)*OK);
Append(~Plist,(5*w - 32)*OK);
Append(~Plist,(w + 20)*OK);
Append(~Plist,(w - 21)*OK);
Append(~Plist,(-5*w - 6)*OK);
Append(~Plist,(5*w - 11)*OK);
Append(~Plist,(-4*w + 29)*OK);
Append(~Plist,(4*w + 25)*OK);
Append(~Plist,(-5*w + 9)*OK);
Append(~Plist,(5*w + 4)*OK);
Append(~Plist,(w + 21)*OK);
Append(~Plist,(w - 22)*OK);
Append(~Plist,(-5*w + 33)*OK);
Append(~Plist,(-5*w - 28)*OK);
Append(~Plist,(-5*w + 7)*OK);
Append(~Plist,(-5*w - 2)*OK);
Append(~Plist,(-6*w + 37)*OK);
Append(~Plist,(6*w + 31)*OK);
Append(~Plist,(-5*w + 4)*OK);
Append(~Plist,(5*w - 1)*OK);
Append(~Plist,(w + 22)*OK);
Append(~Plist,(w - 23)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(-8*w + 31)*OK);
Append(~Plist,(8*w + 23)*OK);
Append(~Plist,(-7*w + 24)*OK);
Append(~Plist,(-7*w - 17)*OK);
Append(~Plist,(7*w - 23)*OK);
Append(~Plist,(7*w + 16)*OK);
Append(~Plist,(-6*w - 7)*OK);
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

ECSearch("1.1-a",(1)*OK,[-3, 0, 6, 4, 0, 0, 0, 0, 0, 0, -8, -8, 10, -6, -6, 0, 0, 10, 10, 0, 0, -4, -4, -16, -16, 0, 0, 0, 0, 0]);
ECSearch("7.1-a",(w + 3)*OK,[-1, -2, 0, 4, -2, 0, 6, 4, 4, 6, -6, 2, -10, 2, 6, 0, 6, 6, -8, 10, 14, 2, 6, -6, 4, -14, 12, 0, 12]);
ECSearch("7.1-b",(w + 3)*OK,[-1, -2, 0, 2, -4, -6, 0, -4, -4, -6, 6, 2, 2, -10, 0, -6, 6, 6, -10, 8, 2, 14, -6, 6, 14, -4, 0, -12, -6]);
ECSearch("7.1-c",(w + 3)*OK,[-1, -2, 0, -2, 4, 6, 0, 4, 4, -6, 6, 2, 2, -10, 0, 6, 6, 6, 10, -8, 2, 14, -6, 6, -14, 4, 0, 12, 6]);
ECSearch("7.1-d",(w + 3)*OK,[-1, -2, 0, -4, 2, 0, -6, -4, -4, 6, -6, 2, -10, 2, -6, 0, 6, 6, 8, -10, 14, 2, 6, -6, -4, 14, -12, 0, -12]);
ECSearch("11.1-a",(w - 6)*OK,[0, 2, -5, -4, -4, 2, 2, 0, 0, -1, -1, -9, 3, 3, 8, 8, -6, -6, -12, -12, -7, -7, -3, -3, -4, -4, 6, 6, -2]);
ECSearch("11.1-b",(w - 6)*OK,[0, -2, -5, 4, 4, -2, -2, 0, 0, -1, -1, -9, 3, 3, -8, -8, -6, -6, 12, 12, -7, -7, -3, -3, 4, 4, -6, -6, 2]);
ECSearch("17.1-a",(w + 1)*OK,[0, 0, -3, 4, 0, 6, 6, 0, -6, 1, -5, 1, 3, 9, 12, 0, -2, -2, 12, 0, 5, 5, 5, -13, 12, -6, 0, 12, 0]);
ECSearch("17.1-b",(w + 1)*OK,[0, 0, -3, 4, 0, -6, -6, 0, 6, 1, -5, 1, 3, 9, -12, 0, -2, -2, -12, 0, 5, 5, 5, -13, -12, 6, 0, -12, 0]);
ECSearch("17.2-a",(w - 2)*OK,[0, 0, -3, 4, 6, 0, 6, -6, 0, -5, 1, 1, 9, 3, 0, 12, -2, -2, 0, 12, 5, 5, -13, 5, -6, 12, 12, 0, 6]);
ECSearch("17.2-b",(w - 2)*OK,[0, 0, -3, 4, -6, 0, -6, 6, 0, -5, 1, 1, 9, 3, 0, -12, -2, -2, 0, -12, 5, 5, -13, 5, 6, -12, -12, 0, -6]);
ECSearch("23.1-a",(w + 6)*OK,[1, 2, -2, -4, 0, 4, 6, -8, -8, -8, -4, 2, -2, 2, 6, 6, -14, 6, -8, 14, -12, 4, 0, -8, 14, 2, -8, -4, -12]);
ECSearch("23.1-b",(w + 6)*OK,[1, -2, -2, -4, 0, -4, -6, 8, 8, 8, -4, 2, -2, 2, -6, -6, -14, 6, 8, -14, -12, 4, 0, -8, -14, -2, 8, 4, 12]);
ECSearch("23.2-a",(w - 7)*OK,[1, 2, -2, -4, 4, 0, -8, 6, -8, -8, -4, 2, 2, -2, 6, 6, 6, -14, 14, -8, 4, -12, -8, 0, 2, 14, -4, -8, 16]);
ECSearch("23.2-b",(w - 7)*OK,[1, -2, -2, -4, -4, 0, 8, -6, 8, 8, -4, 2, 2, -2, -6, -6, 6, -14, -14, 8, 4, -12, -8, 0, -2, -14, 4, 8, -16]);
ECSearch("25.1-a",(5)*OK,[0, 0, -3, 1, 3, -3, -3, 3, -6, 6, 4, 4, 0, 0, -6, 6, 10, 10, 0, 0, 14, 14, 8, 8, 6, -6, -12, 12, -18]);
ECSearch("25.1-b",(5)*OK,[0, 0, -3, 1, -3, 3, 3, -3, 6, -6, 4, 4, 0, 0, 6, -6, 10, 10, 0, 0, 14, 14, 8, 8, -6, 6, 12, -12, 18]);
ECSearch("28.1-a",(2*w + 6)*OK,[-2, 0, 4, 4, -6, -6, -2, -2, 0, 0, -10, 2, 2, -6, -6, 6, 6, -8, -8, -4, -4, 0, 0, -2, -2, 6, 6, 0]);
ECSearch("28.1-b",(2*w + 6)*OK,[-2, 0, -4, -4, 6, 6, 2, 2, 0, 0, -10, 2, 2, 6, 6, 6, 6, 8, 8, -4, -4, 0, 0, 2, 2, -6, -6, 0]);
ECSearch("36.1-a",(6)*OK,[0, -4, 4, -4, 0, 0, -4, 4, 0, 0, -6, -6, -6, 0, 0, 10, 10, -4, 4, -4, -4, -8, -8, -16, 16, 12, -12, 4]);
ECSearch("36.1-b",(6)*OK,[0, -4, -4, 4, 0, 0, 4, -4, 0, 0, -6, -6, -6, 0, 0, 10, 10, 4, -4, -4, -4, -8, -8, 16, -16, -12, 12, -4]);
ECSearch("41.1-a",(-2*w + 7)*OK,[3, 0, -3, 1, 6, 3, 3, 0, 0, 6, 4, 4, 1, 3, -6, 0, -14, 1, -6, -6, -13, -13, 8, -10, -3, -3, -15, 6, 3]);
ECSearch("41.1-b",(-2*w + 7)*OK,[3, 0, -3, 1, -6, -3, -3, 0, 0, -6, 4, 4, 1, 3, -6, 0, -14, 1, 6, 6, -13, -13, 8, -10, 3, 3, 15, -6, -3]);
ECSearch("41.2-a",(2*w + 5)*OK,[3, 0, -3, 1, 3, 6, 0, 3, 6, 0, 4, 4, 1, -6, 3, 0, 1, -14, -6, -6, -13, -13, -10, 8, -3, -3, 6, -15, 18]);
ECSearch("41.2-b",(2*w + 5)*OK,[3, 0, -3, 1, -3, -6, 0, -3, -6, 0, 4, 4, 1, -6, 3, 0, 1, -14, 6, 6, -13, -13, -10, 8, 3, 3, -6, 15, -18]);
ECSearch("44.1-a",(2*w - 12)*OK,[2, 0, -4, 1, -3, 2, 5, 0, -1, -6, 1, -2, -7, -12, -7, -11, 9, -7, 8, 8, -12, -3, -8, -14, 6, -4, 16, -2]);
ECSearch("44.1-b",(2*w - 12)*OK,[2, 0, 1, -4, 2, -3, 0, 5, -6, -1, 1, -7, -2, -7, -12, 9, -11, 8, -7, -12, 8, -8, -3, 6, -14, 16, -4, -2]);
ECSearch("44.1-c",(2*w - 12)*OK,[0, 2, -2, 2, 0, 0, -2, 2, 0, 0, 6, 2, 2, 8, -8, 2, 2, 10, -10, 12, 12, -4, -4, -12, 12, -18, 18, -6]);
ECSearch("44.1-d",(2*w - 12)*OK,[-2, 0, -1, 4, -2, 3, 0, -5, -6, -1, 1, -7, -2, 7, 12, 9, -11, -8, 7, -12, 8, -8, -3, -6, 14, -16, 4, 2]);
ECSearch("44.1-e",(2*w - 12)*OK,[0, 2, 2, -2, 0, 0, 2, -2, 0, 0, 6, 2, 2, -8, 8, 2, 2, -10, 10, 12, 12, -4, -4, 12, -12, 18, -18, 6]);
ECSearch("44.1-f",(2*w - 12)*OK,[-2, 0, 4, -1, 3, -2, -5, 0, -1, -6, 1, -2, -7, 12, 7, -11, 9, 7, -8, 8, -12, -3, -8, 14, -6, 4, -16, 2]);
ECSearch("49.1-a",(7)*OK,[-1, 2, 0, 4, 2, 0, -6, -4, 4, -6, 6, -2, -10, 2, -6, 0, -6, -6, -8, -10, -14, -2, -6, 6, 4, 14, -12, 0, 12]);
ECSearch("49.1-b",(7)*OK,[-1, 2, 0, -4, -2, 0, 6, 4, -4, -6, 6, -2, -10, 2, 6, 0, -6, -6, 8, 10, -14, -2, -6, 6, -4, -14, 12, 0, -12]);
ECSearch("49.1-c",(7)*OK,[-1, 2, 0, 2, 4, -6, 0, 4, -4, 6, -6, -2, 2, -10, 0, -6, -6, -6, -10, -8, -2, -14, 6, -6, 14, 4, 0, -12, -6]);
ECSearch("49.1-d",(7)*OK,[-3, -6, 4, 0, 0, 0, 0, 0, 0, 8, 8, -10, -6, -6, 0, 0, -10, -10, 0, 0, 4, 4, 16, 16, 0, 0, 0, 0, 0]);
ECSearch("49.1-e",(7)*OK,[-1, 2, 0, -2, -4, 6, 0, -4, 4, 6, -6, -2, 2, -10, 0, 6, -6, -6, 10, 8, -2, -14, 6, -6, -14, -4, 0, 12, 6]);
ECSearch("63.1-a",(3*w + 9)*OK,[-3, 4, 2, 2, 6, 6, -4, -4, 0, 0, -6, 6, 6, -2, -2, 6, 6, 2, 2, 4, 4, 0, 0, 6, 6, 12, 12, -14]);
ECSearch("63.1-b",(3*w + 9)*OK,[-3, 4, -2, -2, -6, -6, 4, 4, 0, 0, -6, 6, 6, 2, 2, 6, 6, -2, -2, 4, 4, 0, 0, -6, -6, -12, -12, 14]);
ECSearch("76.1-a",(2*w)*OK,[3, -2, 3, -3, 2, -2, -6, -5, -3, 4, 3, 1, -4, -3, -10, 4, -3, -10, -3, -16, -13, -15, 6, 4, 2, 9, -15, -12]);
ECSearch("76.1-b",(2*w)*OK,[-3, -2, 3, 3, -2, 2, 6, 5, -3, 4, 3, 1, -4, 3, 10, 4, -3, 10, 3, -16, -13, -15, 6, -4, -2, -9, 15, 12]);
ECSearch("76.1-c",(2*w)*OK,[3, 4, 3, 6, -2, -1, -6, 8, -6, 4, -3, -8, 2, -6, 7, 1, -12, 7, 6, 2, -13, -6, -3, 11, 1, 0, -6, 0]);
ECSearch("76.1-d",(2*w)*OK,[-3, 4, 3, -6, 2, 1, 6, -8, -6, 4, -3, -8, 2, 6, -7, 1, -12, -7, -6, 2, -13, -6, -3, -11, -1, 0, 6, 0]);
ECSearch("76.2-a",(2*w - 2)*OK,[3, -2, 3, 2, -3, -6, -2, -5, 4, -3, 3, -4, 1, -10, -3, -3, 4, -3, -10, -13, -16, 6, -15, 2, 4, -15, 9, 0]);
ECSearch("76.2-b",(2*w - 2)*OK,[-3, -2, 3, -2, 3, 6, 2, 5, 4, -3, 3, -4, 1, 10, 3, -3, 4, 3, 10, -13, -16, 6, -15, -2, -4, 15, -9, 0]);
ECSearch("76.2-c",(2*w - 2)*OK,[3, 4, 3, -2, 6, -6, -1, 8, 4, -6, -3, 2, -8, 7, -6, -12, 1, 6, 7, -13, 2, -3, -6, 1, 11, -6, 0, 18]);
ECSearch("76.2-d",(2*w - 2)*OK,[-3, 4, 3, 2, -6, 6, 1, -8, 4, -6, -3, 2, -8, -7, 6, -12, 1, -6, -7, -13, 2, -3, -6, -1, -11, 6, 0, -18]);
ECSearch("77.1-a",(-2*w + 1)*OK,[-1, 4, -4, 2, 0, 6, -4, -4, 0, 6, 2, 2, -10, -6, 0, -12, 0, -10, -10, 8, -10, -12, -6, 2, -10, -12, 0, 0]);
ECSearch("77.1-b",(-2*w + 1)*OK,[-4, 3, -4, -4, 2, 2, -6, -6, -5, -5, -9, -5, -5, -2, -2, -6, -6, -2, -2, -3, -3, 1, 1, 10, 10, 12, 12, -12]);
ECSearch("77.1-c",(-2*w + 1)*OK,[-1, 4, -2, 4, -6, 0, 4, 4, 6, 0, 2, -10, 2, 0, 6, 0, -12, 10, 10, -10, 8, -6, -12, 10, -2, 0, 12, 6]);
ECSearch("77.1-d",(-2*w + 1)*OK,[-3, -2, -4, -4, -4, -4, 0, 0, -4, -4, -6, -6, -6, -4, -4, -6, -6, 0, 0, 8, 8, -12, -12, 8, 8, 0, 0, 4]);
ECSearch("77.1-e",(-2*w + 1)*OK,[-4, -5, -4, -4, -6, -6, 2, 2, 3, 3, -1, 11, 11, 6, 6, -6, -6, -10, -10, 5, 5, 9, 9, 2, 2, 12, 12, -12]);
ECSearch("77.1-f",(-2*w + 1)*OK,[-1, 4, 2, -4, 6, 0, -4, -4, 6, 0, 2, -10, 2, 0, -6, 0, -12, -10, -10, -10, 8, -6, -12, -10, 2, 0, -12, -6]);
ECSearch("77.1-g",(-2*w + 1)*OK,[-1, 4, 4, -2, 0, -6, 4, 4, 0, 6, 2, 2, -10, 6, 0, -12, 0, 10, 10, 8, -10, -12, -6, -2, 10, 12, 0, 0]);
ECSearch("77.1-h",(-2*w + 1)*OK,[-4, 3, 4, 4, -2, -2, 6, 6, -5, -5, -9, -5, -5, 2, 2, -6, -6, 2, 2, -3, -3, 1, 1, -10, -10, -12, -12, 12]);
ECSearch("77.1-i",(-2*w + 1)*OK,[-3, -2, 4, 4, 4, 4, 0, 0, -4, -4, -6, -6, -6, 4, 4, -6, -6, 0, 0, 8, 8, -12, -12, -8, -8, 0, 0, -4]);
ECSearch("77.1-j",(-2*w + 1)*OK,[-4, -5, 4, 4, 6, 6, -2, -2, 3, 3, -1, 11, 11, -6, -6, -6, -6, 10, 10, 5, 5, 9, 9, -2, -2, -12, -12, 12]);
ECSearch("81.1-a",(9)*OK,[-3, 0, -4, 0, 0, 0, 0, 0, 0, 8, 8, 10, -6, -6, 0, 0, -10, -10, 0, 0, -4, -4, 16, 16, 0, 0, 0, 0, 0]);
ECSearch("91.1-a",(w + 10)*OK,[-1, -2, -5, 3, -4, 0, 4, -6, 4, 1, 2, 7, 10, 0, 11, 6, 1, -5, 7, -13, 4, -6, -14, -4, -6, -5, -13, 11]);
ECSearch("91.1-b",(w + 10)*OK,[-1, -2, -5, -3, 4, 0, -4, 6, 4, 1, 2, 7, 10, 0, -11, 6, 1, 5, -7, -13, 4, -6, -14, 4, 6, 5, 13, -11]);
ECSearch("91.2-a",(w - 11)*OK,[-1, -2, -5, 3, 0, -4, -6, 4, 1, 4, 2, 10, 7, 11, 0, 1, 6, 7, -5, 4, -13, -14, -6, -6, -4, -13, -5, -3]);
ECSearch("91.2-b",(w - 11)*OK,[-1, -2, -5, -3, 0, 4, 6, -4, 1, 4, 2, 10, 7, -11, 0, 1, 6, -7, 5, 4, -13, -14, -6, 6, 4, 13, 5, 3]);
ECSearch("92.1-a",(2*w + 12)*OK,[0, 4, 4, 3, 3, -7, -4, 7, -4, 7, -4, -10, 11, -6, 5, -2, 12, -7, 12, 12, -3, -8, 9, 10, 1, -9, -11, -6]);
ECSearch("92.1-b",(2*w + 12)*OK,[0, 4, 4, -3, -3, 7, 4, -7, 4, 7, -4, -10, 11, 6, -5, -2, 12, 7, -12, 12, -3, -8, 9, -10, -1, 9, 11, 6]);
ECSearch("92.2-a",(2*w - 14)*OK,[0, 4, 4, 3, 3, -4, -7, -4, 7, 7, -4, 11, -10, 5, -6, 12, -2, 12, -7, -3, 12, 9, -8, 1, 10, -11, -9, 3]);
ECSearch("92.2-b",(2*w - 14)*OK,[0, 4, 4, -3, -3, 4, 7, 4, -7, 7, -4, 11, -10, -5, 6, 12, -2, -12, 7, -3, 12, 9, -8, -1, -10, 11, 9, -3]);
ECSearch("99.1-a",(3*w - 18)*OK,[-3, 0, 4, -4, -4, 4, -8, 8, 8, 8, 10, 10, 10, 4, -4, -6, -6, 12, -12, -4, -4, 0, 0, 4, -4, -8, 8, -12]);
ECSearch("99.1-b",(3*w - 18)*OK,[-3, -4, 2, 2, 2, 2, 0, 0, 8, 8, -6, 6, 6, 2, 2, 6, 6, -6, -6, -4, -4, 0, 0, 14, 14, -12, -12, -2]);
ECSearch("99.1-c",(3*w - 18)*OK,[-3, 4, -2, -2, -2, -2, 0, 0, 8, 8, -6, 6, 6, -2, -2, 6, 6, 6, 6, -4, -4, 0, 0, -14, -14, 12, 12, 2]);
ECSearch("99.1-d",(3*w - 18)*OK,[-3, 0, -4, 4, 4, -4, 8, -8, 8, 8, 10, 10, 10, -4, 4, -6, -6, -12, 12, -4, -4, 0, 0, -4, 4, 8, -8, 12]);
ECSearch("100.1-a",(10)*OK,[0, 2, -4, 2, -2, 8, -8, 6, -6, 4, 4, -10, -10, -4, 4, -10, -10, -10, 10, 4, 4, -12, -12, 4, -4, 2, -2, -2]);
ECSearch("100.1-b",(10)*OK,[0, 2, -4, -2, 2, -8, 8, -6, 6, 4, 4, -10, -10, 4, -4, -10, -10, 10, -10, 4, 4, -12, -12, -4, 4, -2, 2, 2]);
ECSearch("113.1-a",(w + 11)*OK,[1, 0, 2, 0, 2, 2, 2, -2, -4, -4, 4, -8, -6, 6, -10, -6, 10, 6, 6, -10, 14, 0, 4, -8, -12, -2, -6, -12, 12, 2]);
ECSearch("113.1-b",(w + 11)*OK,[1, 0, 2, 0, -2, -2, -2, 2, 4, 4, 4, -8, -6, 6, -10, 6, -10, 6, 6, 10, -14, 0, 4, -8, -12, 2, 6, 12, -12, -2]);
ECSearch("113.2-a",(w - 12)*OK,[1, 0, 2, 0, 2, 2, -2, 2, -4, -4, -8, 4, -6, -10, 6, 10, -6, 6, 6, 14, -10, 4, 0, -12, -8, -6, -2, 12, -12, 6]);
ECSearch("113.2-b",(w - 12)*OK,[1, 0, 2, 0, -2, -2, 2, -2, 4, 4, -8, 4, -6, -10, 6, -10, 6, 6, 6, -14, 10, 4, 0, -12, -8, 6, 2, -12, 12, -6]);
ECSearch("117.1-a",(3*w + 6)*OK,[1, 4, 0, -2, 2, 2, 0, 0, -4, 4, 10, 6, -10, 10, -6, -2, 14, -2, 14, -4, 4, 4, -12, -14, 2, -12, 12, 6]);
ECSearch("117.1-b",(3*w + 6)*OK,[1, -4, 0, 2, -2, -2, 0, 0, -4, 4, 10, 6, -10, -10, 6, -2, 14, 2, -14, -4, 4, 4, -12, 14, -2, 12, -12, -6]);
ECSearch("117.2-a",(3*w - 9)*OK,[1, 4, 0, -2, 2, 2, 0, 0, 4, -4, 10, -10, 6, -6, 10, 14, -2, 14, -2, 4, -4, -12, 4, 2, -14, 12, -12, 6]);
ECSearch("117.2-b",(3*w - 9)*OK,[1, -4, 0, 2, -2, -2, 0, 0, 4, -4, 10, -10, 6, 6, -10, 14, -2, -14, 2, 4, -4, -12, 4, -2, 14, -12, 12, -6]);
ECSearch("119.1-a",(-2*w + 15)*OK,[-1, 4, -3, 2, -4, -3, 5, 5, -3, 0, 2, 2, -1, 0, -6, -6, -6, -1, -1, -16, 5, 12, 6, -4, -4, -18, 6, 0]);
ECSearch("119.1-b",(-2*w + 15)*OK,[-1, 4, -3, -2, 4, 3, -5, -5, -3, 0, 2, 2, -1, 0, 6, -6, -6, 1, 1, -16, 5, 12, 6, 4, 4, 18, -6, 0]);
ECSearch("119.1-c",(-2*w + 15)*OK,[3, -2, -4, 2, -2, -4, 2, 4, -6, -6, 8, 6, -2, -6, 2, -6, -6, 14, -4, -8, 2, 4, -12, -2, 10, -8, 4, -14]);
ECSearch("119.1-d",(-2*w + 15)*OK,[3, -2, -4, -2, 2, 4, -2, -4, -6, -6, 8, 6, -2, 6, -2, -6, -6, -14, 4, -8, 2, 4, -12, 2, -10, 8, -4, 14]);
ECSearch("119.2-a",(2*w + 13)*OK,[-1, 4, -3, -4, 2, -3, 5, 5, 0, -3, 2, -1, 2, -6, 0, -6, -6, -1, -1, 5, -16, 6, 12, -4, -4, 6, -18, -15]);
ECSearch("119.2-b",(2*w + 13)*OK,[-1, 4, -3, 4, -2, 3, -5, -5, 0, -3, 2, -1, 2, 6, 0, -6, -6, 1, 1, 5, -16, 6, 12, 4, 4, -6, 18, 15]);
ECSearch("119.2-c",(2*w + 13)*OK,[3, -2, -4, -2, 2, -4, 4, 2, -6, -6, 8, -2, 6, 2, -6, -6, -6, -4, 14, 2, -8, -12, 4, 10, -2, 4, -8, 16]);
ECSearch("119.2-d",(2*w + 13)*OK,[3, -2, -4, 2, -2, 4, -4, -2, -6, -6, 8, -2, 6, -2, 6, -6, -6, 4, -14, 2, -8, -12, 4, -10, 2, -4, 8, -16]);
ECSearch("121.1-a",(11)*OK,[0, 2, -1, 4, 4, -4, 0, -2, -6, 3, -5, 3, -9, 7, -2, -6, 10, 2, -6, 6, -7, 1, 5, -11, 2, -2, 10, -14, -14]);
ECSearch("121.1-b",(11)*OK,[-4, 0, -5, 0, 0, 0, 0, 0, 0, -9, -9, -1, 7, 7, 0, 0, 6, 6, 0, 0, 13, 13, -3, -3, 0, 0, 0, 0, 0]);
ECSearch("121.1-c",(11)*OK,[0, -2, -1, -4, -4, 4, 0, 2, 6, 3, -5, 3, -9, 7, 2, 6, 10, 2, 6, -6, -7, 1, 5, -11, -2, 2, -10, 14, 14]);
ECSearch("121.1-d",(11)*OK,[-3, -2, -2, 1, 1, -5, -5, 6, 6, 2, 2, -9, -3, -3, -5, -5, 9, 9, 6, 6, 2, 2, 12, 12, -2, -2, 6, 6, -10]);
ECSearch("121.1-e",(11)*OK,[-3, 2, -2, -1, -1, 5, 5, -6, -6, 2, 2, -9, -3, -3, 5, 5, 9, 9, -6, -6, 2, 2, 12, 12, 2, 2, -6, -6, 10]);
ECSearch("121.1-f",(11)*OK,[0, 2, -1, 4, 4, 0, -4, -6, -2, -5, 3, 3, 7, -9, -6, -2, 2, 10, 6, -6, 1, -7, -11, 5, -2, 2, -14, 10, -6]);
ECSearch("121.1-g",(11)*OK,[0, -2, -1, -4, -4, 0, 4, 6, 2, -5, 3, 3, 7, -9, 6, 2, 2, 10, -6, 6, 1, -7, -11, 5, 2, -2, 14, -10, 6]);
ECSearch("133.1-a",(-3*w + 19)*OK,[1, 2, -4, 2, 2, -2, -2, -4, 0, 0, -6, 6, 6, -2, 6, -2, 6, 2, -6, -4, -4, 0, -16, 6, -10, -4, 12, -6]);
ECSearch("133.1-b",(-3*w + 19)*OK,[1, 2, -4, -2, -2, 2, 2, 4, 0, 0, -6, 6, 6, 2, -6, -2, 6, -2, 6, -4, -4, 0, -16, -6, 10, 4, -12, 6]);
ECSearch("133.2-a",(3*w + 16)*OK,[1, 2, -4, 2, 2, -2, -2, -4, 0, 0, -6, 6, 6, 6, -2, 6, -2, -6, 2, -4, -4, -16, 0, -10, 6, 12, -4, 10]);
ECSearch("133.2-b",(3*w + 16)*OK,[1, 2, -4, -2, -2, 2, 2, 4, 0, 0, -6, 6, 6, -6, 2, 6, -2, 6, -2, -4, -4, -16, 0, 10, -6, -12, 4, -10]);
ECSearch("143.1-a",(-3*w - 4)*OK,[-1, 1, 1, -2, -6, -3, 4, -5, 6, 6, 2, -4, 5, 3, -6, 6, 12, -8, 1, -13, 2, 0, 9, 7, 1, -12, 6, -15]);
ECSearch("143.1-b",(-3*w - 4)*OK,[-1, -1, 1, 2, 6, 3, -4, 5, 6, 6, 2, -4, 5, -3, 6, 6, 12, 8, -1, -13, 2, 0, 9, -7, -1, 12, -6, 15]);
ECSearch("143.2-a",(3*w - 7)*OK,[-1, 1, 1, -2, -3, -6, -5, 4, 6, 6, 2, 5, -4, -6, 3, 12, 6, 1, -8, 2, -13, 9, 0, 1, 7, 6, -12, -18]);
ECSearch("143.2-b",(3*w - 7)*OK,[-1, -1, 1, 2, 3, 6, 5, -4, 6, 6, 2, 5, -4, 6, -3, 12, 6, -1, 8, 2, -13, 9, 0, -1, -7, -6, 12, 18]);
ECSearch("144.1-a",(12)*OK,[0, 2, 4, -4, -6, 6, 8, -8, 6, 6, 6, 6, 6, -6, 6, -2, -2, 8, -8, 8, 8, 10, 10, -4, 4, 12, -12, 10]);
ECSearch("144.1-b",(12)*OK,[0, 2, -4, 4, 6, -6, -8, 8, 6, 6, 6, 6, 6, 6, -6, -2, -2, -8, 8, 8, 8, 10, 10, 4, -4, -12, 12, -10]);
ECSearch("161.1-a",(-3*w + 5)*OK,[-1, -5, 0, 2, -7, -6, 3, -4, -1, -9, 2, -7, -4, 0, -3, 6, -6, 8, -10, 2, 2, 6, -3, -13, 2, 0, -3, -12]);
ECSearch("161.1-b",(-3*w + 5)*OK,[-1, -5, 0, -2, 7, 6, -3, 4, 1, -9, 2, -7, -4, 0, 3, 6, -6, -8, 10, 2, 2, 6, -3, 13, -2, 0, 3, 12]);
ECSearch("161.2-a",(3*w + 2)*OK,[-1, -5, 0, -7, 2, 3, -6, -1, -4, -9, 2, -4, -7, -3, 0, -6, 6, -10, 8, 2, 2, -3, 6, 2, -13, -3, 0, 3]);
ECSearch("161.2-b",(3*w + 2)*OK,[-1, -5, 0, 7, -2, -3, 6, 1, 4, -9, 2, -4, -7, 3, 0, -6, 6, 10, -8, 2, 2, -3, 6, -2, 13, 3, 0, -3]);
ECSearch("163.1-a",(w + 13)*OK,[-3, 5, -2, -4, -1, 4, 6, 4, 4, -7, 4, -6, -6, -4, -5, -2, -12, 6, 4, 10, -8, 10, 14, -5, -8, -1, -4, 11, -8, -12]);
ECSearch("163.1-b",(w + 13)*OK,[0, 2, 1, 4, -4, 4, 0, 2, -2, -4, -1, -3, -3, 11, -11, 2, 6, -6, -10, -2, -14, 1, 11, -1, -1, 8, -4, -8, -4, -12]);
ECSearch("163.1-c",(w + 13)*OK,[-3, -5, -2, -4, 1, -4, -6, -4, -4, 7, 4, -6, -6, -4, -5, 2, 12, 6, 4, -10, 8, 10, 14, -5, -8, 1, 4, -11, 8, 12]);
ECSearch("163.1-d",(w + 13)*OK,[0, -2, 1, 4, 4, -4, 0, -2, 2, 4, -1, -3, -3, 11, -11, -2, -6, -6, -10, 2, 14, 1, 11, -1, -1, -8, 4, 8, 4, 12]);
ECSearch("163.2-a",(w - 14)*OK,[-3, 5, -2, -4, 4, -1, 4, 6, -7, 4, -6, 4, -6, -5, -4, -12, -2, 4, 6, -8, 10, 14, 10, -8, -5, -4, -1, -8, 11, 9]);
ECSearch("163.2-b",(w - 14)*OK,[0, 2, 1, 4, 4, -4, 2, 0, -4, -2, -3, -1, -3, -11, 11, 6, 2, -10, -6, -14, -2, 11, 1, -1, -1, -4, 8, -4, -8, -12]);
ECSearch("163.2-c",(w - 14)*OK,[-3, -5, -2, -4, -4, 1, -4, -6, 7, -4, -6, 4, -6, -5, -4, 12, 2, 4, 6, 8, -10, 14, 10, -8, -5, 4, 1, 8, -11, -9]);
ECSearch("163.2-d",(w - 14)*OK,[0, -2, 1, 4, -4, 4, -2, 0, 4, 2, -3, -1, -3, -11, 11, -6, -2, -10, -6, 14, 2, 11, 1, -1, -1, 4, -8, 4, 8, 12]);
ECSearch("164.1-a",(-4*w + 14)*OK,[5, -1, 1, 2, -2, 0, 6, 5, -4, 2, -3, -1, 8, 4, -5, -6, 8, 12, -4, 5, 7, -3, -5, -8, -4, 0, 12, 11]);
ECSearch("164.1-b",(-4*w + 14)*OK,[-5, -1, 1, -2, 2, 0, -6, -5, 4, 2, -3, -1, 8, 4, 5, -6, 8, -12, 4, 5, 7, -3, -5, 8, 4, 0, -12, -11]);
ECSearch("164.2-a",(4*w + 10)*OK,[5, -1, 1, -2, 2, 6, 0, -4, 5, -3, 2, -1, 4, 8, -5, 8, -6, -4, 12, 7, 5, -5, -3, -4, -8, 12, 0, -2]);
ECSearch("164.2-b",(4*w + 10)*OK,[-5, -1, 1, 2, -2, -6, 0, 4, -5, -3, 2, -1, 4, 8, 5, 8, -6, 4, -12, 7, 5, -5, -3, 4, 8, -12, 0, 2]);
ECSearch("169.2-a",(-3*w - 17)*OK,[-4, 0, -5, 0, 0, 0, 0, 0, 0, -9, -9, 1, -7, 7, 0, 0, -6, -6, 0, 0, -13, 13, -3, 3, 0, 0, 0, 0, 0]);
ECSearch("169.3-a",(3*w - 20)*OK,[-4, 0, -5, 0, 0, 0, 0, 0, 0, -9, -9, 1, 7, -7, 0, 0, -6, -6, 0, 0, 13, -13, 3, -3, 0, 0, 0, 0, 0]);
ECSearch("173.1-a",(-3*w + 2)*OK,[-1, 5, -5, 2, 2, 2, 2, 7, -2, 4, -2, 7, 4, -2, 8, -6, -2, 12, 2, 7, -6, 4, -4, 0, -13, 2, -14, -16, 9, 10]);
ECSearch("173.1-b",(-3*w + 2)*OK,[-1, -5, -5, 2, -2, -2, -2, -7, 2, -4, -2, 7, 4, -2, 8, 6, 2, 12, 2, -7, 6, 4, -4, 0, -13, -2, 14, 16, -9, -10]);
ECSearch("173.2-a",(3*w - 1)*OK,[-1, 5, -5, 2, 2, 2, 7, 2, 4, -2, 7, -2, 4, 8, -2, -2, -6, 2, 12, -6, 7, -4, 4, -13, 0, -14, 2, 9, -16, 14]);
ECSearch("173.2-b",(3*w - 1)*OK,[-1, -5, -5, 2, -2, -2, -7, -2, -4, 2, 7, -2, 4, 8, -2, 2, 6, 2, 12, 6, -7, -4, 4, -13, 0, 14, -2, -9, 16, -14]);
ECSearch("175.1-a",(5*w + 15)*OK,[-4, -5, -3, -5, -5, -3, -3, -2, -2, -6, -6, 2, 2, 12, 12, 12, 12, -8, -8, -4, -4, 0, 0, -2, -2, -12, -12, -6]);
ECSearch("175.1-b",(5*w + 15)*OK,[-4, -5, -3, 5, 5, 3, 3, 2, 2, -6, -6, 2, 2, -12, -12, 12, 12, 8, 8, -4, -4, 0, 0, 2, 2, 12, 12, 6]);
ECSearch("176.1-a",(4*w - 24)*OK,[-2, -5, 4, 4, -6, -6, -8, -8, -3, -3, -1, -1, -1, 0, 0, -6, -6, 4, 4, -1, -1, 15, 15, 4, 4, -6, -6, -18]);
ECSearch("176.1-b",(4*w - 24)*OK,[2, -5, -4, -4, 6, 6, 8, 8, -3, -3, -1, -1, -1, 0, 0, -6, -6, -4, -4, -1, -1, 15, 15, -4, -4, 6, 6, 18]);
ECSearch("179.1-a",(-2*w + 17)*OK,[1, 2, 0, -3, 2, 5, 6, 6, 4, 1, 9, 0, -3, 8, -7, 2, 3, -6, -9, 4, 8, 5, 10, 6, -14, -6, -2, -2, -1, -5]);
ECSearch("179.1-b",(-2*w + 17)*OK,[1, -2, 0, -3, -2, -5, -6, -6, -4, -1, 9, 0, -3, 8, -7, -2, -3, -6, -9, -4, -8, 5, 10, 6, -14, 6, 2, 2, 1, 5]);
ECSearch("179.2-a",(2*w + 15)*OK,[1, 2, 0, -3, 5, 2, 6, 6, 1, 4, 0, 9, -3, -7, 8, 3, 2, -9, -6, 8, 4, 10, 5, -14, 6, -2, -6, -1, -2, 18]);
ECSearch("179.2-b",(2*w + 15)*OK,[1, -2, 0, -3, -5, -2, -6, -6, -1, -4, 0, 9, -3, -7, 8, -3, -2, -9, -6, -8, -4, 10, 5, -14, 6, 2, 6, 1, 2, -18]);
ECSearch("196.1-a",(14)*OK,[2, 0, 4, -4, -6, 6, 2, -2, 0, 0, 10, 2, 2, 6, -6, -6, -6, -8, 8, 4, 4, 0, 0, -2, 2, -6, 6, 0]);
ECSearch("196.1-b",(14)*OK,[2, 0, -4, 4, 6, -6, -2, 2, 0, 0, 10, 2, 2, -6, 6, -6, -6, 8, -8, 4, 4, 0, 0, 2, -2, 6, -6, 0]);
ECSearch("208.1-a",(4*w + 8)*OK,[2, 2, 3, -1, 4, 0, 2, 6, -1, -2, 6, -10, 7, 7, 2, -1, 6, 13, -13, 4, 9, 12, -8, -10, -2, -5, -7, 19]);
ECSearch("208.1-b",(4*w + 8)*OK,[-2, 2, 3, 1, -4, 0, -2, -6, -1, -2, 6, -10, 7, -7, -2, -1, 6, -13, 13, 4, 9, 12, -8, 10, 2, 5, 7, -19]);
ECSearch("208.2-a",(4*w - 12)*OK,[2, 2, 3, -1, 0, 4, 6, 2, -2, -1, 6, 7, -10, 2, 7, 6, -1, -13, 13, 9, 4, -8, 12, -2, -10, -7, -5, 7]);
ECSearch("208.2-b",(4*w - 12)*OK,[-2, 2, 3, 1, 0, -4, -6, -2, -2, -1, 6, 7, -10, -2, -7, 6, -1, 13, -13, 9, 4, -8, 12, 2, 10, 7, 5, -7]);
ECSearch("221.1-a",(w + 15)*OK,[-3, 2, 2, -5, -3, 6, 6, 2, -3, 6, 2, 2, -3, -1, 12, 3, -2, 9, 5, 4, -7, -6, 12, 6, 2, 11, 15, -9]);
ECSearch("221.1-b",(w + 15)*OK,[0, 4, 1, -4, 0, -2, -6, 4, 3, 5, 1, -11, -9, 8, 0, 6, 6, -12, -4, 5, -7, 3, 13, 2, -4, -8, -8, 2]);
ECSearch("221.1-c",(w + 15)*OK,[-3, -2, 2, -5, 3, -6, -6, -2, -3, 6, 2, 2, -3, 1, -12, 3, -2, -9, -5, 4, -7, -6, 12, -6, -2, -11, -15, 9]);
ECSearch("221.1-d",(w + 15)*OK,[0, -4, 1, -4, 0, 2, 6, -4, 3, 5, 1, -11, -9, -8, 0, 6, 6, 12, 4, 5, -7, 3, 13, -2, 4, 8, 8, -2]);
ECSearch("221.4-a",(w - 16)*OK,[-3, 2, 2, -5, -3, 6, 2, 6, 6, -3, 2, -3, 2, 12, -1, -2, 3, 5, 9, -7, 4, 12, -6, 2, 6, 15, 11, 7]);
ECSearch("221.4-b",(w - 16)*OK,[0, 4, 1, -4, 0, -2, 4, -6, 5, 3, 1, -9, -11, 0, 8, 6, 6, -4, -12, -7, 5, 13, 3, -4, 2, -8, -8, -12]);
ECSearch("221.4-c",(w - 16)*OK,[-3, -2, 2, -5, 3, -6, -2, -6, 6, -3, 2, -3, 2, -12, 1, -2, 3, -5, -9, -7, 4, 12, -6, -2, -6, -15, -11, -7]);
ECSearch("221.4-d",(w - 16)*OK,[0, -4, 1, -4, 0, 2, -4, 6, 5, 3, 1, -9, -11, 0, -8, 6, 6, 4, 12, -7, 5, 13, 3, 4, -2, 8, 8, 12]);
ECSearch("225.1-a",(15)*OK,[1, -4, 4, 2, -6, 6, -2, -4, -4, 0, 8, -2, -2, -6, 10, 6, 6, 14, -2, 4, -4, -8, 8, -2, 6, 0, -16, -18]);
ECSearch("225.1-b",(15)*OK,[1, 4, 4, 6, -2, 2, -6, 4, 4, 8, 0, -2, -2, -10, 6, 6, 6, 2, -14, -4, 4, 8, -8, -6, 2, 16, 0, -14]);
ECSearch("225.1-c",(15)*OK,[1, -4, 4, -6, 2, -2, 6, -4, -4, 8, 0, -2, -2, 10, -6, 6, 6, -2, 14, -4, 4, 8, -8, 6, -2, -16, 0, 14]);
ECSearch("225.1-d",(15)*OK,[1, 4, 4, -2, 6, -6, 2, 4, 4, 0, 8, -2, -2, 6, -10, 6, 6, -14, 2, 4, -4, -8, 8, 2, -6, 0, 16, 18]);
ECSearch("225.1-e",(15)*OK,[-3, 0, -4, 2, 2, -2, -2, -4, -4, 0, 0, -10, -10, -10, -10, -10, -10, 2, 2, 12, 12, -8, -8, -10, -10, -12, -12, -6]);
ECSearch("225.1-f",(15)*OK,[-3, 0, -4, -2, -2, 2, 2, 4, 4, 0, 0, -10, -10, 10, 10, -10, -10, -2, -2, 12, 12, -8, -8, 10, 10, 12, 12, 6]);
ECSearch("227.1-a",(-4*w + 11)*OK,[3, 2, 5, 2, -4, -6, -3, -4, -2, 0, -6, 4, 2, -10, -11, -12, 9, -9, -2, -3, 10, -3, -2, 9, -9, -10, 4, 7, 0, 1]);
ECSearch("227.1-b",(-4*w + 11)*OK,[3, -2, 5, 2, 4, 6, 3, 4, 2, 0, -6, 4, 2, -10, -11, 12, -9, -9, -2, 3, -10, -3, -2, 9, -9, 10, -4, -7, 0, -1]);
ECSearch("227.2-a",(4*w + 7)*OK,[3, 2, 5, 2, -6, -4, -4, -3, 0, -2, 4, -6, 2, -11, -10, 9, -12, -2, -9, 10, -3, -2, -3, -9, 9, 4, -10, 0, 7, 3]);
ECSearch("227.2-b",(4*w + 7)*OK,[3, -2, 5, 2, 6, 4, 4, 3, 0, 2, 4, -6, 2, -11, -10, -9, 12, -2, -9, -10, 3, -2, -3, -9, 9, -4, 10, 0, -7, -3]);
ECSearch("252.1-a",(6*w + 18)*OK,[-4, 4, -2, 8, -6, -4, -8, -6, 6, 2, -2, 10, 10, 0, 2, -6, 8, -6, 2, 6, 2, -10, 0, 2, -12, 12, 8]);
ECSearch("252.1-b",(6*w + 18)*OK,[-4, 6, 6, 2, 2, -4, -4, 8, 8, -6, -10, -10, -6, -6, 6, 6, 6, 6, 4, 4, 8, 8, 10, 10, -4, -4, -2]);
ECSearch("252.1-c",(6*w + 18)*OK,[-4, 2, -4, 6, -8, 8, 4, 6, -6, 2, 10, -2, 0, -10, -6, 2, 6, -8, 6, 2, -10, 2, -2, 0, -12, 12, 14]);
ECSearch("252.1-d",(6*w + 18)*OK,[-4, -2, 4, -6, 8, -8, -4, 6, -6, 2, 10, -2, 0, 10, -6, 2, -6, 8, 6, 2, -10, 2, 2, 0, 12, -12, -14]);
ECSearch("252.1-e",(6*w + 18)*OK,[-4, -6, -6, -2, -2, 4, 4, 8, 8, -6, -10, -10, 6, 6, 6, 6, -6, -6, 4, 4, 8, 8, -10, -10, 4, 4, 2]);
ECSearch("252.1-f",(6*w + 18)*OK,[-4, -4, 2, -8, 6, 4, 8, -6, 6, 2, -2, 10, -10, 0, 2, -6, -8, 6, 2, 6, 2, -10, 0, -2, 12, -12, -8]);
ECSearch("256.1-a",(16)*OK,[0, 5, 0, 0, 0, 0, 0, 0, 0, 9, -9, -1, -7, -7, 0, 0, -6, -6, 0, 0, -13, 13, 3, -3, 0, 0, 0, 0, 0]);
ECSearch("256.1-b",(16)*OK,[0, 6, -4, 0, 0, 0, 0, 0, 0, 8, 8, 10, -6, -6, 0, 0, 10, 10, 0, 0, 4, 4, 16, 16, 0, 0, 0, 0, 0]);
ECSearch("256.1-c",(16)*OK,[4, 5, 0, 4, -4, 4, -4, -4, -4, 3, -3, -9, 5, 5, 12, -12, 10, 10, 8, -8, -11, 11, 9, -9, -4, 4, 0, 0, 4]);
ECSearch("256.1-d",(16)*OK,[-4, 5, 0, 4, -4, 4, -4, 4, 4, -3, 3, -9, 5, 5, 12, -12, 10, 10, 8, -8, 11, -11, -9, 9, -4, 4, 0, 0, 4]);
ECSearch("256.1-e",(16)*OK,[-4, 5, 0, -4, 4, -4, 4, 4, 4, 3, -3, -9, 5, 5, -12, 12, 10, 10, -8, 8, -11, 11, 9, -9, 4, -4, 0, 0, -4]);
ECSearch("256.1-f",(16)*OK,[4, 5, 0, -4, 4, -4, 4, -4, -4, -3, 3, -9, 5, 5, -12, 12, 10, 10, -8, 8, 11, -11, -9, 9, 4, -4, 0, 0, -4]);
ECSearch("256.1-g",(16)*OK,[0, 5, 0, 0, 0, 0, 0, 0, 0, -9, 9, -1, -7, -7, 0, 0, -6, -6, 0, 0, 13, -13, -3, 3, 0, 0, 0, 0, 0]);
ECSearch("259.1-a",(-4*w - 5)*OK,[-1, -5, -3, 5, 2, 6, 0, 5, -4, 9, 6, 2, 8, 3, 9, 3, -6, -10, -10, 14, 2, -12, 3, -4, 14, -12, 9, 12]);
ECSearch("259.1-b",(-4*w - 5)*OK,[-3, 2, 4, 2, 6, 6, 2, -4, 4, 4, 4, 2, -10, -6, -2, 6, 6, -6, -2, 0, -8, -12, 12, -2, 2, 4, 4, 18]);
ECSearch("259.1-c",(-4*w - 5)*OK,[3, -1, 1, 1, -6, 6, -8, 1, -4, 1, -2, 2, 8, 3, 5, -9, -6, 6, -10, 6, 10, -12, 3, -4, -2, -4, -7, -12]);
ECSearch("259.1-d",(-4*w - 5)*OK,[3, -1, 1, -1, 6, -6, 8, -1, 4, 1, -2, 2, 8, -3, -5, -9, -6, -6, 10, 6, 10, -12, 3, 4, 2, 4, 7, 12]);
ECSearch("259.1-e",(-4*w - 5)*OK,[-3, 2, 4, -2, -6, -6, -2, 4, -4, 4, 4, 2, -10, 6, 2, 6, 6, 6, 2, 0, -8, -12, 12, 2, -2, -4, -4, -18]);
ECSearch("259.1-f",(-4*w - 5)*OK,[-1, -5, -3, -5, -2, -6, 0, -5, 4, 9, 6, 2, 8, -3, -9, 3, -6, 10, 10, 14, 2, -12, 3, 4, -14, 12, -9, -12]);
ECSearch("259.2-a",(4*w - 9)*OK,[-1, -5, -3, 2, 5, 0, 6, -4, 5, 6, 9, 2, 8, 9, 3, -6, 3, -10, -10, 2, 14, 3, -12, 14, -4, 9, -12, 18]);
ECSearch("259.2-b",(4*w - 9)*OK,[-3, 2, 4, 6, 2, 2, 6, 4, -4, 4, 4, 2, -10, -2, -6, 6, 6, -2, -6, -8, 0, 12, -12, 2, -2, 4, 4, 14]);
ECSearch("259.2-c",(4*w - 9)*OK,[3, -1, 1, -6, 1, -8, 6, -4, 1, -2, 1, 2, 8, 5, 3, -6, -9, -10, 6, 10, 6, 3, -12, -2, -4, -7, -4, 10]);
ECSearch("259.2-d",(4*w - 9)*OK,[3, -1, 1, 6, -1, 8, -6, 4, -1, -2, 1, 2, 8, -5, -3, -6, -9, 10, -6, 10, 6, 3, -12, 2, 4, 7, 4, -10]);
ECSearch("259.2-e",(4*w - 9)*OK,[-3, 2, 4, -6, -2, -2, -6, -4, 4, 4, 4, 2, -10, 2, 6, 6, 6, 2, 6, -8, 0, 12, -12, -2, 2, -4, -4, -14]);
ECSearch("259.2-f",(4*w - 9)*OK,[-1, -5, -3, -2, -5, 0, -6, 4, -5, 6, 9, 2, 8, -9, -3, -6, 3, 10, 10, 2, 14, 3, -12, -14, 4, -9, 12, -18]);
ECSearch("275.1-a",(5*w - 30)*OK,[-3, 0, -6, 2, 2, 6, 6, -4, -4, 4, 4, -2, -2, 2, 2, -2, -2, -10, -10, -16, -16, 8, 8, 14, 14, -4, -4, -10]);
ECSearch("275.1-b",(5*w - 30)*OK,[-3, 0, -6, -2, -2, -6, -6, 4, 4, 4, 4, -2, -2, -2, -2, -2, -2, 10, 10, -16, -16, 8, 8, -14, -14, 4, 4, 10]);
ECSearch("287.1-a",(w + 17)*OK,[-1, -5, 3, 4, 1, 3, 0, 4, -2, 0, -6, -1, -1, 2, 12, -12, -9, 10, 10, -13, 11, 12, -12, 1, -5, 9, 12, 3]);
ECSearch("287.1-b",(w + 17)*OK,[-1, -2, 0, 4, 2, -4, 2, 4, 0, -2, 6, -6, 6, 2, 0, 2, 6, 0, -2, -2, -6, -6, 6, -8, -10, -12, -4, 0]);
ECSearch("287.1-c",(w + 17)*OK,[-1, 1, -3, 2, -5, 7, 4, -4, 6, 4, 0, -3, 3, 2, 0, 2, -3, -6, -10, -5, 3, 12, -6, -7, -11, -3, -14, 15]);
ECSearch("287.1-d",(w + 17)*OK,[-1, -5, 3, -4, -1, -3, 0, -4, 2, 0, -6, -1, -1, 2, -12, -12, -9, -10, -10, -13, 11, 12, -12, -1, 5, -9, -12, -3]);
ECSearch("287.1-e",(w + 17)*OK,[-1, 1, -3, -2, 5, -7, -4, 4, -6, 4, 0, -3, 3, 2, 0, 2, -3, 6, 10, -5, 3, 12, -6, 7, 11, 3, 14, -15]);
ECSearch("287.1-f",(w + 17)*OK,[-1, -2, 0, -4, -2, 4, -2, -4, 0, -2, 6, -6, 6, 2, 0, 2, 6, 0, 2, -2, -6, -6, 6, 8, 10, 12, 4, 0]);
ECSearch("287.2-a",(w - 18)*OK,[-1, -5, 3, 1, 4, 0, 3, -2, 4, -6, 0, -1, 2, -1, 12, -9, -12, 10, 10, 11, -13, -12, 12, -5, 1, 12, 9, 6]);
ECSearch("287.2-b",(w - 18)*OK,[-1, -2, 0, 2, 4, 2, -4, 0, 4, 6, -2, -6, 2, 6, 0, 6, 2, -2, 0, -6, -2, 6, -6, -10, -8, -4, -12, -14]);
ECSearch("287.2-c",(w - 18)*OK,[-1, 1, -3, -5, 2, 4, 7, 6, -4, 0, 4, -3, 2, 3, 0, -3, 2, -10, -6, 3, -5, -6, 12, -11, -7, -14, -3, -10]);
ECSearch("287.2-d",(w - 18)*OK,[-1, -5, 3, -1, -4, 0, -3, 2, -4, -6, 0, -1, 2, -1, -12, -9, -12, -10, -10, 11, -13, -12, 12, 5, -1, -12, -9, -6]);
ECSearch("287.2-e",(w - 18)*OK,[-1, 1, -3, 5, -2, -4, -7, -6, 4, 0, 4, -3, 2, 3, 0, -3, 2, 10, 6, 3, -5, -6, 12, 11, 7, 14, 3, 10]);
ECSearch("287.2-f",(w - 18)*OK,[-1, -2, 0, -2, -4, -2, 4, 0, -4, 6, -2, -6, 2, 6, 0, 6, 2, 2, 0, -6, -2, 6, -6, 10, 8, 4, 12, 14]);
ECSearch("289.1-a",(17)*OK,[-3, -4, -6, 0, 2, 2, 4, 4, 4, 4, -6, -2, -2, 6, 6, 6, 6, 10, 10, 4, 4, -4, -4, 6, 6, 4, 4, 10]);
ECSearch("289.1-b",(17)*OK,[-3, 4, -6, 0, -2, -2, -4, -4, 4, 4, -6, -2, -2, -6, -6, 6, 6, -10, -10, 4, 4, -4, -4, -6, -6, -4, -4, -10]);
ECSearch("289.2-a",(-3*w - 20)*OK,[4, 0, 5, 0, 0, 0, 0, 0, 0, 9, -9, 1, 7, -7, 0, 0, -6, -6, 0, 0, 13, 13, -3, 3, 0, 0, 0, 0, 0]);
ECSearch("289.3-a",(3*w - 23)*OK,[4, 0, 5, 0, 0, 0, 0, 0, 0, -9, 9, 1, -7, 7, 0, 0, -6, -6, 0, 0, 13, 13, 3, -3, 0, 0, 0, 0, 0]);
ECSearch("292.1-a",(-4*w + 6)*OK,[4, -2, 0, 4, 1, -3, 0, -5, -2, -9, 0, 2, 5, 2, -6, 12, -9, -12, -14, -14, -4, -4, -3, 12, -8, -6, 0, 12]);
ECSearch("292.1-b",(-4*w + 6)*OK,[2, 4, 0, 5, 2, 3, -6, -1, 2, -6, 0, -4, 8, 2, -6, 6, 6, 9, 11, 2, 14, 5, 12, -9, -4, 12, -6, -3]);
ECSearch("292.1-c",(-4*w + 6)*OK,[-2, 4, 0, -5, -2, -3, 6, 1, -2, -6, 0, -4, 8, 2, 6, -6, 6, 9, -11, -2, 14, 5, 12, -9, 4, -12, 6, 3]);
ECSearch("292.1-d",(-4*w + 6)*OK,[-4, -2, 0, -4, -1, 3, 0, 5, 2, -9, 0, 2, 5, 2, 6, -12, -9, -12, 14, 14, -4, -4, -3, 12, 8, 6, 0, -12]);
ECSearch("292.2-a",(4*w + 2)*OK,[4, -2, 0, 1, 4, 0, -3, -2, -5, 0, -9, 2, 2, 5, 12, -6, -12, -9, -14, -14, -4, -4, 12, -3, -8, 0, -6, 15]);
ECSearch("292.2-b",(4*w + 2)*OK,[2, 4, 0, 2, 5, -6, 3, 2, -1, 0, -6, -4, 2, 8, 6, -6, 9, 6, 2, 11, 5, 14, -9, 12, -4, -6, 12, 12]);
ECSearch("292.2-c",(4*w + 2)*OK,[-2, 4, 0, -2, -5, 6, -3, -2, 1, 0, -6, -4, 2, 8, -6, 6, 9, 6, -2, -11, 5, 14, -9, 12, 4, 6, -12, -12]);
ECSearch("292.2-d",(4*w + 2)*OK,[-4, -2, 0, -1, -4, 0, 3, 2, 5, 0, -9, 2, 2, 5, -12, 6, -12, -9, 14, 14, -4, -4, 12, -3, 8, 0, 6, -15]);
