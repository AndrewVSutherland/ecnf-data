print "Field 2.2.149.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 37);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK);
Append(~Plist,(w + 6)*OK);
Append(~Plist,(-w + 7)*OK);
Append(~Plist,(-w + 6)*OK);
Append(~Plist,(-w - 5)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(w + 7)*OK);
Append(~Plist,(w - 8)*OK);
Append(~Plist,(-3*w + 19)*OK);
Append(~Plist,(3*w + 16)*OK);
Append(~Plist,(w + 2)*OK);
Append(~Plist,(w - 3)*OK);
Append(~Plist,(w)*OK);
Append(~Plist,(w - 1)*OK);
Append(~Plist,(-2*w + 15)*OK);
Append(~Plist,(-2*w - 13)*OK);
Append(~Plist,(w + 9)*OK);
Append(~Plist,(w - 10)*OK);
Append(~Plist,(5*w + 29)*OK);
Append(~Plist,(5*w - 34)*OK);
Append(~Plist,(-4*w - 21)*OK);
Append(~Plist,(4*w - 25)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(6*w + 35)*OK);
Append(~Plist,(6*w - 41)*OK);
Append(~Plist,(-2*w + 17)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-3*w - 20)*OK);
Append(~Plist,(3*w - 23)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(w + 14)*OK);
Append(~Plist,(w - 15)*OK);
Append(~Plist,(-3*w + 14)*OK);
Append(~Plist,(3*w + 11)*OK);
Append(~Plist,(-5*w + 36)*OK);
Append(~Plist,(-5*w - 31)*OK);
Append(~Plist,(-5*w + 29)*OK);
Append(~Plist,(5*w + 24)*OK);
Append(~Plist,(-2*w + 21)*OK);
Append(~Plist,(2*w + 19)*OK);
Append(~Plist,(-3*w - 7)*OK);
Append(~Plist,(3*w - 10)*OK);
Append(~Plist,(w + 17)*OK);
Append(~Plist,(w - 18)*OK);
Append(~Plist,(5*w + 23)*OK);
Append(~Plist,(5*w - 28)*OK);
Append(~Plist,(-3*w + 8)*OK);
Append(~Plist,(3*w + 5)*OK);
Append(~Plist,(-4*w + 19)*OK);
Append(~Plist,(4*w + 15)*OK);
Append(~Plist,(-6*w + 35)*OK);
Append(~Plist,(6*w + 29)*OK);
Append(~Plist,(-5*w + 27)*OK);
Append(~Plist,(-5*w - 22)*OK);
Append(~Plist,(-7*w + 50)*OK);
Append(~Plist,(-7*w - 43)*OK);
Append(~Plist,(11*w + 59)*OK);
Append(~Plist,(11*w - 70)*OK);
Append(~Plist,(-8*w - 41)*OK);
Append(~Plist,(8*w - 49)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(3*w + 25)*OK);
Append(~Plist,(-5*w - 21)*OK);
Append(~Plist,(5*w - 26)*OK);
Append(~Plist,(w + 20)*OK);
Append(~Plist,(w - 21)*OK);
Append(~Plist,(-5*w - 34)*OK);
Append(~Plist,(5*w - 39)*OK);
Append(~Plist,(-7*w + 41)*OK);
Append(~Plist,(7*w + 34)*OK);
Append(~Plist,(-3*w - 26)*OK);
Append(~Plist,(3*w - 29)*OK);
Append(~Plist,(7*w + 44)*OK);
Append(~Plist,(-7*w + 51)*OK);
Append(~Plist,(-13*w + 83)*OK);
Append(~Plist,(-13*w - 70)*OK);
Append(~Plist,(11*w + 65)*OK);
Append(~Plist,(11*w - 76)*OK);
Append(~Plist,(-9*w - 46)*OK);
Append(~Plist,(9*w - 55)*OK);
Append(~Plist,(-9*w + 64)*OK);
Append(~Plist,(-9*w - 55)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(-4*w - 5)*OK);
Append(~Plist,(4*w - 9)*OK);
Append(~Plist,(-6*w - 25)*OK);
Append(~Plist,(6*w - 31)*OK);
Append(~Plist,(w + 24)*OK);
Append(~Plist,(w - 25)*OK);
Append(~Plist,(-4*w + 7)*OK);
Append(~Plist,(4*w + 3)*OK);
Append(~Plist,(14*w + 75)*OK);
Append(~Plist,(14*w - 89)*OK);
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

ECSearch("5.1-a",(w + 6)*OK,[1, 1, 4, -3, 1, 3, -4, 6, -1, 6, 6, 0, 7, 0, -7, -2, 12, -12, 2, 5, -2, -4, 10, 8, 15, 1, -13, 8, -6]);
ECSearch("5.1-b",(w + 6)*OK,[-3, -1, 0, -5, -1, -1, -6, 0, -5, -4, 6, -2, -7, -8, -3, 4, -6, 4, -6, 5, -10, 8, -2, -8, -3, 13, -7, 8, 18]);
ECSearch("5.2-a",(-w + 7)*OK,[1, 1, -3, 4, 1, -4, 3, -1, 6, 6, 6, 7, 0, -7, 0, 12, -2, 2, -12, -2, 5, 10, -4, 15, 8, -13, 1, -6, 8]);
ECSearch("5.2-b",(-w + 7)*OK,[-3, -1, -5, 0, -1, -6, -1, -5, 0, 6, -4, -7, -2, -3, -8, -6, 4, -6, 4, -10, 5, -2, 8, -3, -8, -7, 13, 18, 8]);
ECSearch("19.1-a",(w + 7)*OK,[-1, -3, 3, 5, 2, 1, 0, -6, -7, -3, -6, -4, -10, 5, -10, 9, 6, -12, 3, 8, 8, -13, -4, 2, 11, -13, -7, -12, 12]);
ECSearch("19.2-a",(w - 8)*OK,[-1, 3, -3, 2, 5, 1, -6, 0, -7, -6, -3, -10, -4, -10, 5, 6, 9, 3, -12, 8, 8, -4, -13, 11, 2, -7, -13, 12, -12]);
ECSearch("20.1-a",(2*w + 12)*OK,[3, -4, -1, -1, -5, 4, 2, -1, -6, 6, 0, -3, -4, 5, 2, 8, -4, 2, -7, -10, 4, -2, 4, 1, -11, 1, -4, 2]);
ECSearch("20.1-b",(2*w + 12)*OK,[0, 4, 2, 2, -7, 5, 5, 5, 0, -8, 6, -8, -2, -6, 12, 0, -6, 4, 0, 0, -13, -5, -3, 1, 12, 14, 13, 9]);
ECSearch("20.2-a",(-2*w + 14)*OK,[3, -1, -4, -1, 4, -5, -1, 2, 6, -6, -3, 0, 5, -4, 8, 2, 2, -4, -10, -7, -2, 4, 1, 4, 1, -11, 2, -4]);
ECSearch("20.2-b",(-2*w + 14)*OK,[0, 2, 4, 2, 5, -7, 5, 5, -8, 0, -8, 6, -6, -2, 0, 12, 4, -6, 0, 0, -5, -13, 1, -3, 14, 12, 9, 13]);
ECSearch("25.2-a",(w + 3)*OK,[3, 1, 5, 0, 1, 6, -1, -5, 0, 6, -4, 7, 2, -3, 8, -6, -4, -6, -4, -10, 5, 2, 8, 3, -8, 7, 13, -18, 8]);
ECSearch("25.2-b",(w + 3)*OK,[-1, -1, 3, 4, -1, 4, 3, -1, 6, 6, 6, -7, 0, -7, 0, 12, 2, 2, 12, -2, 5, -10, -4, -15, 8, 13, 1, 6, 8]);
ECSearch("25.2-c",(w + 3)*OK,[3, 2, -2, 3, -4, -6, -7, 4, -6, 6, -10, 8, -5, 3, -11, 6, 7, -3, -5, -13, 5, 4, 8, -6, -2, 8, -8, -9, -4]);
ECSearch("25.2-d",(w + 3)*OK,[-3, -2, 2, 3, 4, 6, -7, 4, -6, 6, -10, -8, 5, 3, 11, 6, -7, -3, 5, -13, 5, -4, 8, 6, -2, -8, -8, 9, -4]);
ECSearch("25.3-a",(w - 4)*OK,[3, 1, 0, 5, 1, -1, 6, 0, -5, -4, 6, 2, 7, 8, -3, -4, -6, -4, -6, 5, -10, 8, 2, -8, 3, 13, 7, 8, -18]);
ECSearch("25.3-b",(w - 4)*OK,[-1, -1, 4, 3, -1, 3, 4, 6, -1, 6, 6, 0, -7, 0, -7, 2, 12, 12, 2, 5, -2, -4, -10, 8, -15, 1, 13, 8, 6]);
ECSearch("25.3-c",(w - 4)*OK,[3, 2, 3, -2, -4, -7, -6, -6, 4, -10, 6, -5, 8, -11, 3, 7, 6, -5, -3, 5, -13, 8, 4, -2, -6, -8, 8, -4, -9]);
ECSearch("25.3-d",(w - 4)*OK,[-3, -2, 3, 2, 4, -7, 6, -6, 4, -10, 6, 5, -8, 11, 3, -7, 6, 5, -3, 5, -13, 8, -4, -2, 6, -8, -8, -4, 9]);
ECSearch("28.1-a",(-2*w + 12)*OK,[0, -3, 0, 3, -6, 7, -6, -2, 4, 6, -3, 5, -11, -6, 4, 12, 6, 6, 7, -10, -2, 11, 10, -6, -4, 19, 14, -12]);
ECSearch("28.2-a",(-2*w - 10)*OK,[-3, 0, 0, 3, 7, -6, -2, -6, 6, 4, 5, -3, -6, -11, 12, 4, 6, 6, -10, 7, 11, -2, -6, 10, 19, -4, -12, 14]);
ECSearch("35.1-a",(-w - 1)*OK,[-3, -3, 4, 4, -2, 2, 4, 2, 6, -1, 0, 7, 3, 0, 4, 3, 12, -7, 10, 1, 6, -10, -16, 8, 10, -7, 4, 0]);
ECSearch("35.1-b",(-w - 1)*OK,[-1, 1, 3, -1, 1, 0, -4, -3, 0, 0, 8, -5, 4, -1, 2, 2, 10, -10, -1, -10, 0, 8, -2, -7, -13, -17, -2, 12]);
ECSearch("35.1-c",(-w - 1)*OK,[3, 3, 1, 1, 1, 2, -2, -7, -6, -4, 6, 1, 12, 3, 4, -12, -6, 2, 7, -2, 12, -4, 2, -1, 7, 5, -14, 12]);
ECSearch("35.1-d",(-w - 1)*OK,[1, -2, 0, -2, -6, 2, 0, -4, -6, -6, 0, 4, 6, -10, -8, 0, 6, -10, -10, -2, 8, 4, 2, 6, -8, -4, 8, -12]);
ECSearch("35.1-e",(-w - 1)*OK,[-1, 1, -3, 5, -5, 6, -4, 3, 0, 6, 2, -5, 4, -7, 8, -10, 4, 2, -7, -10, -12, 2, 4, -1, -19, -5, 4, -6]);
ECSearch("35.4-a",(-w + 2)*OK,[-3, -3, 4, 4, 2, -2, 2, 4, -1, 6, 7, 0, 0, 3, 3, 4, -7, 12, 1, 10, -10, 6, 8, -16, -7, 10, 0, 4]);
ECSearch("35.4-b",(-w + 2)*OK,[-1, 1, 3, -1, 0, 1, -3, -4, 0, 0, -5, 8, -1, 4, 2, 2, -10, 10, -10, -1, 8, 0, -7, -2, -17, -13, 12, -2]);
ECSearch("35.4-c",(-w + 2)*OK,[3, 3, 1, 1, 2, 1, -7, -2, -4, -6, 1, 6, 3, 12, -12, 4, 2, -6, -2, 7, -4, 12, -1, 2, 5, 7, 12, -14]);
ECSearch("35.4-d",(-w + 2)*OK,[1, -2, 0, -2, 2, -6, -4, 0, -6, -6, 4, 0, -10, 6, 0, -8, -10, 6, -2, -10, 4, 8, 6, 2, -4, -8, -12, 8]);
ECSearch("35.4-e",(-w + 2)*OK,[-1, 1, -3, 5, 6, -5, 3, -4, 6, 0, -5, 2, -7, 4, -10, 8, 2, 4, -10, -7, 2, -12, -1, 4, -5, -19, -6, 4]);
ECSearch("36.1-a",(6)*OK,[-1, 2, 4, -5, 0, -6, -1, -4, 3, 3, -4, -7, -10, -1, 7, 10, -6, 6, -15, 3, 9, 6, 0, 0, -6, 15, 12, 3]);
ECSearch("36.1-b",(6)*OK,[-3, 1, 2, 0, 0, 6, 5, -1, -5, 3, -10, 10, 4, -6, -11, -1, -14, 2, -14, 8, -4, 4, -7, -11, -14, -6, 20, 2]);
ECSearch("36.1-c",(6)*OK,[-1, -1, 4, 4, 6, 6, -1, -1, 9, 9, -4, -4, 2, 2, -11, -11, -6, -6, 6, 6, 0, 0, -9, -9, 18, 18, -6, -6]);
ECSearch("36.1-d",(6)*OK,[-4, -4, -2, -2, 3, 3, 5, 5, 0, 0, 2, 2, 8, 8, -2, -2, -6, -6, 12, 12, 3, 3, 9, 9, -6, -6, 3, 3]);
ECSearch("36.1-e",(6)*OK,[1, -3, 0, 2, 6, 0, -1, 5, 3, -5, 10, -10, -6, 4, -1, -11, 2, -14, 8, -14, 4, -4, -11, -7, -6, -14, 2, 20]);
ECSearch("36.1-f",(6)*OK,[2, -1, -5, 4, -6, 0, -4, -1, 3, 3, -7, -4, -1, -10, 10, 7, 6, -6, 3, -15, 6, 9, 0, 0, 15, -6, 3, 12]);
