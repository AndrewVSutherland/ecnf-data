print "Field 2.2.113.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 28);
OK := Integers(K);
Plist := [];
Append(~Plist,(-w + 6)*OK);
Append(~Plist,(w + 5)*OK);
Append(~Plist,(-6*w + 35)*OK);
Append(~Plist,(6*w + 29)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(4*w - 23)*OK);
Append(~Plist,(2*w - 11)*OK);
Append(~Plist,(2*w + 9)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(-2*w - 11)*OK);
Append(~Plist,(8*w + 39)*OK);
Append(~Plist,(8*w - 47)*OK);
Append(~Plist,(-28*w + 163)*OK);
Append(~Plist,(-28*w - 135)*OK);
Append(~Plist,(14*w - 81)*OK);
Append(~Plist,(-14*w - 67)*OK);
Append(~Plist,(-2*w + 15)*OK);
Append(~Plist,(2*w + 13)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(2*w + 3)*OK);
Append(~Plist,(-2*w + 3)*OK);
Append(~Plist,(-2*w - 1)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(-8*w + 45)*OK);
Append(~Plist,(8*w + 37)*OK);
Append(~Plist,(36*w + 173)*OK);
Append(~Plist,(-36*w + 209)*OK);
Append(~Plist,(-6*w + 37)*OK);
Append(~Plist,(-6*w - 31)*OK);
Append(~Plist,(-20*w - 97)*OK);
Append(~Plist,(20*w - 117)*OK);
Append(~Plist,(12*w + 59)*OK);
Append(~Plist,(12*w - 71)*OK);
Append(~Plist,(-4*w + 19)*OK);
Append(~Plist,(4*w + 15)*OK);
Append(~Plist,(4*w + 23)*OK);
Append(~Plist,(-4*w + 27)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(-4*w - 13)*OK);
Append(~Plist,(4*w - 17)*OK);
Append(~Plist,(-6*w - 25)*OK);
Append(~Plist,(6*w - 31)*OK);
Append(~Plist,(14*w + 69)*OK);
Append(~Plist,(14*w - 83)*OK);
Append(~Plist,(46*w + 221)*OK);
Append(~Plist,(-46*w + 267)*OK);
Append(~Plist,(-22*w + 129)*OK);
Append(~Plist,(22*w + 107)*OK);
Append(~Plist,(34*w - 197)*OK);
Append(~Plist,(-34*w - 163)*OK);
Append(~Plist,(-4*w + 29)*OK);
Append(~Plist,(4*w + 25)*OK);
Append(~Plist,(-4*w + 15)*OK);
Append(~Plist,(4*w + 11)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(68*w - 395)*OK);
Append(~Plist,(68*w + 327)*OK);
Append(~Plist,(-10*w + 61)*OK);
Append(~Plist,(-10*w - 51)*OK);
Append(~Plist,(32*w + 155)*OK);
Append(~Plist,(-32*w + 187)*OK);
Append(~Plist,(18*w + 85)*OK);
Append(~Plist,(18*w - 103)*OK);
Append(~Plist,(-4*w - 9)*OK);
Append(~Plist,(4*w - 13)*OK);
Append(~Plist,(16*w + 79)*OK);
Append(~Plist,(16*w - 95)*OK);
Append(~Plist,(12*w - 67)*OK);
Append(~Plist,(12*w + 55)*OK);
Append(~Plist,(-14*w + 79)*OK);
Append(~Plist,(14*w + 65)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(32*w + 153)*OK);
Append(~Plist,(32*w - 185)*OK);
Append(~Plist,(56*w + 269)*OK);
Append(~Plist,(-56*w + 325)*OK);
Append(~Plist,(-4*w - 27)*OK);
Append(~Plist,(4*w - 31)*OK);
Append(~Plist,(8*w - 51)*OK);
Append(~Plist,(-8*w - 43)*OK);
Append(~Plist,(-12*w + 73)*OK);
Append(~Plist,(-12*w - 61)*OK);
Append(~Plist,(-8*w - 33)*OK);
Append(~Plist,(8*w - 41)*OK);
Append(~Plist,(-4*w - 1)*OK);
Append(~Plist,(4*w - 5)*OK);
Append(~Plist,(30*w - 173)*OK);
Append(~Plist,(30*w + 143)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(-34*w - 165)*OK);
Append(~Plist,(34*w - 199)*OK);
Append(~Plist,(-26*w - 127)*OK);
Append(~Plist,(26*w - 153)*OK);
Append(~Plist,(-4*w + 33)*OK);
Append(~Plist,(4*w + 29)*OK);
Append(~Plist,(10*w - 53)*OK);
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

ECSearch("2.1-a",(-w + 6)*OK,[1, 4, 0, -4, 4, 0, 4, 0, -6, 8, 4, 8, 0, 4, 0, -14, 2, 0, 12, -18, -2, 12, -16, 2, 16, -4, 20, 4, -20]);
ECSearch("2.2-a",(w + 5)*OK,[1, 0, 4, -4, 0, 4, 0, 4, -6, 4, 8, 0, 8, 0, 4, 2, -14, 12, 0, -2, -18, -16, 12, 2, -4, 16, 4, 20, 8]);
ECSearch("4.1-a",(2)*OK,[-4, 2, -2, 0, -6, 2, -4, -4, -10, 8, 6, -6, 6, -12, 2, -10, 6, -12, 8, 8, -10, 8, -6, 2, -16, 12, 0, -4]);
ECSearch("4.1-b",(2)*OK,[2, 2, 4, 0, 0, 2, 2, 8, 2, 2, -6, -6, -6, -6, -10, -10, 0, 0, 8, 8, 2, 2, -18, 2, 2, -12, -12, -4]);
ECSearch("4.1-c",(2)*OK,[0, 0, 6, -4, -4, 2, 2, 2, -8, -8, -2, -2, -6, -6, 14, 14, 4, 4, 10, 10, -14, -14, 18, 8, 8, 4, 4, -4]);
ECSearch("4.1-d",(2)*OK,[-4, -4, 4, 0, 0, -4, -4, 2, -4, -4, 12, 12, 12, 12, 2, 2, 0, 0, -10, -10, -4, -4, 18, 20, 20, -12, -12, 8]);
ECSearch("4.1-e",(2)*OK,[2, -4, -2, -6, 0, -4, 2, -4, 8, -10, -6, 6, -12, 6, -10, 2, -12, 6, 8, 8, 8, -10, -6, -16, 2, 0, 12, -10]);
ECSearch("7.1-a",(-6*w + 35)*OK,[-1, 0, -3, -4, -5, 5, -1, 2, 4, 4, 5, -1, -2, -13, 10, 9, -8, 1, -2, -18, 5, 14, 6, -9, 0, -20, 1, 18, -4]);
ECSearch("7.2-a",(6*w + 29)*OK,[0, -1, -3, -4, 5, -5, 2, -1, 4, 5, 4, -2, -1, 10, -13, -8, 9, -2, 1, 5, -18, 6, 14, -9, -20, 0, 18, 1, -8]);
ECSearch("8.3-a",(w - 5)*OK,[-1, -4, 0, -2, 4, 0, -2, 2, 2, 0, -4, -6, 2, 6, -6, 6, -2, 0, 4, -14, 18, -2, 10, 2, -8, -4, 4, -12, 20]);
ECSearch("8.4-a",(w + 4)*OK,[-1, 0, -4, -2, 0, 4, 2, -2, 2, -4, 0, 2, -6, -6, 6, -2, 6, 4, 0, 18, -14, 10, -2, 2, -4, -8, -12, 4, 0]);
ECSearch("9.1-a",(3)*OK,[0, 2, -3, 1, 0, 2, -6, 2, -7, -8, 0, 6, -2, -8, 2, -5, -1, 12, -8, -7, 5, -1, 11, -2, -5, -5, -2, -2, -1]);
ECSearch("9.1-b",(3)*OK,[2, 0, 1, -3, 2, 0, 2, -6, -7, 0, -8, -2, 6, 2, -8, -1, -5, -8, 12, 5, -7, 11, -1, -2, -5, -5, -2, -2, 15]);
ECSearch("14.1-a",(3*w + 14)*OK,[0, 5, 4, 3, -3, -1, 2, -4, -4, 5, -9, 6, 3, -6, -7, 8, 9, -18, -10, -19, -10, -10, -9, -16, 20, -15, 18, -4]);
ECSearch("14.1-b",(3*w + 14)*OK,[-2, 3, 2, 1, 3, 7, 6, -6, -10, 1, 5, 6, -5, 6, -11, 8, 15, -6, -6, 7, -6, -16, -1, -8, 14, 5, 10, -8]);
ECSearch("14.1-c",(3*w + 14)*OK,[-1, 2, 4, 6, -4, -4, 6, 6, 10, -4, 2, 2, 12, 2, 10, -14, -4, -2, 10, 2, -12, -10, 14, -6, 8, 0, 0, -2]);
ECSearch("14.1-d",(3*w + 14)*OK,[-1, 3, -2, 0, 3, -5, -1, 1, -10, -6, -12, -5, -13, -10, 5, -9, -4, 6, 17, 16, 8, 18, 9, 2, -9, -16, 16, 9]);
ECSearch("14.1-e",(3*w + 14)*OK,[2, -1, -2, -3, -1, -1, -6, 6, -2, -7, -7, 2, 3, 14, 13, 4, -13, 10, 10, -13, -18, -16, -1, -12, -10, 21, -18, 16]);
ECSearch("14.1-f",(3*w + 14)*OK,[-1, -4, -2, 0, -4, 2, 6, -6, 4, 8, 2, 2, -6, -10, -2, -2, -4, -8, 10, 2, -6, -10, 2, -12, -16, 12, -12, 16]);
ECSearch("14.2-a",(w + 6)*OK,[2, 3, 2, -4, 4, -4, 2, 1, -4, 4, -2, 2, 1, -4, 4, 0, 13, -2, -4, 18, 0, -1, 9, -11, -18, 0, -11, -5]);
ECSearch("14.2-b",(w + 6)*OK,[0, 2, -5, 3, 6, 2, -4, 8, -1, -1, 9, -12, -6, -6, 14, 11, -9, 9, -10, 8, -7, 11, -9, 2, 11, 3, 0, -10]);
ECSearch("14.4-a",(3*w - 17)*OK,[0, 5, 4, -3, 3, 2, -1, -4, 5, -4, 6, -9, -6, 3, 8, -7, -18, 9, -19, -10, -10, -10, -9, 20, -16, 18, -15, 8]);
ECSearch("14.4-b",(3*w - 17)*OK,[-2, 3, 2, 3, 1, 6, 7, -6, 1, -10, 6, 5, 6, -5, 8, -11, -6, 15, 7, -6, -16, -6, -1, 14, -8, 10, 5, 2]);
ECSearch("14.4-c",(3*w - 17)*OK,[-1, 2, 4, -4, 6, 6, -4, 6, -4, 10, 2, 2, 2, 12, -14, 10, -2, -4, 2, 10, -10, -12, 14, 8, -6, 0, 0, 4]);
ECSearch("14.4-d",(3*w - 17)*OK,[-1, 3, -2, 3, 0, -1, -5, 1, -6, -10, -5, -12, -10, -13, -9, 5, 6, -4, 16, 17, 18, 8, 9, -9, 2, 16, -16, 18]);
ECSearch("14.4-e",(3*w - 17)*OK,[2, -1, -2, -1, -3, -6, -1, 6, -7, -2, 2, -7, 14, 3, 4, 13, 10, -13, -13, 10, -16, -18, -1, -10, -12, -18, 21, -14]);
ECSearch("14.4-f",(3*w - 17)*OK,[-1, -4, -2, -4, 0, 6, 2, -6, 8, 4, 2, 2, -10, -6, -2, -2, -8, -4, 2, 10, -10, -6, 2, -16, -12, -12, 12, 4]);
ECSearch("14.3-a",(-w + 7)*OK,[2, 3, 2, 4, -4, 2, -4, 1, 4, -4, 2, -2, -4, 1, 0, 4, -2, 13, 18, -4, -1, 0, 9, -18, -11, -11, 0, -16]);
ECSearch("14.3-b",(-w + 7)*OK,[0, 2, -5, 6, 3, -4, 2, 8, -1, -1, -12, 9, -6, -6, 11, 14, 9, -9, 8, -10, 11, -7, -9, 11, 2, 0, 3, -16]);
ECSearch("16.2-a",(10*w + 48)*OK,[2, 4, 0, 4, -6, -6, 0, 2, 0, 6, -2, 2, 10, 0, 10, 2, 6, 12, -2, 14, 10, -4, -2, 20, 14, -4, -8, -20]);
ECSearch("16.2-b",(10*w + 48)*OK,[2, -2, 0, 4, 0, 6, -6, 8, 6, -6, 10, 2, -2, -6, -2, 14, 0, 12, 16, -16, -2, 2, -2, -10, 2, 20, 4, 16]);
ECSearch("16.2-c",(10*w + 48)*OK,[0, -2, 2, -4, -2, 2, -4, -4, 2, 4, -6, -2, -10, 4, -6, -10, -6, 8, -8, -8, 14, 16, -6, 6, 12, -4, 0, 8]);
ECSearch("16.4-a",(w + 3)*OK,[1, 0, -4, 4, 0, 4, 0, -4, -6, -4, 8, 0, -8, 0, -4, 2, -14, 12, 0, -2, -18, 16, -12, 2, 4, 16, 4, -20, -8]);
ECSearch("16.4-b",(w + 3)*OK,[-1, -4, 0, 2, -4, 0, 2, -2, 2, 0, -4, 6, -2, -6, 6, 6, -2, 0, -4, -14, 18, 2, -10, 2, 8, -4, 4, 12, -20]);
ECSearch("16.3-a",(10*w - 58)*OK,[4, 2, 0, -6, 4, 0, -6, 2, 6, 0, 2, -2, 0, 10, 2, 10, 12, 6, 14, -2, -4, 10, -2, 14, 20, -8, -4, -14]);
ECSearch("16.3-b",(10*w - 58)*OK,[-2, 2, 0, 0, 4, -6, 6, 8, -6, 6, 2, 10, -6, -2, 14, -2, 12, 0, -16, 16, 2, -2, -2, 2, -10, 4, 20, -20]);
ECSearch("16.3-c",(10*w - 58)*OK,[-2, 0, 2, -2, -4, -4, 2, -4, 4, 2, -2, -6, 4, -10, -10, -6, 8, -6, -8, -8, 16, 14, -6, 12, 6, 0, -4, -6]);
ECSearch("16.5-a",(w - 4)*OK,[1, -4, 0, 4, 4, 0, -4, 0, -6, 8, -4, -8, 0, -4, 0, -14, 2, 0, 12, -18, -2, -12, 16, 2, 16, 4, -20, 4, -20]);
ECSearch("16.5-b",(w - 4)*OK,[-1, 0, -4, 2, 0, -4, -2, 2, 2, -4, 0, -2, 6, 6, -6, -2, 6, -4, 0, 18, -14, -10, 2, 2, -4, 8, 12, 4, 0]);
ECSearch("18.1-a",(-3*w + 18)*OK,[0, -4, 2, -3, 0, 2, -1, 8, -10, 2, -12, 6, -3, 12, -1, -10, 12, 12, -10, 8, -4, -1, -12, 20, 20, 3, 18, -10]);
ECSearch("18.1-b",(-3*w + 18)*OK,[-1, 0, 4, 0, -4, 6, 2, 2, 4, 0, 6, -2, -2, 2, -2, -10, 12, 16, 2, 2, 14, 2, -14, 4, -8, -20, 4, 8]);
ECSearch("18.1-c",(-3*w + 18)*OK,[-2, -2, -2, -3, 2, 4, -1, -4, -8, 2, 2, 12, 9, 4, -13, 12, -6, -16, 8, -12, 20, 15, -6, -2, 8, -13, -18, 20]);
ECSearch("18.2-a",(3*w + 15)*OK,[0, 2, -4, 0, -3, -1, 2, 8, 2, -10, 6, -12, 12, -3, -10, -1, 12, 12, 8, -10, -1, -4, -12, 20, 20, 18, 3, -16]);
ECSearch("18.2-b",(3*w + 15)*OK,[-1, 4, 0, -4, 0, 2, 6, 2, 0, 4, -2, 6, 2, -2, -10, -2, 16, 12, 2, 2, 2, 14, -14, -8, 4, 4, -20, -12]);
ECSearch("18.2-c",(3*w + 15)*OK,[-2, -2, -2, 2, -3, -1, 4, -4, 2, -8, 12, 2, 4, 9, 12, -13, -16, -6, -12, 8, 15, 20, -6, 8, -2, -18, -13, -20]);
ECSearch("22.2-a",(7*w + 34)*OK,[1, -2, 0, 2, -2, -2, -6, 6, 2, -2, 2, -6, 4, -6, -2, 2, -12, 18, 12, 4, 12, 2, 14, -2, -4, -4, -8, -2]);
ECSearch("22.2-b",(7*w + 34)*OK,[-1, 0, 0, -2, -4, -6, 2, 10, 0, 8, 6, -2, -6, 10, -2, -2, -4, 4, 2, 2, -14, 10, -14, -16, 8, -12, -20, -20]);
ECSearch("22.3-a",(7*w - 41)*OK,[1, 0, -2, 2, -2, -6, -2, 6, -2, 2, -6, 2, -6, 4, 2, -2, 18, -12, 4, 12, 2, 12, 14, -4, -2, -8, -4, -4]);
ECSearch("22.3-b",(7*w - 41)*OK,[-1, 0, 0, -2, -4, 2, -6, 10, 8, 0, -2, 6, 10, -6, -2, -2, 4, -4, 2, 2, 10, -14, -14, 8, -16, -20, -12, 4]);
ECSearch("26.1-a",(w + 1)*OK,[1, -2, 0, 2, -4, -2, -2, 4, 10, 8, 2, 6, -6, -6, -4, 6, -12, -8, 10, 8, 2, -20, -2, 10, -2, 20, -20, 12]);
ECSearch("26.1-b",(w + 1)*OK,[0, -1, 2, 4, -3, 3, 2, -1, 8, 8, 6, -9, 3, -6, 2, -4, 18, 0, -10, 17, 2, 11, 18, -16, -16, 9, -6, -7]);
ECSearch("26.1-c",(w + 1)*OK,[-2, 1, -3, -1, 2, 4, 1, -2, 4, -4, 5, -12, -6, 3, -1, 12, -12, 1, -8, -1, -4, -2, -8, -2, -8, -4, 1, -12]);
ECSearch("26.4-a",(w - 2)*OK,[1, 0, -2, 2, -2, -4, -2, 4, 8, 10, 6, 2, -6, -6, 6, -4, -8, -12, 8, 10, -20, 2, -2, -2, 10, -20, 20, -16]);
ECSearch("26.4-b",(w - 2)*OK,[0, 2, -1, 4, 3, -3, 2, -1, 8, 8, -9, 6, -6, 3, -4, 2, 0, 18, 17, -10, 11, 2, 18, -16, -16, -6, 9, -10]);
ECSearch("26.4-c",(w - 2)*OK,[-2, -3, 1, -1, 4, 2, 1, -2, -4, 4, -12, 5, 3, -6, 12, -1, 1, -12, -1, -8, -2, -4, -8, -8, -2, 1, -4, 14]);
ECSearch("28.1-a",(-12*w + 70)*OK,[-2, -4, 2, 4, -4, 2, -2, -2, -4, -2, 6, -4, 14, -6, -14, 4, 2, 2, 10, -4, 2, -18, -18, -8, -16, 0, 10]);
ECSearch("28.1-b",(-12*w + 70)*OK,[-2, 2, 4, 6, 2, -4, -4, -6, -4, 2, -2, 6, -4, 10, 14, 18, 8, 8, 16, 14, 0, -6, -18, 4, 4, 0, -16]);
ECSearch("28.1-c",(-12*w + 70)*OK,[-1, -2, 0, 3, -1, 5, -1, 2, -10, 0, -3, -9, -6, -7, 5, 12, -6, -1, -16, -16, 14, 9, 2, 5, -12, 0, -7]);
ECSearch("28.1-d",(-12*w + 70)*OK,[-2, 2, -4, -2, 2, -4, 4, 10, -4, 10, 6, -10, -4, -6, -2, 10, -16, -16, -8, 14, -16, -6, -18, 4, 20, 0, -8]);
ECSearch("28.1-e",(-12*w + 70)*OK,[2, -1, -5, 0, -3, 2, -2, -8, -3, -6, 9, 14, -11, 0, 5, 0, 0, 8, 3, 2, 12, -13, 7, 12, 18, 8, 16]);
ECSearch("28.1-f",(-12*w + 70)*OK,[5, -2, 0, 3, 5, -1, -1, 2, 2, -12, 3, -3, 6, 5, -7, -12, 6, -1, 8, -16, 2, -15, 2, -7, 12, 0, -1]);
ECSearch("28.1-g",(-12*w + 70)*OK,[0, 2, 4, -4, 6, -2, -6, 8, 0, -6, 10, 14, 6, -2, -2, -12, -4, -14, 2, 6, -2, -14, 8, 16, 20, -12, 4]);
ECSearch("28.3-a",(w)*OK,[-2, -3, 2, -5, 3, 1, 0, 6, -4, 7, -7, 0, 1, 6, -11, -10, 3, -6, 18, -11, -12, 2, -13, 22, 8, 11, -8, -8]);
ECSearch("28.3-b",(w)*OK,[2, -3, 4, 3, -3, -5, 2, 4, -4, -3, 3, -8, -13, -10, 5, 0, 5, -18, 8, 1, -4, 0, -21, 8, 12, 5, -2, 12]);
ECSearch("28.2-a",(12*w + 58)*OK,[-2, -4, 4, 2, 2, -4, -2, -4, -2, 6, -2, 14, -4, -14, -6, 2, 4, 10, 2, 2, -4, -18, -8, -18, 0, -16, -4]);
ECSearch("28.2-b",(12*w + 58)*OK,[-2, 2, 6, 4, -4, 2, -4, -4, -6, -2, 2, -4, 6, 14, 10, 8, 18, 16, 8, 0, 14, -6, 4, -18, 0, 4, 10]);
ECSearch("28.2-c",(12*w + 58)*OK,[-1, -2, 3, 0, 5, -1, -1, -10, 2, -3, 0, -6, -9, 5, -7, -6, 12, -16, -1, 14, -16, 9, 5, 2, 0, -12, 14]);
ECSearch("28.2-d",(12*w + 58)*OK,[-2, 2, -2, -4, -4, 2, 4, -4, 10, 6, 10, -4, -10, -2, -6, -16, 10, -8, -16, -16, 14, -6, 4, -18, 0, 20, 2]);
ECSearch("28.2-e",(12*w + 58)*OK,[2, -1, 0, -5, 2, -3, -2, -3, -8, 9, -6, -11, 14, 5, 0, 0, 0, 3, 8, 12, 2, -13, 12, 7, 8, 18, -19]);
ECSearch("28.2-f",(12*w + 58)*OK,[5, -2, 3, 0, -1, 5, -1, 2, 2, 3, -12, 6, -3, -7, 5, 6, -12, 8, -1, 2, -16, -15, -7, 2, 0, 12, 2]);
ECSearch("28.2-g",(12*w + 58)*OK,[0, 2, -4, 4, -2, 6, -6, 0, 8, 10, -6, 6, 14, -2, -2, -4, -12, 2, -14, -2, 6, -14, 16, 8, -12, 20, 12]);
ECSearch("28.6-a",(w - 1)*OK,[-2, -3, 2, 3, -5, 0, 1, 6, 7, -4, 0, -7, 6, 1, -10, -11, -6, 3, -11, 18, 2, -12, -13, 8, 22, -8, 11, 20]);
ECSearch("28.6-b",(w - 1)*OK,[2, -3, 4, -3, 3, 2, -5, 4, -3, -4, -8, 3, -10, -13, 0, 5, -18, 5, 1, 8, 0, -4, -21, 12, 8, -2, 5, -6]);
ECSearch("32.3-a",(2*w - 10)*OK,[-4, 4, -4, 0, 0, 4, 4, 2, 4, -4, -12, -12, -12, -12, 2, 2, 0, 0, -10, -10, 4, 4, 18, -20, 20, -12, 12, -8]);
ECSearch("32.3-b",(2*w - 10)*OK,[-4, -2, 2, 0, -6, -2, 4, -4, 10, 8, -6, 6, -6, 12, 2, -10, 6, 12, 8, 8, 10, -8, -6, -2, -16, 12, 0, 4]);
ECSearch("32.3-c",(2*w - 10)*OK,[-2, 0, -2, 2, -4, 4, -2, -4, -4, 2, 2, 6, -4, 10, -10, -6, 8, 6, -8, -8, -16, -14, -6, -12, 6, 0, 4, 6]);
ECSearch("32.3-d",(2*w - 10)*OK,[-2, -2, 0, 0, 4, 6, -6, 8, 6, 6, -2, -10, 6, 2, 14, -2, 12, 0, -16, 16, -2, 2, -2, -2, -10, 4, -20, 20]);
ECSearch("32.3-e",(2*w - 10)*OK,[0, 0, -6, 4, -4, -2, -2, 2, 8, -8, 2, 2, 6, 6, 14, 14, 4, -4, 10, 10, 14, 14, 18, -8, 8, 4, -4, 4]);
ECSearch("32.3-f",(2*w - 10)*OK,[2, 4, 2, 6, 0, 4, -2, -4, -8, -10, 6, -6, 12, -6, -10, 2, -12, -6, 8, 8, -8, 10, -6, 16, 2, 0, -12, 10]);
ECSearch("32.3-g",(2*w - 10)*OK,[2, -2, -4, 0, 0, -2, -2, 8, -2, 2, 6, 6, 6, 6, -10, -10, 0, 0, 8, 8, -2, -2, -18, -2, 2, -12, 12, 4]);
ECSearch("32.3-h",(2*w - 10)*OK,[4, 0, 4, -4, 0, -4, 0, -6, -8, 4, -8, 0, -4, 0, -14, 2, 0, -12, -18, -2, -12, 16, 2, -16, -4, 20, -4, 20]);
ECSearch("32.3-i",(2*w - 10)*OK,[4, -2, 0, 6, 4, 0, 6, 2, -6, 0, -2, 2, 0, -10, 2, 10, 12, -6, 14, -2, 4, -10, -2, -14, 20, -8, 4, 14]);
ECSearch("32.4-a",(2*w + 8)*OK,[4, -4, -4, 0, 0, 4, 4, 2, -4, 4, -12, -12, -12, -12, 2, 2, 0, 0, -10, -10, 4, 4, 18, 20, -20, 12, -12, 8]);
ECSearch("32.4-b",(2*w + 8)*OK,[-2, -4, 2, -6, 0, 4, -2, -4, 8, 10, 6, -6, 12, -6, -10, 2, 12, 6, 8, 8, -8, 10, -6, -16, -2, 0, 12, -10]);
ECSearch("32.4-c",(2*w + 8)*OK,[0, -2, -2, -4, 2, -2, 4, -4, 2, -4, 6, 2, 10, -4, -6, -10, 6, 8, -8, -8, -14, -16, -6, 6, -12, 4, 0, 8]);
ECSearch("32.4-d",(2*w + 8)*OK,[-2, -2, 0, 4, 0, -6, 6, 8, 6, 6, -10, -2, 2, 6, -2, 14, 0, 12, 16, -16, 2, -2, -2, -10, -2, -20, 4, 16]);
ECSearch("32.4-e",(2*w + 8)*OK,[0, 0, -6, -4, 4, -2, -2, 2, -8, 8, 2, 2, 6, 6, 14, 14, -4, 4, 10, 10, 14, 14, 18, 8, -8, -4, 4, -4]);
ECSearch("32.4-f",(2*w + 8)*OK,[4, 2, 2, 0, 6, -2, 4, -4, -10, -8, -6, 6, -6, 12, 2, -10, -6, -12, 8, 8, 10, -8, -6, 2, 16, -12, 0, -4]);
ECSearch("32.4-g",(2*w + 8)*OK,[-2, 2, -4, 0, 0, -2, -2, 8, 2, -2, 6, 6, 6, 6, -10, -10, 0, 0, 8, 8, -2, -2, -18, 2, -2, 12, -12, -4]);
ECSearch("32.4-h",(2*w + 8)*OK,[0, 4, 4, 0, -4, 0, -4, -6, 4, -8, 0, -8, 0, -4, 2, -14, -12, 0, -2, -18, 16, -12, 2, -4, -16, -4, 20, 8]);
ECSearch("32.4-i",(2*w + 8)*OK,[-2, 4, 0, 4, 6, 6, 0, 2, 0, -6, 2, -2, -10, 0, 10, 2, -6, 12, -2, 14, -10, 4, -2, 20, -14, 4, -8, -20]);
ECSearch("36.1-a",(6)*OK,[0, 0, 4, 4, 2, 2, 10, -8, -8, 6, 6, -6, -6, -2, -2, 12, 12, -14, -14, 2, 2, -14, -8, -8, 4, 4, 4]);
ECSearch("36.2-a",(15*w + 72)*OK,[1, 1, 3, -2, 0, 1, -3, -3, -7, 7, -4, 0, -2, -6, 7, -1, 6, 6, 18, -14, -15, -7, -10, 16, -16, -10, 16, 7]);
ECSearch("36.2-b",(15*w + 72)*OK,[-2, -5, -3, 4, -6, -2, 6, -3, 8, -8, 2, -6, 4, -6, -5, 11, 12, 0, -3, 1, 9, -7, 14, 7, 5, 2, -2, 19]);
ECSearch("36.3-a",(15*w - 87)*OK,[1, 3, 1, 0, -2, -3, 1, -3, 7, -7, 0, -4, -6, -2, -1, 7, 6, 6, -14, 18, -7, -15, -10, -16, 16, 16, -10, -7]);
ECSearch("36.3-b",(15*w - 87)*OK,[-2, -3, -5, -6, 4, 6, -2, -3, -8, 8, -6, 2, -6, 4, 11, -5, 0, 12, 1, -3, -7, 9, 14, 5, 7, -2, 2, -19]);
ECSearch("44.1-a",(8*w + 38)*OK,[2, 0, -4, 2, -6, 0, 6, 4, 10, 10, 2, -6, -12, 10, 2, 6, -4, 2, 2, 14, -16, 6, 16, -6, 0, -8, 12]);
ECSearch("44.1-b",(8*w + 38)*OK,[-2, 2, -4, 0, -2, 6, -8, 2, -6, -6, 2, 6, 2, 14, 6, 0, 4, 12, 12, 6, -14, 14, -10, -6, -4, -20, -8]);
ECSearch("44.1-c",(8*w + 38)*OK,[2, 0, -4, 2, -2, -2, 4, 0, 4, -10, -10, 2, -12, 2, 10, 6, 4, -10, -2, -10, 20, 6, -14, -16, 4, 12, -4]);
ECSearch("44.1-d",(8*w + 38)*OK,[-2, -2, -4, -4, -2, 2, 4, -10, 2, -6, -6, -2, 6, -10, 6, 4, -4, -8, -8, -10, -18, -18, -14, 2, -4, -12, -8]);
ECSearch("44.1-e",(8*w + 38)*OK,[0, -2, 2, 6, 2, 6, -2, -2, 2, 10, -6, 2, -4, 2, 14, -6, 4, -12, -4, 18, 4, -2, 4, -2, 16, 12, 12]);
ECSearch("44.1-f",(8*w + 38)*OK,[0, -4, -2, 0, 2, -2, -2, -4, 0, 6, -10, -6, -10, 6, -10, 0, 12, -2, -2, 18, -10, 2, -20, 0, -4, -20, 20]);
ECSearch("44.1-g",(8*w + 38)*OK,[2, -4, 4, 6, 2, -4, 2, 8, 2, -6, -6, -6, 0, 2, 2, 18, 12, -10, -10, -10, 20, 6, 20, 2, 0, 0, 20]);
ECSearch("44.1-h",(8*w + 38)*OK,[2, 4, 4, -2, 2, 4, -6, 0, 2, 10, -6, 10, -8, -14, 2, -6, 12, -18, -18, -10, -4, 6, -4, 2, 0, -16, 4]);
ECSearch("44.4-a",(-3*w - 13)*OK,[1, -4, -4, -2, -2, 2, 0, 6, 10, 8, 0, 6, 0, -4, -2, -10, -12, -2, -14, 2, -4, 2, -6, 22, 0, 4, -10, -10]);
ECSearch("44.2-a",(8*w - 46)*OK,[0, 2, -4, 2, 0, -6, 6, 10, 4, 2, 10, -12, -6, 2, 10, -4, 6, 2, 2, -16, 14, 6, -6, 16, -8, 0, 18]);
ECSearch("44.2-b",(8*w - 46)*OK,[2, -2, -4, 0, 6, -2, -8, -6, 2, 2, -6, 2, 6, 6, 14, 4, 0, 12, 12, -14, 6, 14, -6, -10, -20, -4, 12]);
ECSearch("44.2-c",(8*w - 46)*OK,[0, 2, -4, 2, -2, -2, 4, 4, 0, -10, -10, -12, 2, 10, 2, 4, 6, -2, -10, 20, -10, 6, -16, -14, 12, 4, 6]);
ECSearch("44.2-d",(8*w - 46)*OK,[-2, -2, -4, -4, 2, -2, 4, 2, -10, -6, -6, 6, -2, 6, -10, -4, 4, -8, -8, -18, -10, -18, 2, -14, -12, -4, -16]);
ECSearch("44.2-e",(8*w - 46)*OK,[-2, 0, 2, 6, 6, 2, -2, 2, -2, -6, 10, -4, 2, 14, 2, 4, -6, -4, -12, 4, 18, -2, -2, 4, 12, 16, -10]);
ECSearch("44.2-f",(8*w - 46)*OK,[-4, 0, -2, 0, -2, 2, -2, 0, -4, -10, 6, -10, -6, -10, 6, 12, 0, -2, -2, -10, 18, 2, 0, -20, -20, -4, -8]);
ECSearch("44.2-g",(8*w - 46)*OK,[-4, 2, 4, 6, -4, 2, 2, 2, 8, -6, -6, 0, -6, 2, 2, 12, 18, -10, -10, 20, -10, 6, 2, 20, 0, 0, 14]);
ECSearch("44.2-h",(8*w - 46)*OK,[4, 2, 4, -2, 4, 2, -6, 2, 0, -6, 10, -8, 10, 2, -14, 12, -6, -18, -18, -4, -10, 6, 2, -4, -16, 0, -10]);
ECSearch("44.5-a",(3*w - 16)*OK,[1, -4, -4, -2, -2, 0, 2, 6, 8, 10, 6, 0, -4, 0, -10, -2, -2, -12, 2, -14, 2, -4, -6, 0, 22, -10, 4, 20]);
ECSearch("49.1-a",(7)*OK,[0, -1, 1, 0, 5, 2, -6, -6, -5, -1, 8, -1, 0, 2, 7, 4, -7, 1, 10, 2, -9, -1, 11, -15, -10, -12, -9, 22]);
ECSearch("49.1-b",(7)*OK,[-1, -1, 2, -4, -4, -2, -2, 10, -8, -8, 10, 10, -2, -2, 14, 14, 12, 12, 2, 2, -10, -10, -14, -8, -8, -4, -4, -20]);
ECSearch("49.1-c",(7)*OK,[-1, 0, 1, 5, 0, -6, 2, -6, -1, -5, -1, 8, 2, 0, 4, 7, 1, -7, 2, 10, -1, -9, 11, -10, -15, -9, -12, -14]);
ECSearch("49.2-a",(2*w - 9)*OK,[0, 1, -3, 4, 5, -5, -2, -1, -4, 5, -4, 2, -1, 10, -13, 8, 9, 2, 1, 5, 18, -6, -14, -9, 20, 0, -18, 1, 8]);
ECSearch("49.3-a",(2*w + 7)*OK,[1, 0, -3, 4, -5, 5, -1, -2, -4, -4, 5, -1, 2, -13, 10, 9, 8, 1, 2, 18, 5, -14, -6, -9, 0, 20, 1, -18, -4]);
ECSearch("50.1-a",(-5*w + 30)*OK,[1, -1, 0, 1, -1, -5, -6, 5, 8, -6, -2, 0, -6, 10, 1, 2, 0, -8, 2, -7, 2, -6, -8, -4, -19, 0, -16, -15]);
ECSearch("50.2-a",(5*w + 25)*OK,[1, 0, -1, 1, -5, -1, 5, -6, -6, 8, 0, -2, 10, -6, 2, 1, -8, 0, -7, 2, -6, 2, -8, -19, -4, -16, 0, 23]);
ECSearch("52.1-a",(4*w - 22)*OK,[-4, 2, 2, 0, 2, 0, -8, 2, -4, -10, 10, -2, 0, -10, -10, -6, -12, 8, -12, 14, 8, 18, -10, 8, -12, -8, -20]);
ECSearch("52.1-b",(4*w - 22)*OK,[2, 2, -2, 0, 0, -4, 2, -4, -4, -6, 6, 6, 0, 8, 2, 6, -12, -4, 2, 14, -10, 6, -16, -10, -12, 0, 8]);
ECSearch("52.1-c",(4*w - 22)*OK,[0, -4, -4, 4, 4, -4, -4, -2, 6, 10, 2, -6, 0, -8, 6, 6, 0, -2, -4, -14, 10, 14, -6, -4, 0, -16, 12]);
ECSearch("52.1-d",(4*w - 22)*OK,[0, -4, -2, 4, 0, 6, -2, 4, 0, -10, 6, 10, -2, 14, 6, 8, 4, -2, -2, 2, 14, 2, 12, -16, 4, 12, -4]);
ECSearch("52.1-e",(4*w - 22)*OK,[4, -2, 2, 0, -2, -4, 4, -10, -4, -10, -6, 14, -4, -10, -2, -2, 12, 4, -8, 14, -12, 2, 2, 8, 4, -16, 4]);
ECSearch("52.2-a",(4*w + 18)*OK,[2, -4, 2, 2, 0, 0, -8, -4, 2, 10, -10, 0, -2, -10, -10, -12, -6, -12, 8, 8, 14, 18, 8, -10, -8, -12, -6]);
ECSearch("52.2-b",(4*w + 18)*OK,[2, 2, -2, 0, 0, -4, 2, -4, -4, 6, -6, 0, 6, 2, 8, -12, 6, 2, -4, -10, 14, 6, -10, -16, 0, -12, -22]);
ECSearch("52.2-c",(4*w + 18)*OK,[-4, 0, -4, 4, 4, -4, -4, 6, -2, 2, 10, 0, -6, 6, -8, 0, 6, -4, -2, 10, -14, 14, -4, -6, -16, 0, -10]);
ECSearch("52.2-d",(4*w + 18)*OK,[-4, 0, -2, 0, 4, 6, -2, 0, 4, 6, -10, -2, 10, 6, 14, 4, 8, -2, -2, 14, 2, 2, -16, 12, 12, 4, 16]);
ECSearch("52.2-e",(4*w + 18)*OK,[-2, 4, 2, -2, 0, -4, 4, -4, -10, -6, -10, -4, 14, -2, -10, 12, -2, -8, 4, -12, 14, 2, 8, 2, -16, 4, -2]);
ECSearch("56.1-a",(6*w + 28)*OK,[2, -1, -2, -3, 0, 2, 4, 1, -3, -12, -3, 2, 10, 15, -10, 15, -3, 8, 6, 11, -15, -1, 13, -18, 0, -7, -8]);
ECSearch("56.1-b",(6*w + 28)*OK,[-1, -2, 0, 0, 2, -4, -1, 8, -4, -6, 6, 0, 3, 8, 8, 6, 3, -10, 8, 11, -4, -15, 14, 17, 3, 0, -4]);
ECSearch("56.2-a",(2*w + 12)*OK,[-4, 2, 0, 4, 2, 0, -2, 0, -2, -6, 0, -8, 8, 2, -6, -6, -12, 18, 2, 6, -10, -10, 0, 10, 2, 0, 20]);
ECSearch("56.2-b",(2*w + 12)*OK,[-2, -4, 0, -2, 2, 2, 2, 8, 0, 10, -4, 8, -6, 2, -2, -4, 0, 10, 2, -18, -4, 18, -8, 12, -18, -20, 4]);
ECSearch("56.2-c",(2*w + 12)*OK,[1, -4, 1, -4, -1, -1, 1, -4, 4, 3, 10, 2, -1, 7, 9, 14, 4, -8, -7, 14, 8, -15, -11, 0, 0, -4, 20]);
ECSearch("56.2-d",(2*w + 12)*OK,[1, 2, -5, -1, 2, 5, -2, 5, -2, -6, -5, 2, -7, -8, 9, 14, -17, -17, 2, -4, -10, 15, 10, 0, -18, 5, -10]);
ECSearch("56.2-e",(2*w + 12)*OK,[-1, 4, -3, -3, 2, 5, -4, -7, 8, 6, 9, 6, 9, -4, 5, -6, 9, 5, 14, 14, -10, -9, -16, -4, -6, 9, -4]);
ECSearch("56.5-a",(-13*w + 76)*OK,[-1, 3, 4, -3, 1, 2, 1, 8, 5, 0, 2, 9, 6, -3, 4, -3, -2, 9, 9, -14, 10, -2, -1, 8, -8, 6, 13, -12]);
ECSearch("56.5-b",(-13*w + 76)*OK,[0, -2, 1, 3, 2, -2, -4, -8, 7, 5, -5, 4, 14, 6, 6, 11, 5, -15, -10, -16, 3, 1, -1, 10, 1, 9, -16, 6]);
ECSearch("56.5-c",(-13*w + 76)*OK,[1, -4, 4, -4, 0, 4, -4, 10, 0, -8, 8, -12, 0, 12, 2, 2, 12, -12, -2, 14, 4, 0, -14, -8, 8, 8, -12, 4]);
ECSearch("56.6-a",(5*w + 23)*OK,[-1, 0, -2, -4, 4, 2, 2, 2, 0, -8, 6, 6, 10, -6, -10, -2, 12, -12, 2, -6, 2, 10, -14, -16, -8, 12, 12, -12]);
ECSearch("56.6-b",(5*w + 23)*OK,[0, 1, -2, 5, -1, 4, -1, -2, -3, 8, -10, 3, -6, -1, -6, -11, -6, -7, 17, -12, -12, -2, -13, 12, 10, -8, -7, 18]);
ECSearch("56.6-c",(5*w + 23)*OK,[0, 1, 4, -1, -1, -2, -7, 4, 3, -4, 2, -3, 6, 5, 0, 1, 6, 11, -7, 6, -6, 10, -1, 12, -8, 10, -1, 0]);
ECSearch("56.4-a",(6*w - 34)*OK,[2, -1, -3, -2, 2, 0, 4, -3, 1, -3, -12, 10, 2, -10, 15, -3, 15, 6, 8, -15, 11, -1, -18, 13, -7, 0, 14]);
ECSearch("56.4-b",(6*w - 34)*OK,[-1, -2, 0, 0, -4, 2, -1, -4, 8, 6, -6, 3, 0, 8, 8, 3, 6, 8, -10, -4, 11, -15, 17, 14, 0, 3, 11]);
ECSearch("56.3-a",(-2*w + 14)*OK,[-4, 2, 4, 0, 0, 2, -2, -2, 0, 0, -6, 8, -8, -6, 2, -12, -6, 2, 18, -10, 6, -10, 10, 0, 0, 2, -8]);
ECSearch("56.3-b",(-2*w + 14)*OK,[-2, -4, -2, 0, 2, 2, 2, 0, 8, -4, 10, -6, 8, -2, 2, 0, -4, 2, 10, -4, -18, 18, 12, -8, -20, -18, -22]);
ECSearch("56.3-c",(-2*w + 14)*OK,[1, -4, -4, 1, -1, -1, 1, 4, -4, 10, 3, -1, 2, 9, 7, 4, 14, -7, -8, 8, 14, -15, 0, -11, -4, 0, -17]);
ECSearch("56.3-d",(-2*w + 14)*OK,[1, 2, -1, -5, 5, 2, -2, -2, 5, -5, -6, -7, 2, 9, -8, -17, 14, 2, -17, -10, -4, 15, 0, 10, 5, -18, -8]);
ECSearch("56.3-e",(-2*w + 14)*OK,[-1, 4, -3, -3, 5, 2, -4, 8, -7, 9, 6, 9, 6, 5, -4, 9, -6, 14, 5, -10, 14, -9, -4, -16, 9, -6, 20]);
ECSearch("56.8-a",(13*w + 63)*OK,[-1, 3, 4, 1, -3, 1, 2, 8, 0, 5, 9, 2, -3, 6, -3, 4, 9, -2, -14, 9, -2, 10, -1, -8, 8, 13, 6, -4]);
ECSearch("56.8-b",(13*w + 63)*OK,[0, -2, 1, 2, 3, -4, -2, -8, 5, 7, 4, -5, 6, 14, 11, 6, -15, 5, -16, -10, 1, 3, -1, 1, 10, -16, 9, 0]);
ECSearch("56.8-c",(13*w + 63)*OK,[1, -4, 4, 0, -4, -4, 4, 10, -8, 0, -12, 8, 12, 0, 2, 2, -12, 12, 14, -2, 0, 4, -14, 8, -8, -12, 8, -16]);
ECSearch("56.7-a",(5*w - 28)*OK,[-1, 0, -2, 4, -4, 2, 2, 2, -8, 0, 6, 6, -6, 10, -2, -10, -12, 12, -6, 2, 10, 2, -14, -8, -16, 12, 12, -12]);
ECSearch("56.7-b",(5*w - 28)*OK,[0, 1, -2, -1, 5, -1, 4, -2, 8, -3, 3, -10, -1, -6, -11, -6, -7, -6, -12, 17, -2, -12, -13, 10, 12, -7, -8, 12]);
ECSearch("56.7-c",(5*w - 28)*OK,[0, 1, 4, -1, -1, -7, -2, 4, -4, 3, -3, 2, 5, 6, 1, 0, 11, 6, 6, -7, 10, -6, -1, -8, 12, -1, 10, -12]);
ECSearch("62.1-a",(w + 9)*OK,[1, 0, -2, -1, -3, 1, 0, 7, -3, -1, 9, 2, 3, 4, -7, 10, -12, 6, 7, 9, -16, -6, -10, 8, -11, 16, -7, 14]);
ECSearch("62.1-b",(w + 9)*OK,[-1, -4, 0, 2, 4, 0, -6, -2, 2, -4, 6, -2, -6, 6, 6, 14, 8, -4, 2, -14, 10, 6, 18, -8, -20, -12, 12, -4]);
ECSearch("62.2-a",(-23*w - 111)*OK,[1, 3, -2, 2, 3, 4, -6, -5, 6, -8, 3, 5, 6, -8, -7, -5, -9, -6, 16, 6, -16, -18, -16, -10, 10, 7, 11, 14]);
ECSearch("62.4-a",(w - 10)*OK,[1, -2, 0, -1, 1, -3, 7, 0, -3, -1, 2, 9, 4, 3, 10, -7, 6, -12, 9, 7, -6, -16, -10, -11, 8, -7, 16, 16]);
ECSearch("62.4-b",(w - 10)*OK,[-1, 0, -4, 2, 0, 4, -2, -6, 2, -4, -2, 6, 6, -6, 14, 6, -4, 8, -14, 2, 6, 10, 18, -20, -8, 12, -12, 8]);
ECSearch("62.3-a",(-23*w + 134)*OK,[1, -2, 3, 2, 4, 3, -5, -6, 6, -8, 5, 3, -8, 6, -5, -7, -6, -9, 6, 16, -18, -16, -16, 10, -10, 11, 7, 4]);
ECSearch("63.1-a",(-18*w + 105)*OK,[2, 0, 0, 4, -4, -1, 5, 7, -5, -7, -10, -2, -4, -8, 3, -11, 4, 16, 3, -19, 5, -15, 6, -3, 13, 10, 6, -7]);
ECSearch("63.1-b",(-18*w + 105)*OK,[0, 0, 0, 2, -2, 3, -1, -3, -3, 9, -2, 6, -12, 0, -1, -5, -10, -6, 1, 13, 11, -5, 20, -17, -1, 6, 10, -11]);
ECSearch("63.1-c",(-18*w + 105)*OK,[0, 2, -4, 0, 2, -1, -3, 3, 7, 5, -4, 8, 12, 2, -5, -11, 2, -8, -17, 5, 9, -19, 8, -15, 5, -12, 18, -11]);
ECSearch("63.2-a",(18*w + 87)*OK,[0, 2, 0, -4, 4, 5, -1, 7, -7, -5, -2, -10, -8, -4, -11, 3, 16, 4, -19, 3, -15, 5, 6, 13, -3, 6, 10, 7]);
ECSearch("63.2-b",(18*w + 87)*OK,[0, 0, 0, -2, 2, -1, 3, -3, 9, -3, 6, -2, 0, -12, -5, -1, -6, -10, 13, 1, -5, 11, 20, -1, -17, 10, 6, 17]);
ECSearch("63.2-c",(18*w + 87)*OK,[2, 0, -4, 2, 0, -3, -1, 3, 5, 7, 8, -4, 2, 12, -11, -5, -8, 2, 5, -17, -19, 9, 8, 5, -15, 18, -12, -5]);
ECSearch("64.1-a",(8)*OK,[-4, 2, -4, 2, -4, 4, -2, -6, 6, 0, -10, 2, 4, -2, 2, 2, -4, 14, -2, -2, 16, -2, -2, -2, -20, -8, -20, 10]);
ECSearch("64.1-b",(8)*OK,[-2, 4, -2, 2, 4, 0, -6, 4, 0, -6, 6, -6, -8, -10, -2, -14, 0, 6, -8, -8, -4, 14, -6, 8, -10, 0, 12, 14]);
ECSearch("64.1-c",(8)*OK,[2, -4, -4, -4, 2, -2, 4, -6, 0, 6, 2, -10, -2, 4, 2, 2, 14, -4, -2, -2, -2, 16, -2, -20, -2, -20, -8, 4]);
ECSearch("64.1-d",(8)*OK,[4, -2, -2, 4, 2, -6, 0, 4, -6, 0, -6, 6, -10, -8, -14, -2, 6, 0, -8, -8, 14, -4, -6, -10, 8, 12, 0, -16]);
ECSearch("64.4-a",(2*w + 6)*OK,[0, -2, 4, 6, 4, -4, -2, -2, -6, -4, 10, -10, -4, 6, -14, -6, 12, -6, -6, 2, -16, -2, -18, 10, -16, 16, -8, -18]);
ECSearch("64.4-b",(2*w + 6)*OK,[0, 2, 2, 0, -2, -2, -4, 4, 6, -4, 2, -2, 10, -12, 10, 6, -6, -12, 0, -16, 10, -16, -6, -22, 20, 4, -4, 12]);
ECSearch("64.4-c",(2*w + 6)*OK,[4, 4, 0, -4, 0, 4, 4, 2, -4, 4, 0, 0, 4, 4, 10, 2, -16, 4, 6, 6, -4, -20, 2, 12, 12, 4, 0, -4]);
ECSearch("64.4-d",(2*w + 6)*OK,[-2, 2, 0, 4, 0, 2, 2, -4, 10, -2, 6, 6, 2, 2, -2, -10, 8, -4, 12, 12, 10, 2, 14, 18, 6, -20, 0, -8]);
ECSearch("64.4-e",(2*w + 6)*OK,[-2, -2, 0, -4, 0, -2, -2, -4, -10, -2, -6, -6, -2, -2, -2, -10, 8, 4, 12, 12, -10, -2, 14, -18, 6, -20, 0, 8]);
ECSearch("64.4-f",(2*w + 6)*OK,[4, -4, 0, 4, 0, -4, -4, 2, 4, 4, 0, 0, -4, -4, 10, 2, -16, -4, 6, 6, 4, 20, 2, -12, 12, 4, 0, 4]);
ECSearch("64.4-g",(2*w + 6)*OK,[0, -2, -2, 0, -2, 2, 4, 4, -6, -4, -2, 2, -10, 12, 10, 6, -6, 12, 0, -16, -10, 16, -6, 22, 20, 4, 4, -12]);
ECSearch("64.4-h",(2*w + 6)*OK,[0, 2, -4, -6, 4, 4, 2, -2, 6, -4, -10, 10, 4, -6, -14, -6, 12, 6, -6, 2, 16, 2, -18, -10, -16, 16, 8, 18]);
ECSearch("64.6-a",(9*w + 44)*OK,[1, 4, 0, -4, -4, 0, 4, 0, 6, -8, 4, -8, 0, 4, 0, -14, -2, 0, -12, 18, 2, 12, 16, 2, -16, -4, 20, 4, 20]);
ECSearch("64.6-b",(9*w + 44)*OK,[-1, 0, 4, -2, 0, -4, 2, 2, -2, 4, 0, -2, 6, -6, -6, -2, -6, -4, 0, -18, 14, 10, 2, 2, 4, -8, -12, 4, 0]);
ECSearch("64.6-c",(9*w + 44)*OK,[-1, 0, 4, 2, 0, 4, -2, -2, -2, 4, 0, 2, -6, 6, 6, -2, -6, 4, 0, -18, 14, -10, -2, 2, 4, 8, 12, 4, 0]);
ECSearch("64.6-d",(9*w + 44)*OK,[1, -4, 0, 4, -4, 0, -4, 0, 6, -8, -4, 8, 0, -4, 0, -14, -2, 0, -12, 18, 2, -12, -16, 2, -16, 4, -20, 4, 20]);
ECSearch("64.5-a",(2*w - 8)*OK,[-2, 0, 4, 4, 6, -2, -4, -2, -4, -6, -10, 10, 6, -4, -6, -14, -6, 12, 2, -6, -2, -16, -18, -16, 10, -8, 16, -4]);
ECSearch("64.5-b",(2*w - 8)*OK,[2, 0, 2, -2, 0, -4, -2, 4, -4, 6, -2, 2, -12, 10, 6, 10, -12, -6, -16, 0, -16, 10, -6, 20, -22, -4, 4, 2]);
ECSearch("64.5-c",(2*w - 8)*OK,[4, 4, 0, 0, -4, 4, 4, 2, 4, -4, 0, 0, 4, 4, 2, 10, 4, -16, 6, 6, -20, -4, 2, 12, 12, 0, 4, 8]);
ECSearch("64.5-d",(2*w - 8)*OK,[2, -2, 0, 0, 4, 2, 2, -4, -2, 10, 6, 6, 2, 2, -10, -2, -4, 8, 12, 12, 2, 10, 14, 6, 18, 0, -20, -4]);
ECSearch("64.5-e",(2*w - 8)*OK,[-2, -2, 0, 0, -4, -2, -2, -4, -2, -10, -6, -6, -2, -2, -10, -2, 4, 8, 12, 12, -2, -10, 14, 6, -18, 0, -20, -4]);
ECSearch("64.5-f",(2*w - 8)*OK,[-4, 4, 0, 0, 4, -4, -4, 2, 4, 4, 0, 0, -4, -4, 2, 10, -4, -16, 6, 6, 20, 4, 2, 12, -12, 0, 4, 8]);
ECSearch("64.5-g",(2*w - 8)*OK,[-2, 0, -2, -2, 0, 4, 2, 4, -4, -6, 2, -2, 12, -10, 6, 10, 12, -6, -16, 0, 16, -10, -6, 20, 22, 4, 4, 2]);
ECSearch("64.5-h",(2*w - 8)*OK,[2, 0, -4, 4, -6, 2, 4, -2, -4, 6, 10, -10, -6, 4, -6, -14, 6, 12, 2, -6, 2, 16, -18, -16, -10, 8, 16, -4]);
ECSearch("64.7-a",(-9*w + 53)*OK,[1, 0, 4, -4, 0, -4, 0, 4, 6, 4, -8, 0, -8, 0, 4, -2, -14, -12, 0, 2, 18, 16, 12, 2, -4, -16, 4, 20, -8]);
ECSearch("64.7-b",(-9*w + 53)*OK,[-1, 4, 0, -2, -4, 0, 2, 2, -2, 0, 4, 6, -2, -6, -6, -6, -2, 0, -4, 14, -18, 2, 10, 2, -8, 4, 4, -12, -20]);
ECSearch("64.7-c",(-9*w + 53)*OK,[-1, 4, 0, 2, 4, 0, -2, -2, -2, 0, 4, -6, 2, 6, 6, -6, -2, 0, 4, 14, -18, -2, -10, 2, 8, 4, 4, 12, 20]);
ECSearch("64.7-d",(-9*w + 53)*OK,[1, 0, -4, 4, 0, -4, 0, -4, 6, -4, -8, 0, 8, 0, -4, -2, -14, -12, 0, 2, 18, -16, -12, 2, 4, -16, 4, -20, 8]);
