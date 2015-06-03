print "Field 2.2.349.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 87);
OK := Integers(K);
Plist := [];
Append(~Plist,(w + 9)*OK);
Append(~Plist,(-w + 10)*OK);
Append(~Plist,(2)*OK);
Append(~Plist,(-6*w + 59)*OK);
Append(~Plist,(-6*w - 53)*OK);
Append(~Plist,(-13*w - 115)*OK);
Append(~Plist,(13*w - 128)*OK);
Append(~Plist,(5*w + 44)*OK);
Append(~Plist,(5*w - 49)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(3*w - 29)*OK);
Append(~Plist,(3*w + 26)*OK);
Append(~Plist,(w + 7)*OK);
Append(~Plist,(w - 8)*OK);
Append(~Plist,(-31*w - 274)*OK);
Append(~Plist,(31*w - 305)*OK);
Append(~Plist,(8*w + 71)*OK);
Append(~Plist,(8*w - 79)*OK);
Append(~Plist,(7)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(9*w + 80)*OK);
Append(~Plist,(9*w - 89)*OK);
Append(~Plist,(-3*w - 25)*OK);
Append(~Plist,(3*w - 28)*OK);
Append(~Plist,(-15*w + 148)*OK);
Append(~Plist,(15*w + 133)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(45*w + 398)*OK);
Append(~Plist,(45*w - 443)*OK);
Append(~Plist,(27*w + 239)*OK);
Append(~Plist,(27*w - 266)*OK);
Append(~Plist,(-33*w + 325)*OK);
Append(~Plist,(-33*w - 292)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-49*w - 433)*OK);
Append(~Plist,(49*w - 482)*OK);
Append(~Plist,(-70*w + 689)*OK);
Append(~Plist,(-70*w - 619)*OK);
Append(~Plist,(-6*w + 61)*OK);
Append(~Plist,(-6*w - 55)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(-3*w - 22)*OK);
Append(~Plist,(3*w - 25)*OK);
Append(~Plist,(-87*w - 769)*OK);
Append(~Plist,(-87*w + 856)*OK);
Append(~Plist,(-106*w + 1043)*OK);
Append(~Plist,(106*w + 937)*OK);
Append(~Plist,(-21*w - 185)*OK);
Append(~Plist,(21*w - 206)*OK);
Append(~Plist,(34*w + 301)*OK);
Append(~Plist,(34*w - 335)*OK);
Append(~Plist,(5*w + 47)*OK);
Append(~Plist,(-5*w + 52)*OK);
Append(~Plist,(-3*w + 34)*OK);
Append(~Plist,(3*w + 31)*OK);
Append(~Plist,(-7*w + 71)*OK);
Append(~Plist,(-7*w - 64)*OK);
Append(~Plist,(-28*w - 247)*OK);
Append(~Plist,(-28*w + 275)*OK);
Append(~Plist,(w + 19)*OK);
Append(~Plist,(w - 20)*OK);
Append(~Plist,(-4*w + 35)*OK);
Append(~Plist,(4*w + 31)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(-2*w - 5)*OK);
Append(~Plist,(-3*w - 32)*OK);
Append(~Plist,(3*w - 35)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(27*w - 265)*OK);
Append(~Plist,(27*w + 238)*OK);
Append(~Plist,(-108*w + 1063)*OK);
Append(~Plist,(-108*w - 955)*OK);
Append(~Plist,(-17*w - 149)*OK);
Append(~Plist,(17*w - 166)*OK);
Append(~Plist,(w + 22)*OK);
Append(~Plist,(w - 23)*OK);
Append(~Plist,(-3*w + 20)*OK);
Append(~Plist,(3*w + 17)*OK);
Append(~Plist,(-15*w + 146)*OK);
Append(~Plist,(15*w + 131)*OK);
Append(~Plist,(-11*w + 106)*OK);
Append(~Plist,(11*w + 95)*OK);
Append(~Plist,(158*w + 1397)*OK);
Append(~Plist,(158*w - 1555)*OK);
Append(~Plist,(-3*w - 16)*OK);
Append(~Plist,(3*w - 19)*OK);
Append(~Plist,(-10*w + 101)*OK);
Append(~Plist,(-10*w - 91)*OK);
Append(~Plist,(5*w + 38)*OK);
Append(~Plist,(5*w - 43)*OK);
Append(~Plist,(-3*w - 35)*OK);
Append(~Plist,(3*w - 38)*OK);
Append(~Plist,(w + 25)*OK);
Append(~Plist,(w - 26)*OK);
Append(~Plist,(48*w + 425)*OK);
Append(~Plist,(48*w - 473)*OK);
Append(~Plist,(-9*w + 85)*OK);
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

ECSearch("1.1-a",(1)*OK,[-1, -1, 4, 2, 2, 3, 3, -5, -5, 1, 1, 1, 1, 7, 7, -3, -3, 10, 10, -6, -13, -13, -11, -11, 1, 1, 1, 1, 2, 1]);
ECSearch("3.1-a",(w + 9)*OK,[-2, -3, 0, -3, -3, 0, -2, 7, 0, 3, -6, 0, -6, -3, -6, 9, 9, -6, -4, -15, 12, 6, -3, 3, 9, 16, 16, 9, 18]);
ECSearch("3.2-a",(-w + 10)*OK,[-2, -3, -3, 0, 0, -3, 7, -2, 3, 0, 0, -6, -3, -6, 9, -6, -6, 9, -4, 12, -15, -3, 6, 9, 3, 16, 16, 9, -3]);
ECSearch("5.1-a",(-6*w + 59)*OK,[1, 3, 0, -2, -3, 3, -5, -1, 5, -9, -5, 3, -5, -1, 11, -3, -2, -6, -2, -11, -5, 5, 3, 11, -3, 7, -13, 10, -21]);
ECSearch("5.2-a",(-6*w - 53)*OK,[3, 1, 0, -2, 3, -3, -1, -5, -9, 5, 3, -5, -1, -5, -3, 11, -6, -2, -2, -5, -11, 3, 5, -3, 11, -13, 7, 10, -5]);
ECSearch("9.2-a",(-19*w + 187)*OK,[-2, 3, -3, 0, 0, -3, 7, -2, -3, 0, 0, 6, 3, 6, -9, 6, -6, -9, -4, -12, 15, 3, -6, 9, -3, 16, 16, -9, 3]);
ECSearch("9.2-b",(-19*w + 187)*OK,[-1, -4, 2, -2, -3, 3, -5, -5, -1, 1, 1, -1, -7, -7, 3, 3, 10, -10, -6, 13, 13, 11, 11, 1, -1, 1, 1, -2, -1]);
ECSearch("9.3-a",(19*w + 168)*OK,[-2, 3, 0, -3, -3, 0, -2, 7, 0, -3, 6, 0, 6, 3, 6, -9, -9, -6, -4, 15, -12, -6, 3, -3, 9, 16, 16, -9, -18]);
ECSearch("9.3-b",(19*w + 168)*OK,[-1, -4, -2, 2, 3, -3, -5, -5, 1, -1, -1, 1, -7, -7, 3, 3, -10, 10, -6, 13, 13, 11, 11, -1, 1, 1, 1, -2, -1]);
ECSearch("12.1-a",(2*w + 18)*OK,[2, -1, -4, 3, 0, 4, -2, 7, -8, -5, -8, -8, -2, -3, 3, -2, 10, -3, -13, -4, -2, -14, 4, 10, 4, 4, 2, -5]);
ECSearch("12.1-b",(2*w + 18)*OK,[-1, 1, 0, 2, 0, -5, 4, 0, 1, 7, -8, -3, 8, -7, 3, 0, -3, -2, 14, -12, 6, 6, 4, 5, -12, -10, 4, 2]);
ECSearch("12.1-c",(2*w + 18)*OK,[-3, -1, 0, 6, 6, 5, -4, 4, -3, -9, 8, 3, 4, 1, 7, -2, -5, -6, 2, -4, -8, -2, 14, -3, 12, -2, -8, -10]);
ECSearch("12.2-a",(-2*w + 20)*OK,[2, -4, -1, 0, 3, -2, 4, -8, 7, -8, -5, -2, -8, 3, -3, 10, -2, -3, -4, -13, -14, -2, 10, 4, 4, 4, 2, -11]);
ECSearch("12.2-b",(-2*w + 20)*OK,[-1, 0, 1, 0, 2, 4, -5, 1, 0, -8, 7, 8, -3, 3, -7, -3, 0, -2, -12, 14, 6, 6, 5, 4, -10, -12, 4, 0]);
ECSearch("12.2-c",(-2*w + 20)*OK,[-3, 0, -1, 6, 6, -4, 5, -3, 4, 8, -9, 4, 3, 7, 1, -5, -2, -6, -4, 2, -2, -8, -3, 14, -2, 12, -8, -16]);