print "Field 2.2.129.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 32);
OK := Integers(K);
Plist := [];
Append(~Plist,(-w + 6)*OK);
Append(~Plist,(w + 5)*OK);
Append(~Plist,(-28*w + 173)*OK);
Append(~Plist,(-6*w - 31)*OK);
Append(~Plist,(-6*w + 37)*OK);
Append(~Plist,(-4*w - 21)*OK);
Append(~Plist,(-4*w + 25)*OK);
Append(~Plist,(2*w - 11)*OK);
Append(~Plist,(2*w + 9)*OK);
Append(~Plist,(50*w + 259)*OK);
Append(~Plist,(50*w - 309)*OK);
Append(~Plist,(106*w + 549)*OK);
Append(~Plist,(7)*OK);
Append(~Plist,(-2*w + 15)*OK);
Append(~Plist,(2*w + 13)*OK);
Append(~Plist,(-40*w + 247)*OK);
Append(~Plist,(40*w + 207)*OK);
Append(~Plist,(14*w - 87)*OK);
Append(~Plist,(-14*w - 73)*OK);
Append(~Plist,(-10*w - 51)*OK);
Append(~Plist,(-10*w + 61)*OK);
Append(~Plist,(72*w + 373)*OK);
Append(~Plist,(72*w - 445)*OK);
Append(~Plist,(26*w + 135)*OK);
Append(~Plist,(26*w - 161)*OK);
Append(~Plist,(4*w + 23)*OK);
Append(~Plist,(-4*w + 27)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(2*w + 3)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-2*w + 17)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(20*w + 103)*OK);
Append(~Plist,(-20*w + 123)*OK);
Append(~Plist,(6*w - 35)*OK);
Append(~Plist,(6*w + 29)*OK);
Append(~Plist,(10*w + 53)*OK);
Append(~Plist,(-10*w + 63)*OK);
Append(~Plist,(-118*w - 611)*OK);
Append(~Plist,(-118*w + 729)*OK);
Append(~Plist,(52*w - 321)*OK);
Append(~Plist,(52*w + 269)*OK);
Append(~Plist,(-60*w + 371)*OK);
Append(~Plist,(-60*w - 311)*OK);
Append(~Plist,(-96*w - 497)*OK);
Append(~Plist,(96*w - 593)*OK);
Append(~Plist,(24*w - 149)*OK);
Append(~Plist,(-24*w - 125)*OK);
Append(~Plist,(-4*w + 19)*OK);
Append(~Plist,(4*w + 15)*OK);
Append(~Plist,(36*w + 187)*OK);
Append(~Plist,(36*w - 223)*OK);
Append(~Plist,(22*w - 135)*OK);
Append(~Plist,(-22*w - 113)*OK);
Append(~Plist,(-174*w - 901)*OK);
Append(~Plist,(-174*w + 1075)*OK);
Append(~Plist,(-32*w - 165)*OK);
Append(~Plist,(32*w - 197)*OK);
Append(~Plist,(-2*w + 21)*OK);
Append(~Plist,(2*w + 19)*OK);
Append(~Plist,(6*w + 35)*OK);
Append(~Plist,(-6*w + 41)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(-82*w + 507)*OK);
Append(~Plist,(-82*w - 425)*OK);
Append(~Plist,(8*w + 45)*OK);
Append(~Plist,(8*w - 53)*OK);
Append(~Plist,(-4*w + 15)*OK);
Append(~Plist,(4*w + 11)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(-18*w - 95)*OK);
Append(~Plist,(-18*w + 113)*OK);
Append(~Plist,(70*w - 433)*OK);
Append(~Plist,(-70*w - 363)*OK);
Append(~Plist,(-8*w + 45)*OK);
Append(~Plist,(8*w + 37)*OK);
Append(~Plist,(-230*w - 1191)*OK);
Append(~Plist,(-230*w + 1421)*OK);
Append(~Plist,(-12*w + 77)*OK);
Append(~Plist,(-12*w - 65)*OK);
Append(~Plist,(12*w - 71)*OK);
Append(~Plist,(12*w + 59)*OK);
Append(~Plist,(6*w - 43)*OK);
Append(~Plist,(-6*w - 37)*OK);
Append(~Plist,(-18*w - 91)*OK);
Append(~Plist,(-18*w + 109)*OK);
Append(~Plist,(-4*w - 5)*OK);
Append(~Plist,(4*w - 9)*OK);
Append(~Plist,(138*w + 715)*OK);
Append(~Plist,(138*w - 853)*OK);
Append(~Plist,(-4*w + 7)*OK);
Append(~Plist,(4*w + 3)*OK);
Append(~Plist,(-208*w - 1077)*OK);
Append(~Plist,(-208*w + 1285)*OK);
Append(~Plist,(-10*w - 47)*OK);
Append(~Plist,(10*w - 57)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(-228*w + 1409)*OK);
Append(~Plist,(228*w + 1181)*OK);
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

ECSearch("2.1-a",(-w + 6)*OK,[2, 1, 4, -1, 4, -1, 0, 5, -8, 2, -6, -10, 8, 8, 3, 8, -10, -15, 15, 15, -2, 8, -6, -11, -10, 10, 1, -19, -3]);
ECSearch("2.1-b",(-w + 6)*OK,[-2, -1, -4, 1, 4, -1, 0, -5, -8, 2, -6, -10, 8, 8, -3, -8, -10, -15, -15, -15, -2, 8, -6, -11, -10, 10, -1, 19, -3]);
ECSearch("2.2-a",(w + 5)*OK,[2, 1, -1, 4, -1, 4, 5, 0, 2, -8, -6, -10, 8, 8, 8, 3, -15, -10, 15, 15, 8, -2, -11, -6, 10, -10, -19, 1, -3]);
ECSearch("2.2-b",(w + 5)*OK,[-2, -1, 1, -4, -1, 4, -5, 0, 2, -8, -6, -10, 8, 8, -8, -3, -15, -10, -15, -15, 8, -2, -11, -6, 10, -10, 19, -1, -3]);
ECSearch("4.1-a",(2)*OK,[0, 3, 3, -5, -5, 3, 3, -8, -8, -8, 11, 4, 4, 12, 12, 4, 4, -6, -6, -1, -1, -4, -4, -13, -13, 15, 15, 19]);
ECSearch("4.1-b",(2)*OK,[0, -3, -3, -5, -5, -3, -3, -8, -8, -8, 11, 4, 4, -12, -12, 4, 4, 6, 6, -1, -1, -4, -4, -13, -13, -15, -15, 19]);
ECSearch("4.2-a",(-11*w + 68)*OK,[2, -2, -2, 2, -5, -1, 6, 2, -5, -7, 0, -10, -13, 5, 0, -16, 8, 0, 6, -6, 13, 5, 9, -5, 17, -11, -8, -16, -3]);
ECSearch("4.2-b",(-11*w + 68)*OK,[0, 0, 0, 0, 7, -5, 0, 0, 7, -11, -8, 2, -5, -11, 0, 0, 4, 4, 0, 0, 5, -19, -7, -13, -19, 17, 0, 0, -11]);
ECSearch("4.2-c",(-11*w + 68)*OK,[-2, 2, 2, -2, -5, -1, -6, -2, -5, -7, 0, -10, -13, 5, 0, 16, 8, 0, -6, 6, 13, 5, 9, -5, 17, -11, 8, 16, -3]);
ECSearch("4.3-a",(11*w + 57)*OK,[2, -2, 2, -2, -1, -5, 2, 6, -7, -5, 0, -10, 5, -13, -16, 0, 0, 8, -6, 6, 5, 13, -5, 9, -11, 17, -16, -8, -3]);
ECSearch("4.3-b",(11*w + 57)*OK,[0, 0, 0, 0, -5, 7, 0, 0, -11, 7, -8, 2, -11, -5, 0, 0, 4, 4, 0, 0, -19, 5, -13, -7, 17, -19, 0, 0, -11]);
ECSearch("4.3-c",(11*w + 57)*OK,[-2, 2, -2, 2, -1, -5, -2, -6, -7, -5, 0, -10, 5, -13, 16, 0, 0, 8, 6, -6, 5, 13, -5, 9, -11, 17, 16, 8, -3]);
ECSearch("6.1-a",(5*w - 31)*OK,[1, 1, -1, -1, -5, -5, -3, 2, -2, 0, -1, -10, 2, 10, -6, -12, -4, -6, 6, -13, 19, -14, -18, 1, 5, 1, 11, -15]);
ECSearch("6.1-b",(5*w - 31)*OK,[-1, -1, 1, -1, -5, 5, 3, 2, -2, 0, -1, -10, 2, -10, 6, -12, -4, 6, -6, -13, 19, -14, -18, 1, 5, -1, -11, -15]);
ECSearch("6.2-a",(5*w + 26)*OK,[1, -1, 1, -5, -1, -3, -5, -2, 2, 0, -1, 2, -10, -6, 10, -4, -12, 6, -6, 19, -13, -18, -14, 5, 1, 11, 1, -15]);
ECSearch("6.2-b",(5*w + 26)*OK,[-1, 1, -1, -5, -1, 3, 5, -2, 2, 0, -1, 2, -10, 6, -10, -4, -12, -6, 6, 19, -13, -18, -14, 5, 1, -11, -1, -15]);
ECSearch("8.1-a",(-2*w + 12)*OK,[2, -3, 3, 5, -1, 9, 3, -10, 8, -10, 5, 2, -10, 0, 6, 8, -10, -6, 6, -7, 5, 14, -10, 17, -1, 3, -9, -13]);
ECSearch("8.1-b",(-2*w + 12)*OK,[1, -3, 0, -1, 2, -9, 6, 8, 8, 8, -4, -10, -4, 6, -9, -1, -10, -3, -15, 8, -16, -1, 2, 2, 2, 3, -21, -7]);
ECSearch("8.1-c",(-2*w + 12)*OK,[-1, 3, 0, -1, 2, 9, -6, 8, 8, 8, -4, -10, -4, -6, 9, -1, -10, 3, 15, 8, -16, -1, 2, 2, 2, -3, 21, -7]);
ECSearch("8.1-d",(-2*w + 12)*OK,[-2, 3, -3, 5, -1, -9, -3, -10, 8, -10, 5, 2, -10, 0, -6, 8, -10, 6, -6, -7, 5, 14, -10, 17, -1, -3, 9, -13]);
ECSearch("8.2-a",(2*w + 10)*OK,[2, 3, -3, -1, 5, 3, 9, 8, -10, -10, 5, -10, 2, 6, 0, -10, 8, 6, -6, 5, -7, -10, 14, -1, 17, -9, 3, -13]);
ECSearch("8.2-b",(2*w + 10)*OK,[1, 0, -3, 2, -1, 6, -9, 8, 8, 8, -4, -4, -10, -9, 6, -10, -1, -15, -3, -16, 8, 2, -1, 2, 2, -21, 3, -7]);
ECSearch("8.2-c",(2*w + 10)*OK,[-1, 0, 3, 2, -1, -6, 9, 8, 8, 8, -4, -4, -10, 9, -6, -10, -1, 15, 3, -16, 8, 2, -1, 2, 2, 21, -3, -7]);
ECSearch("8.2-d",(2*w + 10)*OK,[-2, -3, 3, -1, 5, -3, -9, 8, -10, -10, 5, -10, 2, -6, 0, -10, 8, -6, 6, 5, -7, -10, 14, -1, 17, 9, -3, -13]);
ECSearch("10.2-a",(w - 7)*OK,[0, 3, 3, -5, -2, 3, 0, 4, -8, 10, -10, 4, -14, 12, 9, -11, -8, -3, 9, 8, 8, -13, 8, 2, -4, 15, -15, -17]);
ECSearch("10.2-b",(w - 7)*OK,[-1, 2, 0, -6, 4, -6, 2, 10, 0, -4, 6, 2, 10, 0, 14, 8, 4, -18, 10, -4, 14, 0, 16, 2, 16, 2, 0, 10]);
ECSearch("10.2-c",(w - 7)*OK,[0, 1, 1, 3, -2, -7, -4, -4, 0, -2, -6, -8, -2, 8, -5, 5, -4, -1, 3, -8, 8, 3, 4, -14, -8, 13, -13, 7]);
ECSearch("10.2-d",(w - 7)*OK,[0, -1, -1, 3, -2, 7, 4, -4, 0, -2, -6, -8, -2, -8, 5, 5, -4, 1, -3, -8, 8, 3, 4, -14, -8, -13, 13, 7]);
ECSearch("10.2-e",(w - 7)*OK,[1, -2, 0, -6, 4, 6, -2, 10, 0, -4, 6, 2, 10, 0, -14, 8, 4, 18, -10, -4, 14, 0, 16, 2, 16, -2, 0, 10]);
ECSearch("10.2-f",(w - 7)*OK,[0, -3, -3, -5, -2, -3, 0, 4, -8, 10, -10, 4, -14, -12, -9, -11, -8, 3, -9, 8, 8, -13, 8, 2, -4, -15, 15, -17]);
ECSearch("10.3-a",(w + 6)*OK,[0, 3, 3, -2, -5, 0, 3, -8, 4, 10, -10, -14, 4, 9, 12, -8, -11, 9, -3, 8, 8, 8, -13, -4, 2, -15, 15, -17]);
ECSearch("10.3-b",(w + 6)*OK,[-1, 2, 0, 4, -6, 2, -6, 0, 10, -4, 6, 10, 2, 14, 0, 4, 8, 10, -18, 14, -4, 16, 0, 16, 2, 0, 2, 10]);
ECSearch("10.3-c",(w + 6)*OK,[0, 1, 1, -2, 3, -4, -7, 0, -4, -2, -6, -2, -8, -5, 8, -4, 5, 3, -1, 8, -8, 4, 3, -8, -14, -13, 13, 7]);
ECSearch("10.3-d",(w + 6)*OK,[0, -1, -1, -2, 3, 4, 7, 0, -4, -2, -6, -2, -8, 5, -8, -4, 5, -3, 1, 8, -8, 4, 3, -8, -14, 13, -13, 7]);
ECSearch("10.3-e",(w + 6)*OK,[1, -2, 0, 4, -6, -2, 6, 0, 10, -4, 6, 10, 2, -14, 0, 4, 8, -10, 18, 14, -4, 16, 0, 16, 2, 0, -2, 10]);
ECSearch("10.3-f",(w + 6)*OK,[0, -3, -3, -2, -5, 0, -3, -8, 4, 10, -10, -14, 4, -9, -12, -8, -11, -9, 3, 8, 8, 8, -13, -4, 2, 15, -15, -17]);
ECSearch("12.1-a",(-56*w + 346)*OK,[3, 1, -1, 3, -3, 7, -2, 10, -8, -9, -6, 14, -14, 2, 4, -12, -10, -6, 3, -5, -18, 2, 5, -15, 3, -3, 13]);
ECSearch("12.1-b",(-56*w + 346)*OK,[1, 3, 3, -1, 7, -3, 10, -2, -8, -9, 14, -6, 2, -14, -12, 4, -6, -10, -5, 3, 2, -18, -15, 5, -3, 3, 13]);
ECSearch("12.1-c",(-56*w + 346)*OK,[-1, -3, 3, -1, -7, 3, 10, -2, -8, -9, 14, -6, -2, 14, -12, 4, 6, 10, -5, 3, 2, -18, -15, 5, 3, -3, 13]);
ECSearch("12.1-d",(-56*w + 346)*OK,[-3, -1, -1, 3, 3, -7, -2, 10, -8, -9, -6, 14, 14, -2, 4, -12, 10, 6, 3, -5, -18, 2, 5, -15, -3, 3, 13]);
ECSearch("15.1-a",(-2*w + 13)*OK,[2, 0, 2, -5, -3, 0, -8, -1, -5, -4, 6, 9, 15, 6, -12, -16, -4, 2, -12, 17, 3, -17, 13, -9, -13, -6, 0, 5]);
ECSearch("15.1-b",(-2*w + 13)*OK,[-2, 0, -2, -5, -3, 0, 8, -1, -5, -4, 6, 9, 15, -6, 12, -16, -4, -2, 12, 17, 3, -17, 13, -9, -13, 6, 0, 5]);
ECSearch("15.2-a",(2*w + 11)*OK,[0, 2, 2, -3, -5, -8, 0, -5, -1, -4, 6, 15, 9, -12, 6, -4, -16, -12, 2, 3, 17, 13, -17, -13, -9, 0, -6, 5]);
ECSearch("15.2-b",(2*w + 11)*OK,[0, -2, -2, -3, -5, 8, 0, -5, -1, -4, 6, 15, 9, 12, -6, -4, -16, 12, -2, 3, 17, 13, -17, -13, -9, 0, 6, 5]);
ECSearch("16.1-a",(4)*OK,[0, 0, 0, -2, -2, 0, 0, 4, 4, -8, 2, 16, 16, 0, 0, 4, 4, 0, 0, 14, 14, 20, 20, 2, 2, 0, 0, 22]);
ECSearch("16.4-a",(3*w + 16)*OK,[0, 3, 0, -3, -6, 3, 6, -9, 0, 0, 0, 4, -12, -6, 9, -6, -6, -3, -3, 9, -8, -8, 14, 13, 2, 2, -9, -9, -15]);
ECSearch("16.4-b",(3*w + 16)*OK,[0, 0, 0, 0, 3, 3, 0, 0, -9, 9, 0, -14, 15, -15, 0, 0, 12, -12, 0, 0, 1, 1, 5, -5, -7, -7, 0, 0, 21]);
ECSearch("16.4-c",(3*w + 16)*OK,[0, -3, 0, 3, -6, 3, -6, 9, 0, 0, 0, 4, -12, -6, -9, 6, -6, -3, 3, -9, -8, -8, 14, 13, 2, 2, 9, 9, -15]);
ECSearch("16.5-a",(-3*w + 19)*OK,[0, 3, -3, 0, 3, -6, -9, 6, 0, 0, 0, 4, -6, -12, -6, 9, -3, -6, 9, -3, -8, -8, 13, 14, 2, 2, -9, -9, -15]);
ECSearch("16.5-b",(-3*w + 19)*OK,[0, 0, 0, 0, 3, 3, 0, 0, 9, -9, 0, -14, -15, 15, 0, 0, -12, 12, 0, 0, 1, 1, -5, 5, -7, -7, 0, 0, 21]);
ECSearch("16.5-c",(-3*w + 19)*OK,[0, -3, 3, 0, 3, -6, 9, -6, 0, 0, 0, 4, -6, -12, 6, -9, -3, -6, -9, 3, -8, -8, 13, 14, 2, 2, 9, 9, -15]);
ECSearch("18.1-a",(-3*w + 18)*OK,[1, 2, 2, -4, 4, 6, -2, 2, 10, 6, -10, -2, -2, 12, -4, -2, 6, 18, -6, -2, 14, 0, 16, 14, -2, 10, -14, -12]);
ECSearch("18.1-b",(-3*w + 18)*OK,[2, 4, 1, -4, 1, 0, 5, 8, -2, 6, -10, -8, -8, 3, -8, 10, 15, -15, 15, -2, 8, -6, -11, -10, 10, -1, -19, 3]);
ECSearch("18.1-c",(-3*w + 18)*OK,[-1, -2, 2, 4, -4, 6, 2, -2, -10, -6, -10, 2, 2, -12, -4, 2, -6, 18, 6, -2, 14, 0, 16, 14, -2, 10, 14, 12]);
ECSearch("18.1-d",(-3*w + 18)*OK,[-1, 1, 1, 5, 1, -3, 5, 2, -2, 0, -1, -2, 10, 6, 10, 4, 12, 6, 6, 19, -13, -18, -14, 5, 1, 11, -1, 15]);
ECSearch("18.1-e",(-3*w + 18)*OK,[1, -1, -1, 5, 1, 3, -5, 2, -2, 0, -1, -2, 10, -6, -10, 4, 12, -6, -6, 19, -13, -18, -14, 5, 1, -11, 1, 15]);
ECSearch("18.1-f",(-3*w + 18)*OK,[1, 2, -2, 4, -4, -6, -2, -2, -10, -6, -10, 2, 2, 12, 4, 2, -6, -18, -6, -2, 14, 0, 16, 14, -2, -10, -14, 12]);
ECSearch("18.1-g",(-3*w + 18)*OK,[-2, -4, -1, -4, 1, 0, -5, 8, -2, 6, -10, -8, -8, -3, 8, 10, 15, 15, -15, -2, 8, -6, -11, -10, 10, 1, 19, 3]);
ECSearch("18.1-h",(-3*w + 18)*OK,[-1, -2, -2, -4, 4, -6, 2, 2, 10, 6, -10, -2, -2, -12, 4, -2, 6, -18, 6, -2, 14, 0, 16, 14, -2, -10, 14, -12]);
ECSearch("18.2-a",(3*w + 15)*OK,[1, 2, 2, 4, -4, -2, 6, 10, 2, 6, -10, -2, -2, -4, 12, 6, -2, -6, 18, 14, -2, 16, 0, -2, 14, -14, 10, -12]);
ECSearch("18.2-b",(3*w + 15)*OK,[2, 1, 4, 1, -4, 5, 0, -2, 8, 6, -10, -8, -8, -8, 3, 15, 10, 15, -15, 8, -2, -11, -6, 10, -10, -19, -1, 3]);
ECSearch("18.2-c",(3*w + 15)*OK,[-1, 2, -2, -4, 4, 2, 6, -10, -2, -6, -10, 2, 2, -4, -12, -6, 2, 6, 18, 14, -2, 16, 0, -2, 14, 14, 10, 12]);
ECSearch("18.2-d",(3*w + 15)*OK,[-1, 1, 1, 1, 5, 5, -3, -2, 2, 0, -1, 10, -2, 10, 6, 12, 4, 6, 6, -13, 19, -14, -18, 1, 5, -1, 11, 15]);
ECSearch("18.2-e",(3*w + 15)*OK,[1, -1, -1, 1, 5, -5, 3, -2, 2, 0, -1, 10, -2, -10, -6, 12, 4, -6, -6, -13, 19, -14, -18, 1, 5, 1, -11, 15]);
ECSearch("18.2-f",(3*w + 15)*OK,[1, -2, 2, -4, 4, -2, -6, -10, -2, -6, -10, 2, 2, 4, 12, -6, 2, -6, -18, 14, -2, 16, 0, -2, 14, -14, -10, 12]);
ECSearch("18.2-g",(3*w + 15)*OK,[-2, -1, -4, 1, -4, -5, 0, -2, 8, 6, -10, -8, -8, 8, -3, 15, 10, -15, 15, 8, -2, -11, -6, 10, -10, 19, 1, 3]);
ECSearch("18.2-h",(3*w + 15)*OK,[-1, -2, -2, 4, -4, 2, -6, 10, 2, 6, -10, -2, -2, 4, -12, 6, -2, 6, -18, 14, -2, 16, 0, -2, 14, 14, -10, -12]);
ECSearch("20.1-a",(-12*w - 62)*OK,[2, 0, -4, 2, 6, 6, 8, 2, 8, 2, 14, -10, -6, 0, -4, 8, -6, 6, 2, 8, 8, -16, -16, 2, 12, 18, 2]);
ECSearch("20.1-b",(-12*w - 62)*OK,[-2, -2, -2, 6, 2, 2, 0, 8, -2, -12, -2, -2, -8, -16, -4, -4, 12, -4, -16, -8, -20, 12, -14, 10, -4, 4, -2]);
ECSearch("20.1-c",(-12*w - 62)*OK,[0, 0, 4, -2, 6, 6, 4, -2, 10, -4, 4, 4, -6, 12, 16, -8, 12, 0, 8, 14, -4, -16, 20, -10, -6, -12, -14]);
ECSearch("20.1-d",(-12*w - 62)*OK,[2, 2, -2, 6, -2, -2, 0, 8, -2, -12, -2, -2, 8, 16, -4, -4, -12, 4, -16, -8, -20, 12, -14, 10, 4, -4, -2]);
ECSearch("20.1-e",(-12*w - 62)*OK,[-2, 0, -4, 2, -6, -6, 8, 2, 8, 2, 14, -10, 6, 0, -4, 8, 6, -6, 2, 8, 8, -16, -16, 2, -12, -18, 2]);
ECSearch("20.1-f",(-12*w - 62)*OK,[0, 0, 4, -2, -6, -6, 4, -2, 10, -4, 4, 4, 6, -12, 16, -8, -12, 0, 8, 14, -4, -16, 20, -10, 6, 12, -14]);
ECSearch("20.2-a",(-12*w + 74)*OK,[2, 0, 2, -4, 6, 6, 2, 8, 8, 2, -10, 14, 0, -6, 8, -4, 6, -6, 8, 2, -16, 8, 2, -16, 18, 12, 2]);
ECSearch("20.2-b",(-12*w + 74)*OK,[-2, -2, 6, -2, 2, 2, 8, 0, -2, -12, -2, -2, -16, -8, -4, -4, -4, 12, -8, -16, 12, -20, 10, -14, 4, -4, -2]);
ECSearch("20.2-c",(-12*w + 74)*OK,[0, 0, -2, 4, 6, 6, -2, 4, 10, -4, 4, 4, 12, -6, -8, 16, 0, 12, 14, 8, -16, -4, -10, 20, -12, -6, -14]);
ECSearch("20.2-d",(-12*w + 74)*OK,[2, 2, 6, -2, -2, -2, 8, 0, -2, -12, -2, -2, 16, 8, -4, -4, 4, -12, -8, -16, 12, -20, 10, -14, -4, 4, -2]);
ECSearch("20.2-e",(-12*w + 74)*OK,[-2, 0, 2, -4, -6, -6, 2, 8, 8, 2, -10, 14, 0, 6, 8, -4, -6, 6, 8, 2, -16, 8, 2, -16, -18, -12, 2]);
ECSearch("20.2-f",(-12*w + 74)*OK,[0, 0, -2, 4, -6, -6, -2, 4, 10, -4, 4, 4, -12, 6, -8, 16, 0, -12, 14, 8, -16, -4, -10, 20, 12, 6, -14]);
ECSearch("24.1-a",(10*w - 62)*OK,[0, 2, 2, -6, 6, -4, -2, -2, -2, 6, 6, -10, -4, 16, 10, -6, 10, 12, -6, -2, 12, -16, 2, -18, -6, -12, -2]);
ECSearch("24.1-b",(10*w - 62)*OK,[0, -2, 2, -6, -6, 4, -2, -2, -2, 6, 6, -10, 4, -16, 10, -6, -10, -12, -6, -2, 12, -16, 2, -18, 6, 12, -2]);
ECSearch("24.2-a",(10*w + 52)*OK,[2, 0, -6, 2, -4, 6, -2, -2, -2, 6, -10, 6, 16, -4, -6, 10, 12, 10, -2, -6, -16, 12, -18, 2, -12, -6, -2]);
ECSearch("24.2-b",(10*w + 52)*OK,[-2, 0, -6, 2, 4, -6, -2, -2, -2, 6, -10, 6, -16, 4, -6, 10, -12, -10, -2, -6, -16, 12, -18, 2, 12, 6, -2]);
ECSearch("25.2-a",(-16*w + 99)*OK,[0, 0, 0, 0, -3, 3, 0, 0, 9, 9, 0, -14, 15, -15, 0, 0, -12, -12, 0, 0, 1, -1, -5, 5, 7, 7, 0, 0, -21]);
ECSearch("25.2-b",(-16*w + 99)*OK,[0, 0, 0, 0, 7, -2, 0, 0, -11, 4, -5, 11, -5, -5, 0, 0, -17, 13, 0, 0, -19, 14, 20, 20, 17, 2, 0, 0, -11]);
ECSearch("25.3-a",(16*w + 83)*OK,[0, 0, 0, 0, 3, -3, 0, 0, 9, 9, 0, -14, -15, 15, 0, 0, -12, -12, 0, 0, -1, 1, 5, -5, 7, 7, 0, 0, -21]);
ECSearch("25.3-b",(16*w + 83)*OK,[0, 0, 0, 0, -2, 7, 0, 0, 4, -11, -5, 11, -5, -5, 0, 0, 13, -17, 0, 0, 14, -19, 20, 20, 2, 17, 0, 0, -11]);
ECSearch("26.1-a",(w + 2)*OK,[1, -1, -4, 1, 2, 0, -2, 10, -1, 12, 2, -13, 8, -9, -14, 5, 0, -6, 9, -2, -13, -12, 1, -16, -11, -13, -2, 18]);
ECSearch("26.1-b",(w + 2)*OK,[-1, 1, 4, -1, 2, 0, 2, 10, -1, 12, 2, -13, 8, 9, 14, 5, 0, 6, -9, -2, -13, -12, 1, -16, -11, 13, 2, 18]);
ECSearch("26.2-a",(-45*w + 278)*OK,[1, 2, 2, 4, 4, -6, -8, -8, 8, -12, -4, 8, 2, 12, 4, -10, 12, 6, 0, -2, -4, 6, -8, -10, 10, 14, -14, -6]);
ECSearch("26.2-b",(-45*w + 278)*OK,[-1, -2, -2, -4, 4, 6, 8, -8, 8, -12, -4, 8, 2, -12, -4, -10, 12, -6, 0, -2, -4, 6, -8, -10, 10, -14, 14, -6]);
ECSearch("26.4-a",(w - 3)*OK,[1, -1, 1, -4, 2, -2, 0, -1, 10, 12, 2, 8, -13, -14, -9, 0, 5, 9, -6, -13, -2, 1, -12, -11, -16, -2, -13, 18]);
ECSearch("26.4-b",(w - 3)*OK,[-1, 1, -1, 4, 2, 2, 0, -1, 10, 12, 2, 8, -13, 14, 9, 0, 5, -9, 6, -13, -2, 1, -12, -11, -16, 2, 13, 18]);
ECSearch("26.3-a",(45*w + 233)*OK,[1, 2, 4, 2, 4, -8, -6, 8, -8, -12, -4, 2, 8, 4, 12, 12, -10, 0, 6, -4, -2, -8, 6, 10, -10, -14, 14, -6]);
ECSearch("26.3-b",(45*w + 233)*OK,[-1, -2, -4, -2, 4, 8, 6, 8, -8, -12, -4, 2, 8, -4, -12, 12, -10, 0, -6, -4, -2, -8, 6, 10, -10, 14, -14, -6]);
ECSearch("30.1-a",(w + 1)*OK,[1, 4, 4, 0, 0, 2, 2, -2, -10, -6, 0, 12, 0, -6, 8, -4, 4, 6, 2, -6, 16, -8, 6, -10, 6, 6, 20]);
ECSearch("30.1-b",(w + 1)*OK,[-1, 2, -2, 6, -6, -2, -4, -8, 8, -6, 12, -12, -12, 0, 8, 8, -10, 6, 2, -18, -8, 4, -18, 2, -18, 6, 2]);
ECSearch("30.1-c",(w + 1)*OK,[0, 1, -2, -4, -3, -10, -8, -2, 2, -8, -5, 12, -9, 1, 7, 15, 18, -1, -2, -10, -5, -16, -8, -9, -4, -9, -12]);
ECSearch("30.1-d",(w + 1)*OK,[0, -1, -2, -4, 3, 10, -8, -2, 2, -8, -5, 12, 9, -1, 7, 15, -18, 1, -2, -10, -5, -16, -8, -9, 4, 9, -12]);
ECSearch("30.1-e",(w + 1)*OK,[1, -2, -2, 6, 6, 2, -4, -8, 8, -6, 12, -12, 12, 0, 8, 8, 10, -6, 2, -18, -8, 4, -18, 2, 18, -6, 2]);
ECSearch("30.1-f",(w + 1)*OK,[-1, -4, 4, 0, 0, -2, 2, -2, -10, -6, 0, 12, 0, 6, 8, -4, -4, -6, 2, -6, 16, -8, 6, -10, -6, -6, 20]);
ECSearch("30.2-a",(23*w + 119)*OK,[0, 3, 2, 5, 3, 0, -10, -1, -4, 11, -10, 14, 12, 9, -4, -1, -3, -12, 8, -13, 8, 8, 2, -4, 15, 6, -10]);
ECSearch("30.2-b",(23*w + 119)*OK,[1, 2, -2, -2, 10, 2, -8, -8, -4, 2, -4, -4, 8, 0, 8, 16, -18, 6, 10, 2, -8, -8, -2, 6, -10, -10, 10]);
ECSearch("30.2-c",(23*w + 119)*OK,[0, 1, -2, 3, 3, -4, 6, 5, -12, -1, 2, -2, -12, -15, 0, 1, -11, 8, 12, -17, -12, -16, 6, 12, -17, 2, 2]);
ECSearch("30.2-d",(23*w + 119)*OK,[0, -1, -2, 3, -3, 4, 6, 5, -12, -1, 2, -2, 12, 15, 0, 1, 11, -8, 12, -17, -12, -16, 6, 12, 17, -2, 2]);
ECSearch("30.2-e",(23*w + 119)*OK,[-1, -2, -2, -2, -10, -2, -8, -8, -4, 2, -4, -4, -8, 0, 8, 16, 18, -6, 10, 2, -8, -8, -2, 6, 10, 10, 10]);
ECSearch("30.2-f",(23*w + 119)*OK,[0, -3, 2, 5, -3, 0, -10, -1, -4, 11, -10, 14, -12, -9, -4, -1, 3, 12, 8, -13, 8, 8, 2, -4, -15, -6, -10]);
ECSearch("30.4-a",(-w + 2)*OK,[1, 4, 0, 4, 2, 0, -2, 2, -10, -6, 12, 0, -6, 0, -4, 8, 6, 4, -6, 2, -8, 16, -10, 6, 6, 6, 20]);
ECSearch("30.4-b",(-w + 2)*OK,[-1, 2, 6, -2, -2, -6, -8, -4, 8, -6, -12, 12, 0, -12, 8, 8, 6, -10, -18, 2, 4, -8, 2, -18, 6, -18, 2]);
ECSearch("30.4-c",(-w + 2)*OK,[0, 1, -4, -2, -10, -3, -2, -8, 2, -8, 12, -5, 1, -9, 15, 7, -1, 18, -10, -2, -16, -5, -9, -8, -9, -4, -12]);
ECSearch("30.4-d",(-w + 2)*OK,[0, -1, -4, -2, 10, 3, -2, -8, 2, -8, 12, -5, -1, 9, 15, 7, 1, -18, -10, -2, -16, -5, -9, -8, 9, 4, -12]);
ECSearch("30.4-e",(-w + 2)*OK,[1, -2, 6, -2, 2, 6, -8, -4, 8, -6, -12, 12, 0, 12, 8, 8, -6, 10, -18, 2, 4, -8, 2, -18, -6, 18, 2]);
ECSearch("30.4-f",(-w + 2)*OK,[-1, -4, 0, 4, -2, 0, -2, 2, -10, -6, 12, 0, 6, 0, -4, 8, -6, -4, -6, 2, -8, 16, -10, 6, -6, -6, 20]);
ECSearch("30.3-a",(-23*w + 142)*OK,[0, 3, 5, 2, 0, 3, -1, -10, -4, 11, 14, -10, 9, 12, -1, -4, -12, -3, -13, 8, 8, 8, -4, 2, 6, 15, -10]);
ECSearch("30.3-b",(-23*w + 142)*OK,[1, 2, -2, -2, 2, 10, -8, -8, -4, 2, -4, -4, 0, 8, 16, 8, 6, -18, 2, 10, -8, -8, 6, -2, -10, -10, 10]);
ECSearch("30.3-c",(-23*w + 142)*OK,[0, 1, 3, -2, -4, 3, 5, 6, -12, -1, -2, 2, -15, -12, 1, 0, 8, -11, -17, 12, -16, -12, 12, 6, 2, -17, 2]);
ECSearch("30.3-d",(-23*w + 142)*OK,[0, -1, 3, -2, 4, -3, 5, 6, -12, -1, -2, 2, 15, 12, 1, 0, -8, 11, -17, 12, -16, -12, 12, 6, -2, 17, 2]);
ECSearch("30.3-e",(-23*w + 142)*OK,[-1, -2, -2, -2, -2, -10, -8, -8, -4, 2, -4, -4, 0, -8, 16, 8, -6, 18, 2, 10, -8, -8, 6, -2, 10, 10, 10]);
ECSearch("30.3-f",(-23*w + 142)*OK,[0, -3, 5, 2, 0, -3, -1, -10, -4, 11, 14, -10, -9, -12, -1, -4, 12, 3, -13, 8, 8, 8, -4, 2, -6, -15, -10]);
ECSearch("32.3-a",(-34*w - 176)*OK,[0, -3, -3, 3, 3, -3, -3, 0, 0, 0, -5, -12, 12, -12, 12, 12, -12, 6, 6, -17, -17, -4, 4, 11, 11, 9, 9, 3]);
ECSearch("32.3-b",(-34*w - 176)*OK,[2, -1, 1, 5, -1, -5, -7, -6, 0, -6, 5, -2, 2, 8, -10, 8, 10, -10, 10, 1, 13, -14, 2, 9, -9, -15, -3, -5]);
ECSearch("32.3-c",(-34*w - 176)*OK,[-2, 1, -1, 5, -1, 5, 7, -6, 0, -6, 5, -2, 2, -8, 10, 8, 10, 10, -10, 1, 13, -14, 2, 9, -9, 15, 3, -5]);
ECSearch("32.3-d",(-34*w - 176)*OK,[0, 3, 3, 3, 3, 3, 3, 0, 0, 0, -5, -12, 12, 12, -12, 12, -12, -6, -6, -17, -17, -4, 4, 11, 11, -9, -9, 3]);
ECSearch("32.3-e",(-34*w - 176)*OK,[-3, -3, 0, 3, -6, -9, 6, 0, 0, 0, 4, 6, 12, 6, -9, 3, 6, 9, -3, -8, -8, -13, -14, 2, 2, -9, -9, -15]);
ECSearch("32.3-f",(-34*w - 176)*OK,[3, 3, 0, 3, -6, 9, -6, 0, 0, 0, 4, 6, 12, -6, 9, 3, 6, -9, 3, -8, -8, -13, -14, 2, 2, 9, 9, -15]);
ECSearch("32.3-g",(-34*w - 176)*OK,[0, -2, -2, -2, -2, -2, -2, 0, 0, 0, -10, 8, -8, -8, 8, -8, 8, 14, 14, -2, -2, 16, -16, 6, 6, 6, 6, -22]);
ECSearch("32.3-h",(-34*w - 176)*OK,[-3, -1, -4, -5, 4, 5, 8, -6, 0, -6, -10, 8, -8, 8, -5, 13, -10, -5, -5, 16, -2, 1, 2, -6, 6, -15, -3, 5]);
ECSearch("32.3-i",(-34*w - 176)*OK,[3, 1, 4, -5, 4, -5, -8, -6, 0, -6, -10, 8, -8, -8, 5, 13, -10, 5, 5, 16, -2, 1, 2, -6, 6, 15, 3, 5]);
ECSearch("32.3-j",(-34*w - 176)*OK,[0, 2, 2, -2, -2, 2, 2, 0, 0, 0, -10, 8, -8, 8, -8, -8, 8, -14, -14, -2, -2, 16, -16, 6, 6, -6, -6, -22]);
ECSearch("32.3-k",(-34*w - 176)*OK,[1, -1, 0, -5, 0, 5, -8, 2, 8, -6, 6, -4, -8, -4, -1, 1, -10, 3, -5, -4, 14, -3, 6, 2, 6, 9, 13, 5]);
ECSearch("32.3-l",(-34*w - 176)*OK,[-1, 1, 0, -5, 0, -5, 8, 2, 8, -6, 6, -4, -8, 4, 1, 1, -10, -3, 5, -4, 14, -3, 6, 2, 6, -9, -13, 5]);
ECSearch("32.5-a",(-w)*OK,[0, 1, 4, -1, -2, -5, 6, 5, 0, 4, 0, 12, -4, -2, -13, 6, 14, -11, -9, 11, 8, 8, -10, 13, -2, 10, -19, 5, 1]);
ECSearch("32.5-b",(-w)*OK,[0, -1, -4, 1, -2, -5, -6, -5, 0, 4, 0, 12, -4, -2, 13, -6, 14, -11, 9, -11, 8, 8, -10, 13, -2, 10, 19, -5, 1]);
ECSearch("32.4-a",(34*w - 210)*OK,[0, -3, -3, 3, 3, -3, -3, 0, 0, 0, -5, 12, -12, 12, -12, -12, 12, 6, 6, -17, -17, 4, -4, 11, 11, 9, 9, 3]);
ECSearch("32.4-b",(34*w - 210)*OK,[2, 1, -1, -1, 5, -7, -5, 0, -6, -6, 5, 2, -2, -10, 8, 10, 8, 10, -10, 13, 1, 2, -14, -9, 9, -3, -15, -5]);
ECSearch("32.4-c",(34*w - 210)*OK,[-2, -1, 1, -1, 5, 7, 5, 0, -6, -6, 5, 2, -2, 10, -8, 10, 8, -10, 10, 13, 1, 2, -14, -9, 9, 3, 15, -5]);
ECSearch("32.4-d",(34*w - 210)*OK,[0, 3, 3, 3, 3, 3, 3, 0, 0, 0, -5, 12, -12, -12, 12, -12, 12, -6, -6, -17, -17, 4, -4, 11, 11, -9, -9, 3]);
ECSearch("32.4-e",(34*w - 210)*OK,[-3, 0, -3, -6, 3, 6, -9, 0, 0, 0, 4, 12, 6, -9, 6, 6, 3, -3, 9, -8, -8, -14, -13, 2, 2, -9, -9, -15]);
ECSearch("32.4-f",(34*w - 210)*OK,[3, 0, 3, -6, 3, -6, 9, 0, 0, 0, 4, 12, 6, 9, -6, 6, 3, 3, -9, -8, -8, -14, -13, 2, 2, 9, 9, -15]);
ECSearch("32.4-g",(34*w - 210)*OK,[0, -2, -2, -2, -2, -2, -2, 0, 0, 0, -10, -8, 8, 8, -8, 8, -8, 14, 14, -2, -2, -16, 16, 6, 6, 6, 6, -22]);
ECSearch("32.4-h",(34*w - 210)*OK,[-3, -4, -1, 4, -5, 8, 5, 0, -6, -6, -10, -8, 8, -5, 8, -10, 13, -5, -5, -2, 16, 2, 1, 6, -6, -3, -15, 5]);
ECSearch("32.4-i",(34*w - 210)*OK,[3, 4, 1, 4, -5, -8, -5, 0, -6, -6, -10, -8, 8, 5, -8, -10, 13, 5, 5, -2, 16, 2, 1, 6, -6, 3, 15, 5]);
ECSearch("32.4-j",(34*w - 210)*OK,[0, 2, 2, -2, -2, 2, 2, 0, 0, 0, -10, -8, 8, -8, 8, 8, -8, -14, -14, -2, -2, -16, 16, 6, 6, -6, -6, -22]);
ECSearch("32.4-k",(34*w - 210)*OK,[1, 0, -1, 0, -5, -8, 5, 8, 2, -6, 6, -8, -4, -1, -4, -10, 1, -5, 3, 14, -4, 6, -3, 6, 2, 13, 9, 5]);
ECSearch("32.4-l",(34*w - 210)*OK,[-1, 0, 1, 0, -5, 8, -5, 8, 2, -6, 6, -8, -4, 1, 4, -10, 1, 5, -3, 14, -4, 6, -3, 6, 2, -13, -9, 5]);
ECSearch("32.6-a",(w - 1)*OK,[0, 1, -1, 4, -5, -2, 5, 6, 4, 0, 0, 12, -2, -4, 6, -13, -11, 14, 11, -9, 8, 8, 13, -10, 10, -2, 5, -19, 1]);
ECSearch("32.6-b",(w - 1)*OK,[0, -1, 1, -4, -5, -2, -5, -6, 4, 0, 0, 12, -2, -4, -6, 13, -11, 14, -11, 9, 8, 8, 13, -10, 10, -2, -5, 19, 1]);
ECSearch("36.1-a",(6)*OK,[-3, 3, 5, 5, 3, -3, 8, 8, 8, 11, -4, -4, -12, 12, -4, -4, -6, 6, -1, -1, -4, -4, -13, -13, 15, -15, -19]);
ECSearch("36.1-b",(6)*OK,[-3, 1, 1, -3, -3, -7, 2, -10, 8, -9, 6, -14, 14, 2, -4, 12, -10, 6, 3, -5, -18, 2, 5, -15, 3, 3, -13]);
ECSearch("36.1-c",(6)*OK,[-1, 3, -3, 1, 7, 3, -10, 2, 8, -9, -14, 6, -2, -14, 12, -4, -6, 10, -5, 3, 2, -18, -15, 5, -3, -3, -13]);
ECSearch("36.1-d",(6)*OK,[1, -3, -3, 1, -7, -3, -10, 2, 8, -9, -14, 6, 2, 14, 12, -4, 6, -10, -5, 3, 2, -18, -15, 5, 3, 3, -13]);
ECSearch("36.1-e",(6)*OK,[3, -1, 1, -3, 3, 7, 2, -10, 8, -9, 6, -14, -14, -2, -4, 12, 10, -6, 3, -5, -18, 2, 5, -15, -3, -3, -13]);
ECSearch("36.1-f",(6)*OK,[3, -3, 5, 5, -3, 3, 8, 8, 8, 11, -4, -4, 12, -12, -4, -4, 6, -6, -1, -1, -4, -4, -13, -13, -15, 15, -19]);
ECSearch("36.2-a",(-33*w + 204)*OK,[0, 0, 0, -7, 5, 0, 0, -7, 11, 8, 2, 5, 11, 0, 0, -4, -4, 0, 0, 5, -19, -7, -13, -19, 17, 0, 0, 11]);
ECSearch("36.2-b",(-33*w + 204)*OK,[2, -2, -2, 5, 1, -6, 2, 5, 7, 0, -10, 13, -5, 0, 16, -8, 0, -6, -6, 13, 5, 9, -5, 17, -11, 8, -16, 3]);
ECSearch("36.2-c",(-33*w + 204)*OK,[-2, 2, 2, 5, 1, 6, -2, 5, 7, 0, -10, 13, -5, 0, -16, -8, 0, 6, 6, 13, 5, 9, -5, 17, -11, -8, 16, 3]);
ECSearch("36.3-a",(33*w + 171)*OK,[0, 0, 0, 5, -7, 0, 0, 11, -7, 8, 2, 11, 5, 0, 0, -4, -4, 0, 0, -19, 5, -13, -7, 17, -19, 0, 0, 11]);
ECSearch("36.3-b",(33*w + 171)*OK,[2, -2, -2, 1, 5, 2, -6, 7, 5, 0, -10, -5, 13, 16, 0, 0, -8, -6, -6, 5, 13, -5, 9, -11, 17, -16, 8, 3]);
ECSearch("36.3-c",(33*w + 171)*OK,[-2, 2, 2, 1, 5, -2, 6, 7, 5, 0, -10, -5, 13, -16, 0, 0, -8, 6, 6, 5, 13, -5, 9, -11, 17, 16, -8, 3]);
ECSearch("39.1-a",(-8*w - 41)*OK,[1, 1, 0, 4, -2, -4, -2, -4, -6, -10, -6, -10, -8, 12, 0, 12, -16, -18, 10, -2, -10, 2, 10, 14, -10, 6, -4, -10]);
ECSearch("39.1-b",(-8*w - 41)*OK,[-1, -1, 0, -4, -2, 4, 2, -4, -6, -10, -6, -10, -8, -12, 0, 12, -16, 18, -10, -2, -10, 2, 10, 14, -10, -6, 4, -10]);
ECSearch("39.2-a",(-8*w + 49)*OK,[1, 1, 4, 0, -2, -2, -4, -6, -4, -10, -6, -8, -10, 0, 12, -16, 12, 10, -18, -10, -2, 10, 2, -10, 14, -4, 6, -10]);
ECSearch("39.2-b",(-8*w + 49)*OK,[-1, -1, -4, 0, -2, 2, 4, -6, -4, -10, -6, -8, -10, 0, -12, -16, 12, -10, 18, -10, -2, 10, 2, -10, 14, 4, -6, -10]);
ECSearch("40.1-a",(78*w - 482)*OK,[1, 3, -4, -1, -6, 3, -4, 2, 8, 8, 2, 14, 15, -6, -4, 11, -15, -15, -10, -16, -4, -19, -16, -10, -3, -9, -13]);
ECSearch("40.1-b",(78*w - 482)*OK,[-1, -3, -4, -1, 6, -3, -4, 2, 8, 8, 2, 14, -15, 6, -4, 11, 15, 15, -10, -16, -4, -19, -16, -10, 3, 9, -13]);
ECSearch("40.4-a",(78*w + 404)*OK,[1, 3, -1, -4, 3, -6, 2, -4, 8, 8, 14, 2, -6, 15, 11, -4, -15, -15, -16, -10, -19, -4, -10, -16, -9, -3, -13]);
ECSearch("40.4-b",(78*w + 404)*OK,[-1, -3, -1, -4, -3, 6, 2, -4, 8, 8, 14, 2, 6, -15, 11, -4, 15, 15, -16, -10, -19, -4, -10, -16, 9, 3, -13]);
ECSearch("43.1-a",(106*w + 549)*OK,[-2, -2, -2, -4, -4, -5, -5, -6, -6, -1, -1, -14, -3, -3, 2, 2, -8, -8, -4, -4, 7, 7, 1, 1, 7, 7, -20, -20, -13]);
ECSearch("43.1-b",(106*w + 549)*OK,[1, -1, 0, 1, -1, 5, 5, -9, 9, 4, 4, -5, -12, -12, -2, 2, -10, -10, 2, -2, -11, -11, -8, -8, 7, 7, -17, 17, 13]);
ECSearch("43.1-c",(106*w + 549)*OK,[-1, 1, 0, -1, 1, 5, 5, 9, -9, 4, 4, -5, -12, -12, 2, -2, -10, -10, -2, 2, -11, -11, -8, -8, 7, 7, 17, -17, 13]);
ECSearch("43.1-d",(106*w + 549)*OK,[2, 2, 2, 4, 4, -5, -5, 6, 6, -1, -1, -14, -3, -3, -2, -2, -8, -8, 4, 4, 7, 7, 1, 1, 7, 7, 20, 20, -13]);
ECSearch("45.1-a",(-18*w - 93)*OK,[2, 0, 2, 5, 3, 0, 8, 1, 5, 4, 6, -9, -15, -6, -12, 16, 4, 2, 12, 17, 3, -17, 13, -9, -13, -6, 0, -5]);
ECSearch("45.1-b",(-18*w - 93)*OK,[-2, 0, -2, 5, 3, 0, -8, 1, 5, 4, 6, -9, -15, 6, 12, 16, 4, -2, -12, 17, 3, -17, 13, -9, -13, 6, 0, -5]);
ECSearch("45.2-a",(-18*w + 111)*OK,[0, 2, 2, 3, 5, 8, 0, 5, 1, 4, 6, -15, -9, -12, -6, 4, 16, 12, 2, 3, 17, 13, -17, -13, -9, 0, -6, -5]);
ECSearch("45.2-b",(-18*w + 111)*OK,[0, -2, -2, 3, 5, -8, 0, 5, 1, 4, 6, -15, -9, 12, 6, 4, 16, -12, -2, 3, 17, 13, -17, -13, -9, 0, 6, -5]);
ECSearch("48.1-a",(-112*w + 692)*OK,[3, -1, 5, -3, 3, -1, -2, -2, 4, -9, 0, 8, 2, 10, -2, 6, 10, -6, 3, -5, 0, 8, 5, -3, -3, 9, -5]);
ECSearch("48.1-b",(-112*w + 692)*OK,[1, -3, -3, 5, 1, -3, -2, -2, 4, -9, 8, 0, -10, -2, 6, -2, 6, -10, -5, 3, 8, 0, -3, 5, -9, 3, -5]);
ECSearch("48.1-c",(-112*w + 692)*OK,[-1, 3, -3, 5, -1, 3, -2, -2, 4, -9, 8, 0, 10, 2, 6, -2, -6, 10, -5, 3, 8, 0, -3, 5, 9, -3, -5]);
ECSearch("48.1-d",(-112*w + 692)*OK,[-3, 1, 5, -3, -3, 1, -2, -2, 4, -9, 0, 8, -2, -10, -2, 6, -10, 6, 3, -5, 0, 8, 5, -3, 3, -9, -5]);
ECSearch("48.4-a",(-13*w + 80)*OK,[-1, 1, 3, -1, -1, -5, 1, -2, -6, 8, 3, 2, 14, 6, 6, 4, -12, 10, 6, 7, 15, 14, 2, -7, -7, 9, 11, 1]);
ECSearch("48.4-b",(-13*w + 80)*OK,[1, 2, 0, 2, 2, -4, -10, -2, 6, -10, 6, 14, 14, 0, 12, -14, -6, -4, -6, -2, -6, 8, -4, 14, 2, -12, 10, -2]);
ECSearch("48.4-c",(-13*w + 80)*OK,[-1, -2, 0, 2, 2, 4, 10, -2, 6, -10, 6, 14, 14, 0, -12, -14, -6, 4, 6, -2, -6, 8, -4, 14, 2, 12, -10, -2]);
ECSearch("48.4-d",(-13*w + 80)*OK,[1, -1, -3, -1, -1, 5, -1, -2, -6, 8, 3, 2, 14, -6, -6, 4, -12, -10, -6, 7, 15, 14, 2, -7, -7, -9, -11, 1]);
ECSearch("48.5-a",(-13*w - 67)*OK,[-1, 3, 1, -1, -1, 1, -5, -6, -2, 8, 3, 14, 2, 6, 6, -12, 4, 6, 10, 15, 7, 2, 14, -7, -7, 11, 9, 1]);
ECSearch("48.5-b",(-13*w - 67)*OK,[1, 0, 2, 2, 2, -10, -4, 6, -2, -10, 6, 14, 14, 12, 0, -6, -14, -6, -4, -6, -2, -4, 8, 2, 14, 10, -12, -2]);
ECSearch("48.5-c",(-13*w - 67)*OK,[-1, 0, -2, 2, 2, 10, 4, 6, -2, -10, 6, 14, 14, -12, 0, -6, -14, 6, 4, -6, -2, -4, 8, 2, 14, -10, 12, -2]);
ECSearch("48.5-d",(-13*w - 67)*OK,[1, -3, -1, -1, -1, -1, 5, -6, -2, 8, 3, 14, 2, -6, -6, -12, 4, -6, -10, 15, 7, 2, 14, -7, -7, -11, -9, 1]);
ECSearch("50.1-a",(-5*w + 30)*OK,[-2, 1, -5, 0, 1, 6, -3, -8, 11, -12, -5, 5, 10, -15, -2, 8, 14, -6, -7, -7, -11, -6, -2, -7, 18, -2, -2]);
ECSearch("50.1-b",(-5*w + 30)*OK,[0, 1, -1, -4, -3, 0, 5, -4, -1, -4, -13, -7, 0, -3, 8, 8, 6, -6, -19, 5, -7, 20, -16, 5, 18, -18, -10]);
ECSearch("50.1-c",(-5*w + 30)*OK,[2, -1, -5, 0, -1, -6, -3, -8, 11, -12, -5, 5, -10, 15, -2, 8, -14, 6, -7, -7, -11, -6, -2, -7, -18, 2, -2]);
ECSearch("50.1-d",(-5*w + 30)*OK,[0, -1, -1, -4, 3, 0, 5, -4, -1, -4, -13, -7, 0, 3, 8, 8, -6, 6, -19, 5, -7, 20, -16, 5, -18, 18, -10]);
ECSearch("50.1-e",(-5*w + 30)*OK,[0, 1, 5, -4, 3, 0, -7, -4, 5, 8, 5, -1, -12, 15, -4, -16, -18, 6, -13, -1, 11, -4, 20, -7, -6, 6, 14]);
ECSearch("50.1-f",(-5*w + 30)*OK,[0, -1, 5, -4, -3, 0, -7, -4, 5, 8, 5, -1, 12, -15, -4, -16, 18, -6, -13, -1, 11, -4, 20, -7, 6, -6, 14]);
ECSearch("50.3-a",(3*w - 17)*OK,[0, 3, 0, -3, -6, 9, -6, 0, 0, 0, 4, 6, 12, -6, -9, -3, 6, -9, 3, -8, 8, 13, 14, -2, -2, -9, 9, 15]);
ECSearch("50.3-b",(3*w - 17)*OK,[2, 2, 1, 6, 4, 3, 8, -2, -4, -10, 4, -7, 12, 15, -9, 11, 5, -2, -3, -8, 10, 3, -16, -8, -19, -12, -11, 8]);
ECSearch("50.3-c",(3*w - 17)*OK,[0, 2, 0, 2, -1, 6, 6, 5, 5, 5, -1, -4, -13, 6, -6, 17, 11, -6, 12, 17, -7, -7, -1, -7, -7, -6, 6, 5]);
ECSearch("50.3-d",(3*w - 17)*OK,[0, 0, 3, -6, 0, -9, -6, 0, -6, -6, 4, -9, 12, -15, 3, 3, 3, 6, -15, 10, -10, -5, -4, 16, 7, 12, 9, -12]);
ECSearch("50.3-e",(3*w - 17)*OK,[1, 0, 2, 0, 2, 0, 2, -10, -8, 10, -2, 4, 12, -6, 12, 4, 16, -4, 12, 10, 10, 0, 14, 16, -10, 6, 16, 4]);
ECSearch("50.3-f",(3*w - 17)*OK,[-1, 0, -2, 0, 2, 0, -2, -10, -8, 10, -2, 4, 12, 6, -12, 4, 16, 4, -12, 10, 10, 0, 14, 16, -10, -6, -16, 4]);
ECSearch("50.3-g",(3*w - 17)*OK,[0, 0, -3, -6, 0, 9, 6, 0, -6, -6, 4, -9, 12, 15, -3, 3, 3, -6, 15, 10, -10, -5, -4, 16, 7, -12, -9, -12]);
ECSearch("50.3-h",(3*w - 17)*OK,[0, -2, 0, 2, -1, -6, -6, 5, 5, 5, -1, -4, -13, -6, 6, 17, 11, 6, -12, 17, -7, -7, -1, -7, -7, 6, -6, 5]);
ECSearch("50.3-i",(3*w - 17)*OK,[-2, -2, -1, 6, 4, -3, -8, -2, -4, -10, 4, -7, 12, -15, 9, 11, 5, 2, 3, -8, 10, 3, -16, -8, -19, 12, 11, 8]);
ECSearch("50.3-j",(3*w - 17)*OK,[0, -3, 0, -3, -6, -9, 6, 0, 0, 0, 4, 6, 12, 6, 9, -3, 6, 9, -3, -8, 8, 13, 14, -2, -2, 9, -9, 15]);
ECSearch("50.4-a",(73*w - 451)*OK,[0, -3, -3, 3, 6, 9, -6, 0, 0, 0, 4, -6, -12, -6, -9, -3, 6, -9, 3, 8, -8, -13, -14, -2, -2, 9, -9, 15]);
ECSearch("50.4-b",(73*w - 451)*OK,[0, -2, -2, 3, 1, -4, -4, 5, 0, -5, 9, 4, 13, -4, 4, -13, 11, 14, -18, -17, 2, -3, 1, 13, -2, 16, -16, 10]);
ECSearch("50.4-c",(73*w - 451)*OK,[2, 1, -1, 3, -4, 1, -6, -10, 4, -4, 4, -2, 10, 2, 3, -7, 16, -1, -1, 8, 14, -15, -16, 2, -20, -15, -11, 5]);
ECSearch("50.4-d",(73*w - 451)*OK,[-2, -1, 1, 3, -4, -1, 6, -10, 4, -4, 4, -2, 10, -2, -3, -7, 16, 1, 1, 8, 14, -15, -16, 2, -20, 15, 11, 5]);
ECSearch("50.4-e",(73*w - 451)*OK,[0, 2, 2, 3, 1, 4, 4, 5, 0, -5, 9, 4, 13, 4, -4, -13, 11, -14, 18, -17, 2, -3, 1, 13, -2, -16, 16, 10]);
ECSearch("50.4-f",(73*w - 451)*OK,[0, 3, 3, 3, 6, -9, 6, 0, 0, 0, 4, -6, -12, 6, 9, -3, 6, 9, -3, 8, -8, -13, -14, -2, -2, -9, 9, 15]);
ECSearch("50.2-a",(5*w + 25)*OK,[-2, 1, 0, -5, 6, 1, -8, -3, 11, -12, 5, -5, -15, 10, 8, -2, -6, 14, -7, -7, -6, -11, -7, -2, -2, 18, -2]);
ECSearch("50.2-b",(5*w + 25)*OK,[0, 1, -4, -1, 0, -3, -4, 5, -1, -4, -7, -13, -3, 0, 8, 8, -6, 6, 5, -19, 20, -7, 5, -16, -18, 18, -10]);
ECSearch("50.2-c",(5*w + 25)*OK,[2, -1, 0, -5, -6, -1, -8, -3, 11, -12, 5, -5, 15, -10, 8, -2, 6, -14, -7, -7, -6, -11, -7, -2, 2, -18, -2]);
ECSearch("50.2-d",(5*w + 25)*OK,[0, -1, -4, -1, 0, 3, -4, 5, -1, -4, -7, -13, 3, 0, 8, 8, 6, -6, 5, -19, 20, -7, 5, -16, 18, -18, -10]);
ECSearch("50.2-e",(5*w + 25)*OK,[0, 1, -4, 5, 0, 3, -4, -7, 5, 8, -1, 5, 15, -12, -16, -4, 6, -18, -1, -13, -4, 11, -7, 20, 6, -6, 14]);
ECSearch("50.2-f",(5*w + 25)*OK,[0, -1, -4, 5, 0, -3, -4, -7, 5, 8, -1, 5, -15, 12, -16, -4, -6, 18, -1, -13, -4, 11, -7, 20, -6, 6, 14]);
ECSearch("50.6-a",(-3*w - 14)*OK,[0, 3, 0, -6, -3, -6, 9, 0, 0, 0, 4, 12, 6, -9, -6, 6, -3, 3, -9, 8, -8, 14, 13, -2, -2, 9, -9, 15]);
ECSearch("50.6-b",(-3*w - 14)*OK,[2, 2, 1, 4, 6, 8, 3, -4, -2, -10, 4, 12, -7, -9, 15, 5, 11, -3, -2, 10, -8, -16, 3, -19, -8, -11, -12, 8]);
ECSearch("50.6-c",(-3*w - 14)*OK,[0, 2, 0, -1, 2, 6, 6, 5, 5, 5, -1, -13, -4, -6, 6, 11, 17, 12, -6, -7, 17, -1, -7, -7, -7, 6, -6, 5]);
ECSearch("50.6-d",(-3*w - 14)*OK,[0, 0, 3, 0, -6, -6, -9, -6, 0, -6, 4, 12, -9, 3, -15, 3, 3, -15, 6, -10, 10, -4, -5, 7, 16, 9, 12, -12]);
ECSearch("50.6-e",(-3*w - 14)*OK,[1, 0, 2, 2, 0, 2, 0, -8, -10, 10, -2, 12, 4, 12, -6, 16, 4, 12, -4, 10, 10, 14, 0, -10, 16, 16, 6, 4]);
ECSearch("50.6-f",(-3*w - 14)*OK,[-1, 0, -2, 2, 0, -2, 0, -8, -10, 10, -2, 12, 4, -12, 6, 16, 4, -12, 4, 10, 10, 14, 0, -10, 16, -16, -6, 4]);
ECSearch("50.6-g",(-3*w - 14)*OK,[0, 0, -3, 0, -6, 6, 9, -6, 0, -6, 4, 12, -9, -3, 15, 3, 3, 15, -6, -10, 10, -4, -5, 7, 16, -9, -12, -12]);
ECSearch("50.6-h",(-3*w - 14)*OK,[0, -2, 0, -1, 2, -6, -6, 5, 5, 5, -1, -13, -4, 6, -6, 11, 17, -12, 6, -7, 17, -1, -7, -7, -7, -6, 6, 5]);
ECSearch("50.6-i",(-3*w - 14)*OK,[-2, -2, -1, 4, 6, -8, -3, -4, -2, -10, 4, 12, -7, 9, -15, 5, 11, 3, 2, 10, -8, -16, 3, -19, -8, 11, 12, 8]);
ECSearch("50.6-j",(-3*w - 14)*OK,[0, -3, 0, -6, -3, 6, -9, 0, 0, 0, 4, 12, 6, 9, 6, 6, -3, -3, 9, 8, -8, 14, 13, -2, -2, -9, 9, 15]);
ECSearch("50.5-a",(-73*w - 378)*OK,[0, -3, -3, 6, 3, -6, 9, 0, 0, 0, 4, -12, -6, -9, -6, 6, -3, 3, -9, -8, 8, -14, -13, -2, -2, -9, 9, 15]);
ECSearch("50.5-b",(-73*w - 378)*OK,[0, -2, -2, 1, 3, -4, -4, 0, 5, -5, 9, 13, 4, 4, -4, 11, -13, -18, 14, 2, -17, 1, -3, -2, 13, -16, 16, 10]);
ECSearch("50.5-c",(-73*w - 378)*OK,[2, 1, -1, -4, 3, -6, 1, 4, -10, -4, 4, 10, -2, 3, 2, 16, -7, -1, -1, 14, 8, -16, -15, -20, 2, -11, -15, 5]);
ECSearch("50.5-d",(-73*w - 378)*OK,[-2, -1, 1, -4, 3, 6, -1, 4, -10, -4, 4, 10, -2, -3, -2, 16, -7, 1, 1, 14, 8, -16, -15, -20, 2, 11, 15, 5]);
ECSearch("50.5-e",(-73*w - 378)*OK,[0, 2, 2, 1, 3, 4, 4, 0, 5, -5, 9, 13, 4, -4, 4, 11, -13, 18, -14, 2, -17, 1, -3, -2, 13, 16, -16, 10]);
ECSearch("50.5-f",(-73*w - 378)*OK,[0, 3, 3, 6, 3, 6, -9, 0, 0, 0, 4, -12, -6, 9, 6, 6, -3, -3, 9, -8, 8, -14, -13, -2, -2, 9, -9, 15]);
ECSearch("52.1-a",(-8*w - 42)*OK,[3, 0, 3, -2, 0, 6, -2, 1, -8, -10, 1, 4, -9, -6, -5, 16, -6, 15, -10, -13, -4, -1, -4, -7, -3, 18, -14]);
ECSearch("52.1-b",(-8*w - 42)*OK,[0, 0, 3, 1, -6, -6, -5, 10, -8, -4, -11, -14, -15, 0, -14, 10, -15, 18, 8, 11, 14, -16, 5, -10, 0, 0, 16]);
ECSearch("52.1-c",(-8*w - 42)*OK,[0, 0, -3, 1, 6, 6, -5, 10, -8, -4, -11, -14, 15, 0, -14, 10, 15, -18, 8, 11, 14, -16, 5, -10, 0, 0, 16]);
ECSearch("52.1-d",(-8*w - 42)*OK,[-3, 0, -3, -2, 0, -6, -2, 1, -8, -10, 1, 4, 9, 6, -5, 16, 6, -15, -10, -13, -4, -1, -4, -7, 3, -18, -14]);
ECSearch("52.4-a",(3*w + 17)*OK,[1, -1, 1, 2, -4, 4, 0, 5, -2, 6, 8, 14, 5, -2, -9, 0, -1, -15, 0, 5, 10, 1, -12, 1, -10, 10, 11, -18]);
ECSearch("52.4-b",(3*w + 17)*OK,[1, 2, -2, 2, 2, 10, -6, -10, 4, 0, 2, -4, 2, -8, -6, 6, 14, -6, -6, 2, -14, -2, -6, -14, 2, -14, 14, 18]);
ECSearch("52.4-c",(3*w + 17)*OK,[-1, 1, -1, -2, -4, -4, 0, 5, -2, 6, 8, 14, 5, 2, 9, 0, -1, 15, 0, 5, 10, 1, -12, 1, -10, -10, -11, -18]);
ECSearch("52.4-d",(3*w + 17)*OK,[2, 1, 2, -2, 2, -1, -3, 2, 7, -9, 2, -4, -10, 8, -3, 12, -4, -12, -15, -10, -14, 16, 18, 1, -16, 14, -8, -18]);
ECSearch("52.4-e",(3*w + 17)*OK,[-2, -1, -2, 2, 2, 1, 3, 2, 7, -9, 2, -4, -10, -8, 3, 12, -4, 12, 15, -10, -14, 16, 18, 1, -16, -14, 8, -18]);
ECSearch("52.4-f",(3*w + 17)*OK,[-1, -2, 2, -2, 2, -10, 6, -10, 4, 0, 2, -4, 2, 8, 6, 6, 14, 6, 6, 2, -14, -2, -6, -14, 2, 14, -14, 18]);
ECSearch("52.2-a",(-8*w + 50)*OK,[3, 3, 0, -2, 6, 0, 1, -2, -8, -10, 4, 1, -6, -9, 16, -5, 15, -6, -13, -10, -1, -4, -7, -4, 18, -3, -14]);
ECSearch("52.2-b",(-8*w + 50)*OK,[0, 3, 0, 1, -6, -6, 10, -5, -8, -4, -14, -11, 0, -15, 10, -14, 18, -15, 11, 8, -16, 14, -10, 5, 0, 0, 16]);
ECSearch("52.2-c",(-8*w + 50)*OK,[0, -3, 0, 1, 6, 6, 10, -5, -8, -4, -14, -11, 0, 15, 10, -14, -18, 15, 11, 8, -16, 14, -10, 5, 0, 0, 16]);
ECSearch("52.2-d",(-8*w + 50)*OK,[-3, -3, 0, -2, -6, 0, 1, -2, -8, -10, 4, 1, 6, 9, 16, -5, -15, 6, -13, -10, -1, -4, -7, -4, -18, 3, -14]);
ECSearch("52.5-a",(-3*w + 20)*OK,[1, -1, 2, 1, -4, 0, 4, -2, 5, 6, 8, 5, 14, -9, -2, -1, 0, 0, -15, 10, 5, -12, 1, -10, 1, 11, 10, -18]);
ECSearch("52.5-b",(-3*w + 20)*OK,[1, 2, 2, -2, 2, -6, 10, 4, -10, 0, 2, 2, -4, -6, -8, 14, 6, -6, -6, -14, 2, -6, -2, 2, -14, 14, -14, 18]);
ECSearch("52.5-c",(-3*w + 20)*OK,[-1, 1, -2, -1, -4, 0, -4, -2, 5, 6, 8, 5, 14, 9, 2, -1, 0, 0, 15, 10, 5, -12, 1, -10, 1, -11, -10, -18]);
ECSearch("52.5-d",(-3*w + 20)*OK,[2, 1, -2, 2, 2, -3, -1, 7, 2, -9, 2, -10, -4, -3, 8, -4, 12, -15, -12, -14, -10, 18, 16, -16, 1, -8, 14, -18]);
ECSearch("52.5-e",(-3*w + 20)*OK,[-2, -1, 2, -2, 2, 3, 1, 7, 2, -9, 2, -10, -4, 3, -8, -4, 12, 15, 12, -14, -10, 18, 16, -16, 1, 8, -14, -18]);
ECSearch("52.5-f",(-3*w + 20)*OK,[-1, -2, -2, 2, 2, 6, -10, 4, -10, 0, 2, 2, -4, 6, 8, 14, 6, 6, 6, -14, 2, -6, -2, 2, -14, -14, 14, 18]);
ECSearch("54.1-a",(15*w - 93)*OK,[1, -4, -4, -2, 5, 1, 9, 4, -7, -6, 8, 4, -2, 2, 12, 0, 10, -15, 6, 14, -14, 10, 0, -5, 14, -2, 4, -12]);
ECSearch("54.1-b",(15*w - 93)*OK,[-1, -4, 4, 2, -5, -1, 9, -4, 7, 6, 8, -4, 2, 2, -12, 0, -10, 15, 6, 14, -14, 10, 0, -5, 14, 2, 4, 12]);
ECSearch("54.1-c",(15*w - 93)*OK,[1, 4, -4, 2, -5, 1, -9, -4, 7, 6, 8, -4, 2, -2, 12, 0, -10, -15, -6, 14, -14, 10, 0, -5, 14, -2, -4, 12]);
ECSearch("54.1-d",(15*w - 93)*OK,[-1, 4, 4, -2, 5, -1, -9, 4, -7, -6, 8, 4, -2, -2, -12, 0, 10, 15, -6, 14, -14, 10, 0, -5, 14, 2, -4, -12]);
ECSearch("54.2-a",(15*w + 78)*OK,[1, -4, -4, 5, -2, 9, 1, -7, 4, -6, 8, -2, 4, 12, 2, 10, 0, 6, -15, -14, 14, 0, 10, 14, -5, 4, -2, -12]);
ECSearch("54.2-b",(15*w + 78)*OK,[-1, 4, -4, -5, 2, 9, -1, 7, -4, 6, 8, 2, -4, -12, 2, -10, 0, 6, 15, -14, 14, 0, 10, 14, -5, 4, 2, 12]);
ECSearch("54.2-c",(15*w + 78)*OK,[1, -4, 4, -5, 2, -9, 1, 7, -4, 6, 8, 2, -4, 12, -2, -10, 0, -6, -15, -14, 14, 0, 10, 14, -5, -4, -2, 12]);
ECSearch("54.2-d",(15*w + 78)*OK,[-1, 4, 4, 5, -2, -9, -1, -7, 4, -6, 8, -2, 4, -12, -2, 10, 0, -6, 15, -14, 14, 0, 10, 14, -5, -4, 2, -12]);
