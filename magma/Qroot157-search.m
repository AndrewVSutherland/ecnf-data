print "Field 2.2.157.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 39);
OK := Integers(K);
Plist := [];
Append(~Plist,(-w - 6)*OK);
Append(~Plist,(w - 7)*OK);
Append(~Plist,(2)*OK);
Append(~Plist,(-3*w - 17)*OK);
Append(~Plist,(-3*w + 20)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(-2*w - 11)*OK);
Append(~Plist,(w + 7)*OK);
Append(~Plist,(w - 8)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(-6*w - 35)*OK);
Append(~Plist,(-6*w + 41)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 2)*OK);
Append(~Plist,(3*w + 16)*OK);
Append(~Plist,(-3*w + 19)*OK);
Append(~Plist,(7)*OK);
Append(~Plist,(3*w - 22)*OK);
Append(~Plist,(3*w + 19)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(-8*w - 47)*OK);
Append(~Plist,(-8*w + 55)*OK);
Append(~Plist,(4*w - 29)*OK);
Append(~Plist,(4*w + 25)*OK);
Append(~Plist,(-3*w - 20)*OK);
Append(~Plist,(3*w - 23)*OK);
Append(~Plist,(-3*w + 17)*OK);
Append(~Plist,(3*w + 14)*OK);
Append(~Plist,(-9*w - 53)*OK);
Append(~Plist,(-9*w + 62)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(13*w - 89)*OK);
Append(~Plist,(-13*w - 76)*OK);
Append(~Plist,(11*w - 73)*OK);
Append(~Plist,(-11*w - 62)*OK);
Append(~Plist,(-3*w + 14)*OK);
Append(~Plist,(3*w + 11)*OK);
Append(~Plist,(-3*w + 25)*OK);
Append(~Plist,(3*w + 22)*OK);
Append(~Plist,(w + 16)*OK);
Append(~Plist,(w - 17)*OK);
Append(~Plist,(7*w - 50)*OK);
Append(~Plist,(7*w + 43)*OK);
Append(~Plist,(6*w + 31)*OK);
Append(~Plist,(-6*w + 37)*OK);
Append(~Plist,(-3*w + 11)*OK);
Append(~Plist,(3*w + 8)*OK);
Append(~Plist,(-12*w - 71)*OK);
Append(~Plist,(-12*w + 83)*OK);
Append(~Plist,(-3*w - 7)*OK);
Append(~Plist,(3*w - 10)*OK);
Append(~Plist,(-7*w + 44)*OK);
Append(~Plist,(-7*w - 37)*OK);
Append(~Plist,(-3*w + 8)*OK);
Append(~Plist,(3*w + 5)*OK);
Append(~Plist,(-13*w - 73)*OK);
Append(~Plist,(-13*w + 86)*OK);
Append(~Plist,(9*w - 58)*OK);
Append(~Plist,(-9*w - 49)*OK);
Append(~Plist,(5*w + 23)*OK);
Append(~Plist,(5*w - 28)*OK);
Append(~Plist,(-3*w - 1)*OK);
Append(~Plist,(3*w - 4)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(3*w + 25)*OK);
Append(~Plist,(-3*w + 2)*OK);
Append(~Plist,(3*w - 1)*OK);
Append(~Plist,(-6*w + 35)*OK);
Append(~Plist,(6*w + 29)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(10*w - 71)*OK);
Append(~Plist,(10*w + 61)*OK);
Append(~Plist,(-23*w + 154)*OK);
Append(~Plist,(-23*w - 131)*OK);
Append(~Plist,(-4*w - 31)*OK);
Append(~Plist,(4*w - 35)*OK);
Append(~Plist,(w + 22)*OK);
Append(~Plist,(w - 23)*OK);
Append(~Plist,(8*w + 41)*OK);
Append(~Plist,(-8*w + 49)*OK);
Append(~Plist,(-6*w - 41)*OK);
Append(~Plist,(6*w - 47)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(-4*w + 11)*OK);
Append(~Plist,(4*w + 7)*OK);
Append(~Plist,(27*w + 154)*OK);
Append(~Plist,(27*w - 181)*OK);
Append(~Plist,(20*w - 133)*OK);
Append(~Plist,(-20*w - 113)*OK);
Append(~Plist,(-3*w - 29)*OK);
Append(~Plist,(3*w - 32)*OK);
Append(~Plist,(19*w - 131)*OK);
Append(~Plist,(-19*w - 112)*OK);
Append(~Plist,(-5*w + 22)*OK);
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

ECSearch("1.1-a",(1)*OK,[-2, -2, 3, 6, 6, -5, -5, 3, 3, 0, 0, -6, 0, 0, -3, -3, 6, 6, 5, 4, 4, 6, 6, 9, 9, -15, -15, -3, -3, 9]);
ECSearch("9.1-a",(3)*OK,[1, 2, -6, -3, 5, -3, 1, -6, 2, -2, 4, 4, -7, -7, -8, 0, -1, 8, -8, -2, -10, -3, -15, -1, 11, -3, 5, 9]);
ECSearch("9.1-b",(3)*OK,[1, -6, 2, 5, -3, 1, -3, 2, -6, -2, 4, 4, -7, -7, 0, -8, -1, -8, 8, -10, -2, -15, -3, 11, -1, 5, -3, -11]);
ECSearch("9.2-a",(w - 6)*OK,[-2, -3, 6, -6, -5, -5, 3, -3, 0, 0, 6, 0, 0, 3, 3, -6, 6, 5, 4, 4, 6, -6, -9, 9, 15, -15, 3, 3, -9]);
ECSearch("9.3-a",(w + 5)*OK,[-2, -3, -6, 6, -5, -5, -3, 3, 0, 0, 6, 0, 0, 3, 3, 6, -6, 5, 4, 4, -6, 6, 9, -9, -15, 15, 3, 3, 9]);
ECSearch("12.1-a",(-2*w - 12)*OK,[-1, 1, -6, 1, 2, -6, 5, 3, -2, 7, -2, -5, -2, -4, 7, 8, -12, -2, -7, 9, 4, -14, 8, 0, -18, 4, -16, 10]);
ECSearch("12.1-b",(-2*w - 12)*OK,[-1, -4, -1, 1, 7, -6, 0, 8, -7, -8, 3, 0, -2, 1, -8, -2, -2, -2, 13, 4, -11, 1, -2, 15, 12, 9, -6, -10]);
ECSearch("12.1-c",(-2*w - 12)*OK,[-1, -3, 2, -1, -6, -2, 3, 5, 0, 1, -8, 7, 8, 8, 3, -2, -10, -2, -7, -13, -8, 0, 0, 2, 2, -10, 0, 4]);
ECSearch("12.2-a",(2*w - 14)*OK,[-1, -6, 1, 2, 1, 5, -6, -2, 3, 7, -5, -2, -4, -2, 8, 7, -12, -7, -2, 4, 9, 8, -14, -18, 0, -16, 4, -6]);
ECSearch("12.2-b",(2*w - 14)*OK,[-1, -1, -4, 7, 1, 0, -6, -7, 8, -8, 0, 3, 1, -2, -2, -8, -2, 13, -2, -11, 4, -2, 1, 12, 15, -6, 9, -16]);
ECSearch("12.2-c",(2*w - 14)*OK,[-1, 2, -3, -6, -1, 3, -2, 0, 5, 1, 7, -8, 8, 8, -2, 3, -10, -7, -2, -8, -13, 0, 0, 2, 2, 0, -10, -6]);
ECSearch("16.1-a",(4)*OK,[2, 2, 2, 2, 1, 1, 3, 3, -4, -4, 10, 0, 0, 1, 1, 10, 10, -5, -8, -8, -2, -2, 7, 7, -3, -3, -15, -15, -1]);
ECSearch("17.1-a",(w + 7)*OK,[0, 0, -3, 4, -6, 4, 4, -2, 8, -2, -2, 4, 4, -10, -10, -2, -12, -8, -8, 12, 6, 16, -2, 18, 14, -6, 10, 10, -10]);
ECSearch("17.2-a",(w - 8)*OK,[0, 0, -3, -6, 4, 4, 4, -2, -2, 8, -2, 4, 4, -10, -10, -12, -2, -8, 12, -8, 16, 6, 18, -2, -6, 14, 10, 10, 0]);
ECSearch("19.1-a",(w + 4)*OK,[0, -2, 1, 0, 4, 1, 3, 5, 5, -4, -2, -10, 6, -11, 3, -12, -10, -1, -10, -4, 12, -12, 5, 7, -3, -15, -17, 13, -1]);
ECSearch("19.2-a",(w - 5)*OK,[-2, 0, 1, 4, 0, 3, 1, 5, 5, -4, -2, 6, -10, 3, -11, -10, -12, -1, -4, -10, -12, 12, 7, 5, -15, -3, 13, -17, -15]);
ECSearch("27.1-a",(-3*w - 18)*OK,[-1, 2, 6, -3, 5, -3, -1, 6, -2, 2, -4, -4, 7, 7, 8, 0, -1, 8, -8, -2, 10, 3, -15, 1, 11, 3, -5, -9]);
ECSearch("27.1-b",(-3*w - 18)*OK,[-1, 0, 4, -2, -2, 2, 0, 0, -4, -2, -4, 8, 6, -2, -8, -8, -2, 12, -12, -14, -6, 14, 0, -16, 6, 10, -14, -6]);
ECSearch("27.1-c",(-3*w - 18)*OK,[-1, -6, -2, 5, -3, 1, 3, -2, 6, 2, -4, -4, 7, 7, 0, -8, -1, -8, 8, -10, 2, 15, -3, -11, -1, -5, 3, 11]);
ECSearch("27.1-d",(-3*w - 18)*OK,[1, 0, -4, -2, -2, 2, 0, 0, 4, 2, 4, -8, -6, 2, 8, -8, -2, 12, -12, -14, 6, -14, 0, 16, 6, -10, 14, 6]);
ECSearch("27.2-a",(3*w - 21)*OK,[-1, 6, 2, 5, -3, -1, -3, -2, 6, 2, -4, -4, 7, 7, 0, 8, -1, -8, 8, 10, -2, -15, 3, 11, 1, -5, 3, -11]);
ECSearch("27.2-b",(3*w - 21)*OK,[-1, 4, 0, -2, -2, 0, 2, -4, 0, -2, 8, -4, -2, 6, -8, -8, -2, -12, 12, -6, -14, 0, 14, 6, -16, -14, 10, -4]);
ECSearch("27.2-c",(3*w - 21)*OK,[-1, -2, -6, -3, 5, 3, 1, 6, -2, 2, -4, -4, 7, 7, -8, 0, -1, 8, -8, 2, -10, -3, 15, -1, -11, 3, -5, 9]);
ECSearch("27.2-d",(3*w - 21)*OK,[1, -4, 0, -2, -2, 0, 2, 4, 0, 2, -8, 4, 2, -6, -8, 8, -2, -12, 12, 6, -14, 0, -14, 6, 16, 14, -10, -4]);
ECSearch("33.2-a",(w + 8)*OK,[-1, -2, -4, 6, -1, -3, -5, 0, -1, -2, 10, -2, 2, 2, 4, 3, 8, -16, -14, 1, 8, 6, 6, -10, 8, 9, 14, 12]);
ECSearch("33.3-a",(w - 9)*OK,[-1, -2, -4, -1, 6, -5, -3, -1, 0, -2, -2, 10, 2, 2, 3, 4, 8, -14, -16, 8, 1, 6, 6, 8, -10, 14, 9, 13]);
ECSearch("36.1-a",(6)*OK,[-2, 6, 1, -7, -3, 5, 6, -2, -2, 4, 4, 1, -7, -8, 8, -9, -8, 8, -6, -14, 1, -7, -9, -9, -11, -19, -11]);
ECSearch("36.1-b",(6)*OK,[-1, 1, 2, 6, 0, 4, -2, -2, 2, -5, 3, -4, 8, 8, 12, -2, -12, 8, 4, 4, -2, 6, 7, -15, 4, 4, -6]);
ECSearch("36.1-c",(6)*OK,[1, -1, 6, 2, 4, 0, -2, -2, 2, 3, -5, 8, -4, 12, 8, -2, 8, -12, 4, 4, 6, -2, -15, 7, 4, 4, -10]);
ECSearch("36.1-d",(6)*OK,[6, -2, -7, 1, 5, -3, -2, 6, -2, 4, 4, -7, 1, 8, -8, -9, 8, -8, -14, -6, -7, 1, -9, -9, -19, -11, -3]);
ECSearch("36.2-a",(2*w - 12)*OK,[-1, 1, 6, 1, 2, -6, -5, -3, 2, -7, 2, 5, 2, 4, -7, 8, -12, -2, -7, 9, -4, 14, 8, 0, -18, -4, 16, -10]);
ECSearch("36.2-b",(2*w - 12)*OK,[-1, -4, 1, 1, 7, -6, 0, -8, 7, 8, -3, 0, 2, -1, 8, -2, -2, -2, 13, 4, 11, -1, -2, -15, 12, -9, 6, 10]);
ECSearch("36.2-c",(2*w - 12)*OK,[-1, -3, -2, -1, -6, -2, -3, -5, 0, -1, 8, -7, -8, -8, -3, -2, -10, -2, -7, -13, 8, 0, 0, -2, 2, 10, 0, -4]);
ECSearch("36.3-a",(2*w + 10)*OK,[-1, 6, 1, 2, 1, -5, -6, 2, -3, -7, 5, 2, 4, 2, 8, -7, -12, -7, -2, -4, 9, 8, 14, -18, 0, 16, -4, -6]);
ECSearch("36.3-b",(2*w + 10)*OK,[-1, 1, -4, 7, 1, 0, -6, 7, -8, 8, 0, -3, -1, 2, -2, 8, -2, 13, -2, 11, 4, -2, -1, 12, -15, 6, -9, -16]);
ECSearch("36.3-c",(2*w + 10)*OK,[-1, -2, -3, -6, -1, -3, -2, 0, -5, -1, -7, 8, -8, -8, -2, -3, -10, -7, -2, 8, -13, 0, 0, 2, -2, 0, 10, -6]);
ECSearch("39.1-a",(w)*OK,[0, -1, -4, -4, -4, -4, -3, 3, -5, 1, 2, 0, 3, -6, -6, -9, -5, -8, -10, -6, 13, 4, -6, -14, -5, 6, -18, 12]);
ECSearch("39.1-b",(w)*OK,[0, 3, 0, -4, 4, 4, -3, 7, 5, 1, 2, 4, 11, 6, -2, 3, 1, 8, -2, -6, 1, -12, -6, 6, 11, -10, -14, -12]);
ECSearch("39.2-a",(2*w - 15)*OK,[2, -1, 5, -2, 0, -6, -2, 2, 2, 1, -9, 8, -2, 3, -7, -12, 5, 3, -5, -9, -10, 15, -17, -12, -7, -14, -5, 14]);
ECSearch("39.2-b",(2*w - 15)*OK,[0, 1, -1, 0, 4, 6, 2, -2, 0, -1, -5, -8, -4, -3, 7, -10, -5, -9, -3, 3, 4, 15, -11, 18, 13, -10, -7, -16]);
ECSearch("39.2-c",(2*w - 15)*OK,[-2, 0, 0, 3, -5, 0, 3, 0, -3, 3, 0, -6, 6, -3, -6, -6, -4, 4, 13, 12, 12, 6, 12, 0, -9, 0, 9, 15]);
ECSearch("39.2-d",(2*w - 15)*OK,[-2, -3, -3, -6, 4, -6, -6, 6, -6, 3, -3, 0, 6, 9, 3, -12, 5, -5, -5, 15, -6, -3, -9, 0, -15, -6, 9, 6]);
ECSearch("39.4-a",(w - 1)*OK,[0, -1, -4, -4, -4, -3, -4, -5, 3, 1, 0, 2, -6, 3, -9, -6, -5, -10, -8, 13, -6, -6, 4, -5, -14, -18, 6, 7]);
ECSearch("39.4-b",(w - 1)*OK,[0, 3, -4, 0, 4, -3, 4, 5, 7, 1, 4, 2, 6, 11, 3, -2, 1, -2, 8, 1, -6, -6, -12, 11, 6, -14, -10, 5]);
ECSearch("39.3-a",(2*w + 13)*OK,[2, -1, -2, 5, 0, -2, -6, 2, 2, 1, 8, -9, 3, -2, -12, -7, 5, -5, 3, -10, -9, -17, 15, -7, -12, -5, -14, 6]);
ECSearch("39.3-b",(2*w + 13)*OK,[0, 1, 0, -1, 4, 2, 6, 0, -2, -1, -8, -5, -3, -4, -10, 7, -5, -3, -9, 4, 3, -11, 15, 13, 18, -7, -10, -6]);
ECSearch("39.3-c",(2*w + 13)*OK,[-2, 0, 3, 0, -5, 3, 0, -3, 0, 3, -6, 0, -3, 6, -6, -6, -4, 13, 4, 12, 12, 12, 6, -9, 0, 9, 0, -6]);
ECSearch("39.3-d",(2*w + 13)*OK,[-2, -3, -6, -3, 4, -6, -6, -6, 6, 3, 0, -3, 9, 6, -12, 3, 5, -5, -5, -6, 15, -9, -3, -15, 0, 9, -6, -18]);