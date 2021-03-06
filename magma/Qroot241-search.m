print "Field 2.2.241.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 60);
OK := Integers(K);
Plist := [];
Append(~Plist,(-393*w - 2854)*OK);
Append(~Plist,(393*w - 3247)*OK);
Append(~Plist,(4*w - 33)*OK);
Append(~Plist,(-4*w - 29)*OK);
Append(~Plist,(42*w + 305)*OK);
Append(~Plist,(-42*w + 347)*OK);
Append(~Plist,(1820*w + 13217)*OK);
Append(~Plist,(1820*w - 15037)*OK);
Append(~Plist,(80*w + 581)*OK);
Append(~Plist,(-80*w + 661)*OK);
Append(~Plist,(-34*w + 281)*OK);
Append(~Plist,(34*w + 247)*OK);
Append(~Plist,(7)*OK);
Append(~Plist,(6*w + 43)*OK);
Append(~Plist,(-6*w + 49)*OK);
Append(~Plist,(-10*w - 73)*OK);
Append(~Plist,(10*w - 83)*OK);
Append(~Plist,(4178*w + 30341)*OK);
Append(~Plist,(4178*w - 34519)*OK);
Append(~Plist,(332*w - 2743)*OK);
Append(~Plist,(332*w + 2411)*OK);
Append(~Plist,(-18*w - 131)*OK);
Append(~Plist,(18*w - 149)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(2*w + 11)*OK);
Append(~Plist,(828*w + 6013)*OK);
Append(~Plist,(-828*w + 6841)*OK);
Append(~Plist,(8*w - 67)*OK);
Append(~Plist,(8*w + 59)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-1530*w + 12641)*OK);
Append(~Plist,(1530*w + 11111)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-58*w + 479)*OK);
Append(~Plist,(58*w + 421)*OK);
Append(~Plist,(286*w + 2077)*OK);
Append(~Plist,(-286*w + 2363)*OK);
Append(~Plist,(-7032*w - 51067)*OK);
Append(~Plist,(7032*w - 58099)*OK);
Append(~Plist,(-172*w - 1249)*OK);
Append(~Plist,(172*w - 1421)*OK);
Append(~Plist,(-2896*w + 23927)*OK);
Append(~Plist,(-2896*w - 21031)*OK);
Append(~Plist,(-660*w - 4793)*OK);
Append(~Plist,(-660*w + 5453)*OK);
Append(~Plist,(6*w - 47)*OK);
Append(~Plist,(-6*w - 41)*OK);
Append(~Plist,(96*w - 793)*OK);
Append(~Plist,(-96*w - 697)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(950*w + 6899)*OK);
Append(~Plist,(-950*w + 7849)*OK);
Append(~Plist,(-10962*w - 79607)*OK);
Append(~Plist,(13816*w + 100333)*OK);
Append(~Plist,(-4674*w - 33943)*OK);
Append(~Plist,(4674*w - 38617)*OK);
Append(~Plist,(-156*w - 1133)*OK);
Append(~Plist,(-156*w + 1289)*OK);
Append(~Plist,(-56*w + 463)*OK);
Append(~Plist,(56*w + 407)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(-48*w - 349)*OK);
Append(~Plist,(48*w - 397)*OK);
Append(~Plist,(-6*w - 47)*OK);
Append(~Plist,(-6*w + 53)*OK);
Append(~Plist,(576*w - 4759)*OK);
Append(~Plist,(-576*w - 4183)*OK);
Append(~Plist,(2026*w - 16739)*OK);
Append(~Plist,(2026*w + 14713)*OK);
Append(~Plist,(12*w - 101)*OK);
Append(~Plist,(-12*w - 89)*OK);
Append(~Plist,(2400*w - 19829)*OK);
Append(~Plist,(-2400*w - 17429)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(30*w + 217)*OK);
Append(~Plist,(-30*w + 247)*OK);
Append(~Plist,(324*w - 2677)*OK);
Append(~Plist,(-324*w - 2353)*OK);
Append(~Plist,(408*w + 2963)*OK);
Append(~Plist,(-408*w + 3371)*OK);
Append(~Plist,(218*w - 1801)*OK);
Append(~Plist,(218*w + 1583)*OK);
Append(~Plist,(-194*w - 1409)*OK);
Append(~Plist,(-194*w + 1603)*OK);
Append(~Plist,(24*w + 173)*OK);
Append(~Plist,(-24*w + 197)*OK);
Append(~Plist,(1446*w + 10501)*OK);
Append(~Plist,(-1446*w + 11947)*OK);
Append(~Plist,(180*w + 1307)*OK);
Append(~Plist,(-180*w + 1487)*OK);
Append(~Plist,(3186*w + 23137)*OK);
Append(~Plist,(-3186*w + 26323)*OK);
Append(~Plist,(-4*w + 23)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(1202*w - 9931)*OK);
Append(~Plist,(-1202*w - 8729)*OK);
Append(~Plist,(-4*w + 41)*OK);
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

ECSearch("3.1-a",(4*w - 33)*OK,[-1, -1, -2, 3, -3, -1, -7, 5, 11, -10, 8, -9, 5, -1, 4, -8, -1, 11, -6, 6, -14, 4, -6, -12, -19, 5, -10, 2, -9]);
ECSearch("3.2-a",(-4*w - 29)*OK,[-1, -1, -2, -3, 3, -7, -1, 11, 5, 8, -10, -9, -1, 5, -8, 4, 11, -1, 6, -6, 4, -14, -12, -6, 5, -19, 2, -10, 9]);
ECSearch("5.1-a",(42*w + 305)*OK,[-1, 2, 1, 1, 0, -4, 2, -10, 5, -1, -1, -3, -10, 2, -8, 7, 5, -7, 0, 0, -8, 13, -6, -18, 11, 2, 2, 8, 9]);
ECSearch("5.1-b",(42*w + 305)*OK,[1, 0, -3, 1, 4, -6, 10, 10, 1, -9, 3, 5, 2, -12, -10, 7, 1, -7, -2, -8, -10, 1, 8, -4, -13, 8, 10, 10, -3]);
ECSearch("5.1-c",(42*w + 305)*OK,[-1, -2, 1, -3, 0, 0, -6, 6, -3, -1, 3, 1, 6, 14, -4, 3, 1, -11, 4, -8, -4, -3, 14, 2, -13, -18, 2, 12, 13]);
ECSearch("5.2-a",(-42*w + 347)*OK,[2, -1, 1, 1, 0, 2, -4, 5, -10, -1, -1, -3, 2, -10, 7, -8, -7, 5, 0, 0, 13, -8, -18, -6, 2, 11, 8, 2, 6]);
ECSearch("5.2-b",(-42*w + 347)*OK,[0, 1, 1, -3, 4, 10, -6, 1, 10, 3, -9, 5, -12, 2, 7, -10, -7, 1, -8, -2, 1, -10, -4, 8, 8, -13, 10, 10, 4]);
ECSearch("5.2-c",(-42*w + 347)*OK,[-2, -1, -3, 1, 0, -6, 0, -3, 6, 3, -1, 1, 14, 6, 3, -4, -11, 1, -8, 4, -3, -4, 2, 14, -18, -13, 12, 2, 18]);
ECSearch("6.1-a",(-19*w - 138)*OK,[1, 2, 1, -1, 3, -3, -3, 7, 6, 0, 5, 5, -9, 4, -8, -7, 9, 6, 14, 14, 4, 6, 4, -7, 17, -6, -6, 17]);
ECSearch("6.2-a",(145*w - 1198)*OK,[-1, -2, -3, -1, 9, -5, -5, -7, 0, -2, -1, 3, -3, 0, -4, 7, -13, -2, 10, 4, 2, -12, 18, 9, 9, 10, -18, 13]);
ECSearch("6.4-a",(19*w - 157)*OK,[1, 2, -1, 1, -3, 3, 7, -3, 0, 6, 5, -9, 5, -8, 4, 9, -7, 14, 6, 4, 14, 4, 6, 17, -7, -6, -6, 11]);
ECSearch("6.3-a",(145*w + 1053)*OK,[-1, -2, -1, -3, -5, 9, -7, -5, -2, 0, -1, -3, 3, -4, 0, -13, 7, 10, -2, 2, 4, 18, -12, 9, 9, -18, 10, -1]);
ECSearch("8.1-a",(-786*w - 5708)*OK,[2, 2, -3, 3, 3, 9, 9, 9, -6, 12, -1, -9, 9, -6, -6, 7, 1, 16, -14, 4, 10, 0, 6, -5, -17, 12, -6, -15]);
ECSearch("8.2-a",(786*w - 6494)*OK,[2, 2, 3, -3, 9, 3, 9, 9, 12, -6, -1, 9, -9, -6, -6, 1, 7, -14, 16, 10, 4, 6, 0, -17, -5, -6, 12, -15]);
ECSearch("9.1-a",(3)*OK,[0, -2, 0, 2, 6, 4, 6, -6, 6, 4, 10, 2, -14, -10, -8, 5, -7, -15, -15, 1, 1, -14, 6, -7, 9, 18, -4, -10]);
ECSearch("9.1-b",(3)*OK,[-2, 0, 2, 0, 4, 6, -6, 6, 4, 6, 10, -14, 2, -8, -10, -7, 5, -15, -15, 1, 1, 6, -14, 9, -7, -4, 18, 12]);
ECSearch("9.2-a",(248*w + 1801)*OK,[1, -1, 2, -3, -3, -7, 1, 11, -5, 8, 10, -9, 1, 5, 8, 4, -11, 1, -6, 6, -4, 14, 12, -6, -5, 19, -2, -10, -9]);
ECSearch("9.3-a",(-248*w + 2049)*OK,[-1, 1, 2, -3, -3, 1, -7, -5, 11, 10, 8, -9, 5, 1, 4, 8, 1, -11, 6, -6, 14, -4, -6, 12, 19, -5, -10, -2, -9]);
ECSearch("10.1-a",(-23*w + 190)*OK,[1, 0, 0, 2, 6, 2, 10, 2, 0, -4, 10, -10, 2, -4, 12, -2, -2, -4, -4, 8, 4, -12, 12, 2, 2, 12, 4, 18]);
ECSearch("10.1-b",(-23*w + 190)*OK,[0, 1, 1, 0, -6, 6, -6, -3, -9, 3, 5, -6, -12, 6, 3, -7, 5, 14, -4, 14, 5, 12, -12, 11, -4, 6, -18, 9]);
ECSearch("10.1-c",(-23*w + 190)*OK,[-2, -3, -3, -4, 0, -10, -2, -7, -9, 11, 1, -10, -10, -4, -9, 1, 1, -4, -4, -4, 1, -6, -6, -13, 2, -18, -8, 9]);
ECSearch("10.4-a",(-23*w - 167)*OK,[1, 0, 0, 2, 2, 6, 2, 10, -4, 0, 10, 2, -10, 12, -4, -2, -2, -4, -4, 4, 8, 12, -12, 2, 2, 4, 12, 18]);
ECSearch("10.4-b",(-23*w - 167)*OK,[0, 1, 1, 0, 6, -6, -3, -6, 3, -9, 5, -12, -6, 3, 6, 5, -7, -4, 14, 5, 14, -12, 12, -4, 11, -18, 6, -12]);
ECSearch("10.4-c",(-23*w - 167)*OK,[-2, -3, -3, -4, -10, 0, -7, -2, 11, -9, 1, -10, -10, -9, -4, 1, 1, -4, -4, 1, -4, -6, -6, 2, -13, -8, -18, -6]);
ECSearch("12.1-a",(8*w - 66)*OK,[-2, -3, 3, -9, 9, -3, -9, -6, 0, 5, 9, 3, -12, 0, 5, 5, 2, 2, 2, -4, -6, -12, 17, -7, 6, -18, 9]);
ECSearch("12.1-b",(8*w - 66)*OK,[0, -2, 4, 0, 2, 2, -4, 0, 12, 2, 6, 6, 12, 0, -10, -6, 8, 2, -6, 0, -4, 6, 2, 14, 6, -20, 6]);
ECSearch("12.1-c",(8*w - 66)*OK,[0, -3, 1, -5, -9, -9, 3, -8, -4, -11, -1, 3, 0, -8, -7, 1, -4, -4, 12, -8, -8, 4, -1, -9, 0, -8, -7]);
ECSearch("12.1-d",(8*w - 66)*OK,[0, -2, 0, 0, -6, -2, 0, 4, -4, -6, -2, 10, -4, 12, -6, 10, -12, 14, 6, -16, 4, -14, 10, 14, 18, 12, 14]);
ECSearch("12.1-e",(8*w - 66)*OK,[-2, -1, 1, -9, 1, -11, 3, -10, 0, -5, -3, -9, 4, -8, -5, -1, 2, -10, 10, 12, -14, -4, 5, 13, 14, 2, 3]);
ECSearch("12.1-f",(8*w - 66)*OK,[3, 1, 1, 9, 2, 2, 2, -3, -3, -4, 0, 0, 9, -12, -10, -3, -4, -4, 9, -12, -7, 0, 2, 2, 6, 13, 18]);
ECSearch("12.1-g",(8*w - 66)*OK,[-1, 1, -3, 9, 2, 2, -2, -3, -7, 4, 0, -4, 1, 0, 6, -3, -8, 4, -7, -4, -7, 8, -18, -2, 10, -15, 2]);
ECSearch("12.1-h",(8*w - 66)*OK,[0, 3, -1, -5, 7, 7, 11, 0, 12, -13, -9, 11, -8, 0, 15, -1, -12, 12, 4, 0, 16, -4, 7, -1, 16, 0, -9]);
ECSearch("12.1-i",(8*w - 66)*OK,[1, 3, -3, 3, -6, 6, -6, 3, -3, -4, 0, -12, -3, 12, -10, -1, 8, 8, -1, -4, -3, 12, 2, -10, -6, -9, -6]);
ECSearch("12.3-a",(-61*w + 504)*OK,[0, 2, 0, 3, -6, 3, -6, -3, -6, 9, -1, 3, 6, 3, -12, -8, -8, 4, 4, -2, -14, -9, -12, -8, -8, -15, 12, 9]);
ECSearch("12.3-b",(-61*w + 504)*OK,[-2, 2, -2, -1, 0, 3, 0, 1, 12, -3, 11, -1, 6, -5, -8, 8, -6, -12, 2, 8, 4, 15, -8, 8, -10, -3, -12, -7]);
ECSearch("12.2-a",(-8*w - 58)*OK,[-2, 3, -3, 9, -9, -9, -3, 0, -6, 5, 3, 9, 0, -12, 5, 5, 2, 2, -4, 2, -12, -6, -7, 17, -18, 6, 3]);
ECSearch("12.2-b",(-8*w - 58)*OK,[0, 4, -2, 2, 0, -4, 2, 12, 0, 2, 6, 6, 0, 12, -6, -10, 2, 8, 0, -6, 6, -4, 14, 2, -20, 6, 20]);
ECSearch("12.2-c",(-8*w - 58)*OK,[0, 1, -3, -9, -5, 3, -9, -4, -8, -11, 3, -1, -8, 0, 1, -7, -4, -4, -8, 12, 4, -8, -9, -1, -8, 0, -3]);
ECSearch("12.2-d",(-8*w - 58)*OK,[0, 0, -2, -6, 0, 0, -2, -4, 4, -6, 10, -2, 12, -4, 10, -6, 14, -12, -16, 6, -14, 4, 14, 10, 12, 18, 12]);
ECSearch("12.2-e",(-8*w - 58)*OK,[-2, 1, -1, 1, -9, 3, -11, 0, -10, -5, -9, -3, -8, 4, -1, -5, -10, 2, 12, 10, -4, -14, 13, 5, 2, 14, -11]);
ECSearch("12.2-f",(-8*w - 58)*OK,[3, 1, 1, 2, 9, 2, 2, -3, -3, -4, 0, 0, -12, 9, -3, -10, -4, -4, -12, 9, 0, -7, 2, 2, 13, 6, -10]);
ECSearch("12.2-g",(-8*w - 58)*OK,[-1, -3, 1, 2, 9, -2, 2, -7, -3, 4, -4, 0, 0, 1, -3, 6, 4, -8, -4, -7, 8, -7, -2, -18, -15, 10, 2]);
ECSearch("12.2-h",(-8*w - 58)*OK,[0, -1, 3, 7, -5, 11, 7, 12, 0, -13, 11, -9, 0, -8, -1, 15, 12, -12, 0, 4, -4, 16, -1, 7, 0, 16, -5]);
ECSearch("12.2-i",(-8*w - 58)*OK,[1, -3, 3, -6, 3, -6, 6, -3, 3, -4, -12, 0, 12, -3, -1, -10, 8, 8, -4, -1, 12, -3, -10, 2, -9, -6, 18]);
ECSearch("12.6-a",(-61*w - 443)*OK,[0, 2, 3, 0, 3, -6, -3, -6, 9, -6, -1, 6, 3, -12, 3, -8, -8, 4, 4, -14, -2, -12, -9, -8, -8, 12, -15, -6]);
ECSearch("12.6-b",(-61*w - 443)*OK,[-2, 2, -1, -2, 3, 0, 1, 0, -3, 12, 11, 6, -1, -8, -5, -6, 8, 2, -12, 4, 8, -8, 15, -10, 8, -12, -3, -10]);
ECSearch("15.1-a",(2*w + 15)*OK,[2, -1, 1, 3, -7, -4, -4, -7, 2, 2, -6, -7, 11, -2, 1, -7, 2, -12, -3, -8, -8, 12, 9, -4, -13, -13, -13, 12]);
ECSearch("15.2-a",(-2606*w - 18925)*OK,[1, 0, 2, -1, 4, -5, 5, 6, -9, 8, -5, 2, 8, 0, -3, 6, -2, 3, -13, -5, -14, -12, -4, 2, -2, 5, 0, -18]);
ECSearch("15.4-a",(-2*w + 17)*OK,[-1, 2, 1, 3, -4, -7, -7, -4, 2, 2, -6, 11, -7, 1, -2, 2, -7, -3, -12, -8, -8, 9, 12, -13, -4, -13, -13, 6]);
ECSearch("15.3-a",(-3392*w - 24633)*OK,[0, 1, 2, -1, -5, 4, 6, 5, 8, -9, -5, 8, 2, -3, 0, -2, 6, -13, 3, -14, -5, -4, -12, -2, 2, 0, 5, -6]);
ECSearch("16.2-a",(2*w - 16)*OK,[0, 0, 1, -3, 3, -1, 7, -1, 0, 4, -3, -5, -1, 12, -4, -7, 13, 8, -4, 8, -4, -4, -8, -13, 11, -12, 8, 21]);
ECSearch("16.3-a",(2*w + 14)*OK,[0, 0, -3, 1, -1, 3, -1, 7, 4, 0, -3, -1, -5, -4, 12, 13, -7, -4, 8, -4, 8, -8, -4, 11, -13, 8, -12, -11]);
ECSearch("18.1-a",(-1179*w - 8562)*OK,[-1, 2, 2, -2, 6, 6, -6, -12, 8, -2, 6, -6, -4, 0, -10, -6, 0, -8, 4, -8, -12, 16, -6, 2, -12, -12, -2]);
ECSearch("18.1-b",(-1179*w - 8562)*OK,[-1, 0, 2, -6, -8, 10, 8, 6, -2, 8, 6, -6, -12, 8, 10, 2, -2, 16, -2, 8, 0, -6, 0, 12, -14, 0, -2]);
ECSearch("18.1-c",(-1179*w - 8562)*OK,[1, 0, 2, -6, 4, 6, -12, -6, 10, 4, 14, -2, -4, 4, 14, 2, -6, 12, 10, -8, -8, 6, 8, 12, 6, -16, 14]);
ECSearch("18.1-d",(-1179*w - 8562)*OK,[1, -2, 2, 6, -6, -6, -2, -12, 12, 2, -10, 6, 4, 4, 2, -6, 0, -4, -4, 16, -12, -8, 14, -10, 0, -12, 14]);
ECSearch("18.3-a",(7*w - 58)*OK,[-1, 2, -3, 1, 9, 5, -5, 7, 0, 2, -1, -3, -3, 0, -4, -7, 13, 2, -10, -4, -2, 12, 18, -9, -9, -10, -18, -13]);
ECSearch("18.4-a",(-w - 6)*OK,[-1, -2, -1, -1, -3, -3, 3, 7, -6, 0, 5, 5, 9, 4, 8, 7, -9, -6, -14, -14, -4, 6, -4, 7, -17, -6, 6, 17]);
ECSearch("18.2-a",(1179*w - 9741)*OK,[-1, 2, 2, 6, -2, -6, 6, 8, -12, -2, -6, 6, 0, -4, -6, -10, -8, 0, -8, 4, 16, -12, 2, -6, -12, -12, -18]);
ECSearch("18.2-b",(1179*w - 9741)*OK,[-1, 2, 0, -8, -6, 8, 10, -2, 6, 8, -6, 6, 8, -12, 2, 10, 16, -2, 8, -2, -6, 0, 12, 0, 0, -14, -4]);
ECSearch("18.2-c",(1179*w - 9741)*OK,[1, 2, 0, 4, -6, -12, 6, 10, -6, 4, -2, 14, 4, -4, 2, 14, 12, -6, -8, 10, 6, -8, 12, 8, -16, 6, -12]);
ECSearch("18.2-d",(1179*w - 9741)*OK,[1, 2, -2, -6, 6, -2, -6, 12, -12, 2, 6, -10, 4, 4, -6, 2, -4, 0, 16, -4, -8, -12, -10, 14, -12, 0, 2]);
ECSearch("18.6-a",(7*w + 51)*OK,[-1, 2, 1, -3, 5, 9, 7, -5, 2, 0, -1, -3, -3, -4, 0, 13, -7, -10, 2, -2, -4, 18, 12, -9, -9, -18, -10, -1]);
ECSearch("18.5-a",(w - 7)*OK,[-1, -2, -1, -1, -3, -3, 7, 3, 0, -6, 5, 9, 5, 8, 4, -9, 7, -14, -6, -4, -14, -4, 6, -17, 7, 6, -6, -11]);
ECSearch("20.1-a",(84*w + 610)*OK,[0, 2, -2, 4, 2, -8, -12, 8, 4, -10, -2, 10, -2, -4, 0, -2, -8, 14, 6, -6, -4, 6, -2, -18, -8, -12, 6]);
ECSearch("20.4-a",(641*w - 5296)*OK,[-1, 0, 3, 1, 6, 6, 11, 5, 4, 9, 10, 4, 6, -10, 6, -8, -8, -16, -8, 4, -11, 2, -9, 2, -17, 6, 13, -21]);
ECSearch("20.4-b",(641*w - 5296)*OK,[-1, 1, -1, 4, 2, 2, 5, -6, -9, -3, 3, 4, 2, 3, 10, 7, 11, 0, -10, -1, 6, 4, 16, -16, -13, -10, 18, 12]);
ECSearch("20.2-a",(-84*w + 694)*OK,[2, 0, -2, 2, 4, -12, -8, 4, 8, -10, 10, -2, -4, -2, -2, 0, 14, -8, -6, 6, 6, -4, -18, -2, -12, -8, 16]);
ECSearch("20.5-a",(641*w + 4655)*OK,[-1, 3, 0, 1, 6, 6, 5, 11, 9, 4, 10, 6, 4, 6, -10, -8, -8, -8, -16, -11, 4, -9, 2, -17, 2, 13, 6, 16]);
ECSearch("20.5-b",(641*w + 4655)*OK,[-1, -1, 1, 4, 2, 2, -6, 5, -3, -9, 3, 2, 4, 10, 3, 11, 7, -10, 0, 6, -1, 16, 4, -13, -16, 18, -10, -9]);
ECSearch("24.1-a",(-38*w - 276)*OK,[-3, 3, -1, -5, -2, 10, -4, -3, -3, -4, -6, -4, -5, 12, -12, -1, -12, 12, 13, -6, -5, 2, -2, -10, -8, 3, 18]);
ECSearch("24.1-b",(-38*w - 276)*OK,[3, 1, 3, -3, 6, -2, 0, 7, 5, -12, 10, 4, -1, 0, 0, -11, 12, -16, 3, -10, -5, 10, 10, 14, 0, -15, 2]);
ECSearch("24.1-c",(-38*w - 276)*OK,[1, -1, 1, -3, -2, -2, -12, -1, -9, 4, -6, 0, 7, 4, -8, 11, 8, 8, -11, 6, -11, 2, 14, -14, -4, -19, 6]);
ECSearch("24.1-d",(-38*w - 276)*OK,[-1, -3, -3, 3, 6, -6, 0, -3, -9, -4, -6, 0, 3, 0, 4, 1, -8, 4, -5, 10, -3, -6, 10, -14, -12, 15, 6]);
ECSearch("24.2-a",(290*w - 2396)*OK,[0, -2, -2, -10, 6, -10, -4, 0, 6, 2, -12, -6, 6, -12, 6, 8, -10, 14, 12, -6, 6, 8, 2, 14, 16, -12, 14]);
ECSearch("24.5-a",(2213*w + 16071)*OK,[-1, 0, 2, -2, 6, -2, -6, 10, 8, 0, -6, -10, -10, -4, 8, 2, 2, 8, 12, -4, -16, 4, 4, 2, 18, -4, -20, 2]);
ECSearch("24.5-b",(2213*w + 16071)*OK,[-1, 2, 0, 2, -2, 2, 6, 2, 0, -8, 6, 10, 6, -12, -2, -8, -4, 10, 0, -10, 8, -4, -12, -6, -14, 12, 0, 18]);
ECSearch("24.6-a",(-5*w + 41)*OK,[2, 0, 1, 0, -1, 6, -3, 8, -9, 8, -3, -4, 11, 10, 3, 6, 14, 10, 14, -10, -10, 4, -3, -2, -12, 18, 11, 12]);
ECSearch("24.6-b",(-5*w + 41)*OK,[0, 0, -3, -2, 3, 8, -7, -6, -1, -2, 5, 4, -9, 6, -5, 8, -10, -12, -2, 4, 0, 0, 5, -8, -12, 2, -9, 16]);
ECSearch("24.6-c",(-5*w + 41)*OK,[0, 2, 1, 4, -9, -2, 1, 2, 3, 2, -3, 2, 3, 8, 3, 8, 12, 4, 8, -10, -10, -4, 17, -8, 16, 0, 3, -14]);
ECSearch("24.4-a",(38*w - 314)*OK,[-3, -1, 3, -2, -5, -4, 10, -3, -3, -4, -4, -6, 12, -5, -1, -12, 12, -12, -6, 13, 2, -5, -10, -2, 3, -8, 10]);
ECSearch("24.4-b",(38*w - 314)*OK,[3, 3, 1, 6, -3, 0, -2, 5, 7, -12, 4, 10, 0, -1, -11, 0, -16, 12, -10, 3, 10, -5, 14, 10, -15, 0, 18]);
ECSearch("24.4-c",(38*w - 314)*OK,[1, 1, -1, -2, -3, -12, -2, -9, -1, 4, 0, -6, 4, 7, 11, -8, 8, 8, 6, -11, 2, -11, -14, 14, -19, -4, 10]);
ECSearch("24.4-d",(38*w - 314)*OK,[-1, -3, -3, 6, 3, 0, -6, -9, -3, -4, 0, -6, 0, 3, 1, 4, 4, -8, 10, -5, -6, -3, -14, 10, 15, -12, -6]);
ECSearch("24.3-a",(290*w + 2106)*OK,[0, -2, -2, 6, -10, -4, -10, 6, 0, 2, -6, -12, -12, 6, 8, 6, 14, -10, -6, 12, 8, 6, 14, 2, -12, 16, -18]);
ECSearch("24.8-a",(-2213*w + 18284)*OK,[-1, 0, -2, 2, -2, 6, 10, -6, 0, 8, -6, -10, -10, 8, -4, 2, 2, 12, 8, -16, -4, 4, 4, 18, 2, -20, -4, -10]);
ECSearch("24.8-b",(-2213*w + 18284)*OK,[-1, 2, 2, 0, 2, -2, 2, 6, -8, 0, 6, 6, 10, -2, -12, -4, -8, 0, 10, 8, -10, -12, -4, -14, -6, 0, 12, -4]);
ECSearch("24.7-a",(-5*w - 36)*OK,[2, 0, 0, 1, 6, -1, 8, -3, 8, -9, -3, 11, -4, 3, 10, 14, 6, 14, 10, -10, -10, -3, 4, -12, -2, 11, 18, -9]);
ECSearch("24.7-b",(-5*w - 36)*OK,[0, 0, -2, -3, 8, 3, -6, -7, -2, -1, 5, -9, 4, -5, 6, -10, 8, -2, -12, 0, 4, 5, 0, -12, -8, -9, 2, -1]);
ECSearch("24.7-c",(-5*w - 36)*OK,[0, 2, 4, 1, -2, -9, 2, 1, 2, 3, -3, 3, 2, 3, 8, 12, 8, 8, 4, -10, -10, 17, -4, 16, -8, 3, 0, 15]);
ECSearch("25.2-a",(538*w - 4445)*OK,[1, 2, 1, -1, 0, 4, -2, -10, 5, -1, 1, 3, -10, -2, 8, -7, -5, 7, 0, 0, -8, 13, -6, 18, 11, -2, 2, -8, -9]);
ECSearch("25.2-b",(538*w - 4445)*OK,[-1, 0, -3, -1, 4, 6, -10, 10, 1, -9, -3, -5, 2, 12, 10, -7, -1, 7, -2, 8, -10, 1, 8, 4, -13, -8, 10, -10, 3]);
ECSearch("25.2-c",(538*w - 4445)*OK,[1, -2, 1, 3, 0, 0, 6, 6, -3, -1, -3, -1, 6, -14, 4, -3, -1, 11, 4, 8, -4, -3, 14, -2, -13, 18, 2, -12, -13]);
ECSearch("25.3-a",(538*w + 3907)*OK,[2, 1, -1, 1, 0, -2, 4, 5, -10, 1, -1, 3, -2, -10, -7, 8, 7, -5, 0, 0, 13, -8, 18, -6, -2, 11, -8, 2, 6]);
ECSearch("25.3-b",(538*w + 3907)*OK,[0, -1, -1, -3, 4, -10, 6, 1, 10, -3, -9, -5, 12, 2, -7, 10, 7, -1, 8, -2, 1, -10, 4, 8, -8, -13, -10, 10, 4]);
ECSearch("25.3-c",(538*w + 3907)*OK,[-2, 1, 3, 1, 0, 6, 0, -3, 6, -3, -1, -1, -14, 6, -3, 4, 11, -1, 8, 4, -3, -4, -2, 14, 18, -13, -12, 2, 18]);
ECSearch("27.1-a",(12*w - 99)*OK,[-2, 0, -2, 0, -4, 6, 6, 6, -4, 6, 10, -14, -2, -8, 10, 7, -5, 15, 15, -1, -1, 6, 14, -9, 7, -4, -18, 12]);
ECSearch("27.1-b",(12*w - 99)*OK,[-1, 1, 3, 3, 7, -1, -11, 5, -8, -10, -9, -1, -5, -8, -4, -11, 1, -6, 6, -4, 14, -12, 6, -5, 19, 2, 10, 9]);
ECSearch("27.1-c",(12*w - 99)*OK,[0, 2, 0, 2, -6, 4, -6, -6, -6, 4, 10, 2, 14, -10, 8, -5, 7, 15, 15, -1, -1, -14, -6, 7, -9, 18, 4, -10]);
ECSearch("27.2-a",(-12*w - 87)*OK,[0, -2, 0, -2, 6, -4, 6, 6, 6, -4, 10, -2, -14, 10, -8, -5, 7, 15, 15, -1, -1, 14, 6, 7, -9, -18, -4, 10]);
ECSearch("27.2-b",(-12*w - 87)*OK,[1, -1, 3, 3, -1, 7, 5, -11, -10, -8, -9, -5, -1, -4, -8, 1, -11, 6, -6, 14, -4, 6, -12, 19, -5, 10, 2, 9]);
ECSearch("27.2-c",(-12*w - 87)*OK,[2, 0, 2, 0, 4, -6, -6, -6, 4, -6, 10, 14, 2, 8, -10, 7, -5, 15, 15, -1, -1, -6, -14, -9, 7, 4, 18, -12]);
ECSearch("30.2-a",(-w - 5)*OK,[1, 2, 2, -2, -8, -10, 0, 0, 2, -2, 8, -10, 6, 0, 0, -2, 12, 14, -14, 4, 0, -4, 2, 16, -10, -12, 12]);
ECSearch("30.2-b",(-w - 5)*OK,[1, 2, -4, -8, -2, 2, 12, 0, -4, 10, -4, -10, 12, -6, -6, -2, -6, -4, 4, 4, -6, -4, 2, -2, -16, -6, 6]);
ECSearch("30.2-c",(-w - 5)*OK,[1, 0, -2, -6, -2, 10, -2, 0, 0, -10, 2, 6, -4, -8, 10, 2, -8, 4, 8, -8, 8, -4, 2, 2, 4, 16, 6]);
ECSearch("30.2-d",(-w - 5)*OK,[1, -2, -4, -4, 10, -6, 4, 0, 12, 6, 4, -2, -4, -6, 10, 14, 10, 12, 0, -8, 2, 4, -14, 10, -12, -10, 6]);
ECSearch("30.3-a",(-w - 9)*OK,[2, 0, -1, -1, -8, 12, 7, -12, 3, -3, -12, 4, -15, -4, 6, -4, -7, -7, 4, 17, -10, -12, 2, 0, -18, -7, 4]);
ECSearch("30.3-b",(-w - 9)*OK,[1, 0, 0, 10, 6, -8, -6, 0, -12, -8, -4, 10, 10, 0, -14, 10, 12, -2, 4, -14, -6, 2, 6, -10, 16, 0, 2]);
ECSearch("30.3-c",(-w - 9)*OK,[-1, 0, 2, 2, -2, 6, 10, 0, 0, 6, -6, -2, 0, -4, -6, 2, -4, -4, 4, 8, 8, 12, 14, -6, 12, 8, -14]);
ECSearch("30.4-a",(-187*w - 1358)*OK,[-1, 2, 0, -6, 10, 2, -4, 8, 4, 6, -6, 6, 8, 6, -6, -4, 12, 4, 2, -4, -8, 4, 2, 2, 12, 2, -2]);
ECSearch("30.4-b",(-187*w - 1358)*OK,[-2, -1, -1, 4, -1, 1, 12, -6, 6, -6, -11, 1, -9, 2, -10, -5, 15, 4, -8, -12, -5, -4, 13, -8, 17, 3, -6]);
ECSearch("30.4-c",(-187*w - 1358)*OK,[-1, -2, 4, 2, 2, 2, 0, 0, 12, 6, 10, -10, 0, 10, -14, 8, 12, -4, -10, -12, 16, 4, 2, 2, -4, -18, 6]);
ECSearch("30.4-d",(-187*w - 1358)*OK,[0, -1, 3, 6, 3, 3, -6, 0, 0, -10, -9, 3, 9, -6, -2, 1, 1, 4, 16, -8, -15, -12, 7, -2, -3, -3, -12]);
ECSearch("30.4-e",(-187*w - 1358)*OK,[1, 0, -2, 6, 6, 10, 6, 0, 8, 14, -10, 6, -4, 0, -6, 14, 12, 12, 4, 16, 4, -12, -14, 2, -4, 0, -10]);
ECSearch("30.7-a",(w - 6)*OK,[1, 2, 2, -8, -2, 0, -10, 2, 0, -2, -10, 8, 0, 6, -2, 0, 14, 12, 4, -14, -4, 0, 16, 2, -12, -10, 6]);
ECSearch("30.7-b",(w - 6)*OK,[1, 2, -4, -2, -8, 12, 2, -4, 0, 10, -10, -4, -6, 12, -2, -6, -4, -6, 4, 4, -4, -6, -2, 2, -6, -16, -18]);
ECSearch("30.7-c",(w - 6)*OK,[1, 0, -2, -2, -6, -2, 10, 0, 0, -10, 6, 2, -8, -4, 2, 10, 4, -8, -8, 8, -4, 8, 2, 2, 16, 4, -2]);
ECSearch("30.7-d",(w - 6)*OK,[1, -2, -4, 10, -4, 4, -6, 12, 0, 6, -2, 4, -6, -4, 14, 10, 12, 10, -8, 0, 4, 2, 10, -14, -10, -12, -6]);
ECSearch("30.6-a",(-w + 10)*OK,[2, 0, -1, -8, -1, 7, 12, 3, -12, -3, 4, -12, -4, -15, -4, 6, -7, -7, 17, 4, -12, -10, 0, 2, -7, -18, -10]);
ECSearch("30.6-b",(-w + 10)*OK,[1, 0, 0, 6, 10, -6, -8, -12, 0, -8, 10, -4, 0, 10, 10, -14, -2, 12, -14, 4, 2, -6, -10, 6, 0, 16, 2]);
ECSearch("30.6-c",(-w + 10)*OK,[-1, 0, 2, -2, 2, 10, 6, 0, 0, 6, -2, -6, -4, 0, 2, -6, -4, -4, 8, 4, 12, 8, -6, 14, 8, 12, 14]);
ECSearch("30.5-a",(187*w - 1545)*OK,[-1, 2, 0, 10, -6, -4, 2, 4, 8, 6, 6, -6, 6, 8, -4, -6, 4, 12, -4, 2, 4, -8, 2, 2, 2, 12, -2]);
ECSearch("30.5-b",(187*w - 1545)*OK,[-2, -1, -1, -1, 4, 12, 1, 6, -6, -6, 1, -11, 2, -9, -5, -10, 4, 15, -12, -8, -4, -5, -8, 13, 3, 17, 0]);
ECSearch("30.5-c",(187*w - 1545)*OK,[-1, -2, 4, 2, 2, 0, 2, 12, 0, 6, -10, 10, 10, 0, 8, -14, -4, 12, -12, -10, 4, 16, 2, 2, -18, -4, 6]);
ECSearch("30.5-d",(187*w - 1545)*OK,[0, -1, 3, 3, 6, -6, 3, 0, 0, -10, 3, -9, -6, 9, 1, -2, 4, 1, -8, 16, -12, -15, -2, 7, -3, -3, -12]);
ECSearch("30.5-e",(187*w - 1545)*OK,[1, 0, -2, 6, 6, 6, 10, 8, 0, 14, 6, -10, 0, -4, 14, -6, 12, 12, 16, 4, -12, 4, 2, -14, 0, -4, 6]);
ECSearch("32.1-a",(-1572*w - 11416)*OK,[-2, -2, 3, 1, 1, -1, 5, -3, 0, 10, -5, 1, -5, -10, 6, -11, 7, 10, 4, -6, 0, 6, 4, 15, 3, -6, 8, -15]);
ECSearch("32.3-a",(-206*w + 1702)*OK,[0, 0, 3, -1, -1, 3, -1, 7, -4, 0, 3, -1, -5, 4, 12, -13, 7, -4, -8, -4, -8, -8, 4, 11, -13, 8, 12, 11]);
ECSearch("32.3-b",(-206*w + 1702)*OK,[-2, 2, -3, 3, 9, 3, 9, 9, -12, -6, 1, 9, -9, 6, -6, -1, -7, -14, -16, 10, -4, 6, 0, -17, -5, -6, -12, 15]);
ECSearch("32.2-a",(1572*w - 12988)*OK,[-2, -2, 1, 3, -1, 1, -3, 5, 10, 0, -5, -5, 1, 6, -10, 7, -11, 4, 10, 0, -6, 4, 6, 3, 15, 8, -6, -15]);
ECSearch("32.4-a",(-206*w - 1496)*OK,[0, 0, -1, 3, 3, -1, 7, -1, 0, -4, 3, -5, -1, 12, 4, 7, -13, -8, -4, -8, -4, 4, -8, -13, 11, 12, 8, -21]);
ECSearch("32.4-b",(-206*w - 1496)*OK,[2, -2, 3, -3, 3, 9, 9, 9, -6, -12, 1, -9, 9, -6, 6, -7, -1, -16, -14, -4, 10, 0, 6, -5, -17, -12, -6, 15]);
