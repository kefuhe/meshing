charl = 100;
Point(1) = {455313, 5.24371e+06, 0, charl};
Point(2) = {455973, 5.24382e+06, 0, charl};
Point(3) = {456320, 5.24392e+06, 0, charl};
Point(4) = {456708, 5.24407e+06, 0, charl};
Point(5) = {457055, 5.24422e+06, 0, charl};
Point(6) = {458505, 5.23943e+06, -8675.12, charl};
Point(7) = {458156, 5.23928e+06, -8655.5, charl};
Point(8) = {457768, 5.23914e+06, -8641.76, charl};
Point(9) = {457421, 5.23904e+06, -8644.45, charl};
Point(10) = {456764, 5.23892e+06, -8684.44, charl};
CatmullRom(1) = {1:5};
CatmullRom(2) = {6:10};
CatmullRom(3) = {5,6};
CatmullRom(4) = {10,1};
Line Loop(1) = {1, 3, 2, 4};
Ruled Surface(1) = {1};