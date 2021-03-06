print "Field 2.2.172.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - 43);
OK := Integers(K);
Plist := [];
Append(~Plist,(-9*w - 59)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(-2*w - 13)*OK);
Append(~Plist,(-w + 6)*OK);
Append(~Plist,(-w - 6)*OK);
Append(~Plist,(3*w - 20)*OK);
Append(~Plist,(-3*w - 20)*OK);
Append(~Plist,(16*w - 105)*OK);
Append(~Plist,(16*w + 105)*OK);
Append(~Plist,(-11*w + 72)*OK);
Append(~Plist,(-11*w - 72)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(4*w + 27)*OK);
Append(~Plist,(4*w - 27)*OK);
Append(~Plist,(w)*OK);
Append(~Plist,(-2*w + 15)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(-15*w - 98)*OK);
Append(~Plist,(15*w - 98)*OK);
Append(~Plist,(-3*w + 22)*OK);
Append(~Plist,(3*w + 22)*OK);
Append(~Plist,(w + 12)*OK);
Append(~Plist,(w - 12)*OK);
Append(~Plist,(-30*w - 197)*OK);
Append(~Plist,(30*w - 197)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-3*w - 16)*OK);
Append(~Plist,(3*w - 16)*OK);
Append(~Plist,(-8*w - 51)*OK);
Append(~Plist,(-8*w + 51)*OK);
Append(~Plist,(-2*w + 3)*OK);
Append(~Plist,(-2*w - 3)*OK);
Append(~Plist,(-26*w + 171)*OK);
Append(~Plist,(-26*w - 171)*OK);
Append(~Plist,(6*w + 37)*OK);
Append(~Plist,(6*w - 37)*OK);
Append(~Plist,(-66*w + 433)*OK);
Append(~Plist,(66*w + 433)*OK);
Append(~Plist,(-3*w + 14)*OK);
Append(~Plist,(3*w + 14)*OK);
Append(~Plist,(-93*w + 610)*OK);
Append(~Plist,(84*w - 551)*OK);
Append(~Plist,(-7*w - 48)*OK);
Append(~Plist,(7*w - 48)*OK);
Append(~Plist,(-65*w + 426)*OK);
Append(~Plist,(-65*w - 426)*OK);
Append(~Plist,(-13*w + 84)*OK);
Append(~Plist,(13*w + 84)*OK);
Append(~Plist,(-28*w + 183)*OK);
Append(~Plist,(-28*w - 183)*OK);
Append(~Plist,(42*w + 275)*OK);
Append(~Plist,(-42*w + 275)*OK);
Append(~Plist,(-18*w + 119)*OK);
Append(~Plist,(-18*w - 119)*OK);
Append(~Plist,(-12*w - 77)*OK);
Append(~Plist,(-12*w + 77)*OK);
Append(~Plist,(-2*w + 21)*OK);
Append(~Plist,(2*w + 21)*OK);
Append(~Plist,(w + 18)*OK);
Append(~Plist,(w - 18)*OK);
Append(~Plist,(-31*w - 204)*OK);
Append(~Plist,(31*w - 204)*OK);
Append(~Plist,(53*w - 348)*OK);
Append(~Plist,(53*w + 348)*OK);
Append(~Plist,(10*w - 63)*OK);
Append(~Plist,(10*w + 63)*OK);
Append(~Plist,(27*w + 178)*OK);
Append(~Plist,(27*w - 178)*OK);
Append(~Plist,(9*w - 56)*OK);
Append(~Plist,(-9*w - 56)*OK);
Append(~Plist,(19*w - 126)*OK);
Append(~Plist,(-19*w - 126)*OK);
Append(~Plist,(-3*w + 2)*OK);
Append(~Plist,(3*w + 2)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(3*w + 28)*OK);
Append(~Plist,(-4*w + 33)*OK);
Append(~Plist,(4*w + 33)*OK);
Append(~Plist,(69*w + 452)*OK);
Append(~Plist,(-69*w + 452)*OK);
Append(~Plist,(-10*w - 69)*OK);
Append(~Plist,(10*w - 69)*OK);
Append(~Plist,(-4*w + 15)*OK);
Append(~Plist,(4*w + 15)*OK);
Append(~Plist,(-21*w + 136)*OK);
Append(~Plist,(21*w + 136)*OK);
Append(~Plist,(78*w - 511)*OK);
Append(~Plist,(-78*w - 511)*OK);
Append(~Plist,(-5*w + 24)*OK);
Append(~Plist,(5*w + 24)*OK);
Append(~Plist,(-36*w + 235)*OK);
Append(~Plist,(-36*w - 235)*OK);
Append(~Plist,(-58*w - 381)*OK);
Append(~Plist,(58*w - 381)*OK);
Append(~Plist,(-119*w + 780)*OK);
Append(~Plist,(-119*w - 780)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(-45*w - 296)*OK);
Append(~Plist,(45*w - 296)*OK);
Append(~Plist,(-2*w + 27)*OK);
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

ECSearch("9.1-a",(3)*OK,[0, 2, 2, 2, 2, 6, 6, -4, -4, 8, 6, 6, -10, -6, -6, -12, -12, 8, 8, -6, -6, -4, -4, 20, -12, -12, -10, -10]);
ECSearch("9.1-b",(3)*OK,[0, -2, -2, 2, 2, 6, 6, 4, 4, 8, 6, 6, 10, -6, -6, 12, 12, 8, 8, -6, -6, -4, -4, 20, 12, 12, 10, 10]);
ECSearch("9.2-a",(-7*w - 46)*OK,[0, 0, 0, 0, -6, 6, -2, 8, 0, 0, 8, -8, -10, 0, 4, 14, 0, 0, -8, -8, -2, 20, 20, 20, 0, 0, 0, 0, 0]);
ECSearch("9.2-b",(-7*w - 46)*OK,[0, 2, -2, -2, -1, -1, 3, -3, 4, 4, 2, 9, -9, -8, -3, 3, -12, 12, -7, -7, 3, -3, 5, 5, -19, -12, 12, 10, 10]);
ECSearch("9.2-c",(-7*w - 46)*OK,[0, -2, 2, 2, -1, -1, 3, -3, -4, -4, 2, 9, -9, 8, -3, 3, 12, -12, -7, -7, 3, -3, 5, 5, -19, 12, -12, -10, -10]);
ECSearch("9.2-d",(-7*w - 46)*OK,[0, 0, 0, 0, 3, 3, -5, 5, 0, 0, -10, -11, 11, 0, 13, -13, 0, 0, 1, 1, 19, -19, -7, -7, 21, 0, 0, 0, 0]);
ECSearch("9.3-a",(7*w - 46)*OK,[0, 0, 0, 0, 6, -6, 8, -2, 0, 0, 8, -10, -8, 0, 14, 4, 0, 0, -8, -8, 20, -2, 20, 20, 0, 0, 0, 0, 0]);
ECSearch("9.3-b",(7*w - 46)*OK,[0, 2, -2, -2, -1, -1, -3, 3, 4, 4, 2, -9, 9, -8, 3, -3, 12, -12, -7, -7, -3, 3, 5, 5, -19, 12, -12, 10, 10]);
ECSearch("9.3-c",(7*w - 46)*OK,[0, -2, 2, 2, -1, -1, -3, 3, -4, -4, 2, -9, 9, 8, 3, -3, -12, 12, -7, -7, -3, 3, 5, 5, -19, -12, 12, -10, -10]);
ECSearch("9.3-d",(7*w - 46)*OK,[0, 0, 0, 0, 3, 3, 5, -5, 0, 0, -10, 11, -11, 0, -13, 13, 0, 0, 1, 1, -19, 19, -7, -7, 21, 0, 0, 0, 0]);
ECSearch("12.1-a",(-4*w + 26)*OK,[2, 2, -4, -1, 3, -5, 3, 6, 2, 6, -5, 3, 4, 7, -1, 6, 6, 7, -13, -1, 3, 11, 3, -5, -12, 12, 10, 12]);
ECSearch("12.1-b",(-4*w + 26)*OK,[-2, -2, 4, -1, 3, -5, 3, -6, -2, 6, -5, 3, -4, 7, -1, -6, -6, 7, -13, -1, 3, 11, 3, -5, 12, -12, -10, -12]);
ECSearch("12.2-a",(-4*w - 26)*OK,[2, -4, 2, 3, -1, 3, -5, 2, 6, 6, 3, -5, 4, -1, 7, 6, 6, -13, 7, 3, -1, 3, 11, -5, 12, -12, 12, 10]);
ECSearch("12.2-b",(-4*w - 26)*OK,[-2, 4, -2, 3, -1, 3, -5, -2, -6, 6, 3, -5, -4, -1, 7, -6, -6, -13, 7, 3, -1, 3, 11, -5, -12, 12, -12, -10]);
ECSearch("14.1-a",(5*w + 33)*OK,[1, -2, -4, 6, 4, 5, -2, 5, 6, 3, 4, -5, -2, 2, 9, 12, 15, 18, -6, -5, 3, -14, -2, -15, -2, -12, 16, -11]);
ECSearch("14.1-b",(5*w + 33)*OK,[-1, 2, 4, 6, 4, 5, -2, -5, -6, 3, 4, -5, 2, 2, 9, -12, -15, 18, -6, -5, 3, -14, -2, -15, 2, 12, -16, 11]);
ECSearch("14.1-c",(5*w + 33)*OK,[1, -2, -4, 2, -4, -3, -6, -1, 2, -7, 12, 9, -10, 6, 3, 0, -9, -10, 14, 3, -15, 14, 14, 17, -18, 12, 8, -1]);
ECSearch("14.1-d",(5*w + 33)*OK,[-1, 2, 4, 2, -4, -3, -6, 1, -2, -7, 12, 9, 10, 6, 3, 0, 9, -10, 14, 3, -15, 14, 14, 17, 18, -12, -8, 1]);
ECSearch("14.2-a",(5*w - 33)*OK,[-2, 1, -4, 4, 6, -2, 5, 6, 5, 3, -5, 4, -2, 9, 2, 15, 12, -6, 18, 3, -5, -2, -14, -15, -12, -2, -11, 16]);
ECSearch("14.2-b",(5*w - 33)*OK,[2, -1, 4, 4, 6, -2, 5, -6, -5, 3, -5, 4, 2, 9, 2, -15, -12, -6, 18, 3, -5, -2, -14, -15, 12, 2, 11, -16]);
ECSearch("14.2-c",(5*w - 33)*OK,[-2, 1, -4, -4, 2, -6, -3, 2, -1, -7, 9, 12, -10, 3, 6, -9, 0, 14, -10, -15, 3, 14, 14, 17, 12, -18, -1, 8]);
ECSearch("14.2-d",(5*w - 33)*OK,[2, -1, 4, -4, 2, -6, -3, -2, 1, -7, 9, 12, 10, 3, 6, 9, 0, 14, -10, -15, 3, 14, 14, 17, -12, 18, 1, -8]);
ECSearch("16.1-a",(4)*OK,[-2, 2, 2, -2, -5, -5, 3, 3, -8, 8, 6, 7, 7, 0, -1, -1, 0, 0, -17, -17, 7, 7, -9, -9, -13, 4, -4, -2, 2]);
ECSearch("16.1-b",(4)*OK,[2, -2, -2, 2, -5, -5, 3, 3, 8, -8, 6, 7, 7, 0, -1, -1, 0, 0, -17, -17, 7, 7, -9, -9, -13, -4, 4, 2, -2]);
ECSearch("16.1-c",(4)*OK,[2, 2, 2, 2, -1, -1, 3, 3, 4, 4, -2, -9, -9, 8, 3, 3, 12, 12, 7, 7, 3, 3, -5, -5, 19, -12, -12, -10, -10]);
ECSearch("16.1-d",(4)*OK,[-2, -2, -2, -2, -1, -1, 3, 3, -4, -4, -2, -9, -9, -8, 3, 3, -12, -12, 7, 7, 3, 3, -5, -5, 19, 12, 12, 10, 10]);
ECSearch("16.1-e",(4)*OK,[0, 0, 0, 0, 3, 3, -5, -5, 0, 0, 10, 11, 11, 0, -13, -13, 0, 0, -1, -1, 19, 19, 7, 7, -21, 0, 0, 0, 0]);
ECSearch("18.1-a",(-27*w - 177)*OK,[5, -1, 3, -1, 6, -2, 5, 3, 3, 0, -8, -8, -4, 4, -6, 6, -13, -5, 6, -10, -15, 5, 13, 6, -6, -12, 4]);
ECSearch("18.1-b",(-27*w - 177)*OK,[1, -5, -1, 3, -2, 6, -3, -5, 3, -8, 0, 8, 4, -4, -6, 6, -5, -13, -10, 6, 5, -15, 13, 6, -6, -4, 12]);
ECSearch("18.1-c",(-27*w - 177)*OK,[-1, 5, -1, 3, -2, 6, 3, 5, 3, -8, 0, -8, 4, -4, 6, -6, -5, -13, -10, 6, 5, -15, 13, -6, 6, 4, -12]);
ECSearch("18.1-d",(-27*w - 177)*OK,[-5, 1, 3, -1, 6, -2, -5, -3, 3, 0, -8, 8, -4, 4, 6, -6, -13, -5, 6, -10, -15, 5, 13, -6, 6, 12, -4]);
ECSearch("18.2-a",(w + 5)*OK,[2, 4, 5, -4, 5, -2, 5, 7, -4, -3, 10, -7, -6, -6, 9, -1, -13, 7, -2, -4, 4, -6, -18, 4, -16, -7, 11, -2]);
ECSearch("18.2-b",(w + 5)*OK,[2, -2, -1, 2, -1, 4, -7, 1, -4, 3, 10, 11, 0, -6, 9, -13, 5, -11, -14, 2, -8, -18, 18, 4, -22, 11, -19, -2]);
ECSearch("18.2-c",(w + 5)*OK,[-2, 2, 1, 2, -1, 4, -7, -1, 4, 3, 10, 11, 0, -6, 9, 13, -5, -11, -14, 2, -8, -18, 18, 4, 22, -11, 19, 2]);
ECSearch("18.2-d",(w + 5)*OK,[-2, -4, -5, -4, 5, -2, 5, -7, 4, -3, 10, -7, 6, -6, 9, 1, 13, 7, -2, -4, 4, -6, -18, 4, 16, 7, -11, 2]);
ECSearch("18.3-a",(-w + 5)*OK,[2, 5, 4, 5, -4, 5, -2, -4, 7, -3, -7, 10, -6, 9, -6, -13, -1, -2, 7, 4, -4, -18, -6, 4, -7, -16, -2, 11]);
ECSearch("18.3-b",(-w + 5)*OK,[2, -1, -2, -1, 2, -7, 4, -4, 1, 3, 11, 10, 0, 9, -6, 5, -13, -14, -11, -8, 2, 18, -18, 4, 11, -22, -2, -19]);
ECSearch("18.3-c",(-w + 5)*OK,[-2, 1, 2, -1, 2, -7, 4, 4, -1, 3, 11, 10, 0, 9, -6, -5, 13, -14, -11, -8, 2, 18, -18, 4, -11, 22, 2, 19]);
ECSearch("18.3-d",(-w + 5)*OK,[-2, -5, -4, 5, -4, 5, -2, 4, -7, -3, -7, 10, 6, 9, -6, 13, 1, -2, 7, 4, -4, -18, -6, 4, 7, 16, 2, -11]);
ECSearch("19.1-a",(-11*w + 72)*OK,[1, -1, 0, 3, 1, 1, 2, 2, 2, -2, -1, -8, -6, -1, -11, 4, 0, -12, 10, 7, -12, 10, 14, -4, -6, -3, -7, 8, -5]);
ECSearch("19.1-b",(-11*w + 72)*OK,[-1, 1, 0, -3, -1, 1, 2, 2, 2, 2, -1, -8, -6, 1, -11, 4, 0, 12, 10, 7, -12, 10, 14, -4, -6, 3, 7, -8, 5]);
ECSearch("19.2-a",(-11*w - 72)*OK,[1, 0, -1, 1, 3, 2, 1, 2, 2, -2, -1, -6, -8, -1, 4, -11, -12, 0, 7, 10, 10, -12, -4, 14, -6, -7, -3, -5, 8]);
ECSearch("19.2-b",(-11*w - 72)*OK,[-1, 0, 1, -1, -3, 2, 1, 2, 2, 2, -1, -6, -8, 1, 4, -11, 12, 0, 7, 10, 10, -12, -4, 14, -6, 7, 3, 5, -8]);
ECSearch("21.1-a",(-25*w + 164)*OK,[1, -2, 1, 4, -6, 3, 7, 0, 1, 7, 4, 8, 0, 8, -5, 13, 0, -18, -5, 14, 12, 4, 4, 2, -13, 15, -12, -14]);
ECSearch("21.1-b",(-25*w + 164)*OK,[-1, 2, -1, 4, -6, 3, 7, 0, -1, 7, 4, 8, 0, 8, -5, -13, 0, -18, -5, 14, 12, 4, 4, 2, 13, -15, 12, 14]);
ECSearch("21.2-a",(w + 8)*OK,[2, 0, 2, -1, 5, -3, 5, 2, -6, -2, -9, -5, -10, -3, -13, 0, -12, -3, -13, -19, 9, -5, 15, 5, 0, 10, 16, 10]);
ECSearch("21.2-b",(w + 8)*OK,[-2, 0, -2, -1, 5, -3, 5, -2, 6, -2, -9, -5, 10, -3, -13, 0, 12, -3, -13, -19, 9, -5, 15, 5, 0, -10, -16, -10]);
ECSearch("21.4-a",(25*w + 164)*OK,[1, -2, 1, -6, 4, 7, 3, 1, 0, 7, 8, 4, 0, -5, 8, 0, 13, -5, -18, 12, 14, 4, 4, 2, 15, -13, -14, -12]);
ECSearch("21.4-b",(25*w + 164)*OK,[-1, 2, -1, -6, 4, 7, 3, -1, 0, 7, 8, 4, 0, -5, 8, 0, -13, -5, -18, 12, 14, 4, 4, 2, -15, 13, 14, 12]);
ECSearch("21.3-a",(-w + 8)*OK,[2, 0, 2, 5, -1, 5, -3, -6, 2, -2, -5, -9, -10, -13, -3, -12, 0, -13, -3, 9, -19, 15, -5, 5, 10, 0, 10, 16]);
ECSearch("21.3-b",(-w + 8)*OK,[-2, 0, -2, 5, -1, 5, -3, 6, -2, -2, -5, -9, 10, -13, -3, 12, 0, -13, -3, 9, -19, 15, -5, 5, -10, 0, -10, -16]);
ECSearch("27.3-a",(w + 4)*OK,[0, 1, -4, 2, -1, 5, -3, 0, -1, -4, 2, 6, 9, 8, -12, 6, -12, 0, -4, 8, -3, 6, 8, -4, 2, -15, -6, 8, -10]);
ECSearch("27.3-b",(w + 4)*OK,[0, -1, 4, -2, -1, 5, -3, 0, 1, 4, 2, 6, 9, -8, -12, 6, 12, 0, -4, 8, -3, 6, 8, -4, 2, 15, 6, -8, 10]);
ECSearch("27.4-a",(w - 4)*OK,[0, 1, 2, -4, 5, -1, 0, -3, -4, -1, 2, 9, 6, 8, 6, -12, 0, -12, 8, -4, 6, -3, -4, 8, 2, -6, -15, -10, 8]);
ECSearch("27.4-b",(w - 4)*OK,[0, -1, -2, 4, 5, -1, 0, -3, 4, 1, 2, 9, 6, -8, 6, -12, 0, 12, 8, -4, 6, -3, -4, 8, 2, 6, 15, 10, -8]);
ECSearch("28.1-a",(-2*w + 12)*OK,[2, 0, 0, 2, 4, -2, -2, 8, 2, 2, -2, -6, 2, 4, 12, -4, -12, 18, 10, 6, 8, 16, 4, 10, 14, -4, 0, -8]);
ECSearch("28.1-b",(-2*w + 12)*OK,[-2, 0, 0, 2, 4, -2, -2, -8, -2, 2, -2, -6, -2, 4, 12, 4, 12, 18, 10, 6, 8, 16, 4, 10, -14, 4, 0, 8]);
ECSearch("28.2-a",(-2*w - 12)*OK,[0, 2, 0, 4, 2, -2, -2, 2, 8, 2, -6, -2, 2, 12, 4, -12, -4, 10, 18, 8, 6, 4, 16, 10, -4, 14, -8, 0]);
ECSearch("28.2-b",(-2*w - 12)*OK,[0, -2, 0, 4, 2, -2, -2, -2, -8, 2, -6, -2, -2, 12, 4, 12, 4, 10, 18, 8, 6, 4, 16, 10, 4, -14, 8, 0]);
ECSearch("32.1-a",(-36*w - 236)*OK,[2, 0, -4, -2, -1, -5, -1, -5, -2, -2, -2, -5, 7, -12, 3, -9, -2, -2, 7, -13, 3, 3, 19, -5, -17, 8, -4, 0, -10]);
ECSearch("32.1-b",(-36*w - 236)*OK,[0, 2, -2, -4, -5, -1, -5, -1, -2, -2, -2, 7, -5, -12, -9, 3, -2, -2, -13, 7, 3, 3, -5, 19, -17, -4, 8, -10, 0]);
ECSearch("32.1-c",(-36*w - 236)*OK,[0, -2, 2, 4, -5, -1, -5, -1, 2, 2, -2, 7, -5, 12, -9, 3, 2, 2, -13, 7, 3, 3, -5, 19, -17, 4, -8, 10, 0]);
ECSearch("32.1-d",(-36*w - 236)*OK,[-2, 0, 4, 2, -1, -5, -1, -5, 2, 2, -2, -5, 7, 12, 3, -9, 2, 2, 7, -13, 3, 3, 19, -5, -17, -8, 4, 0, 10]);
