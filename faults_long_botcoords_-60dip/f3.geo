charl = 500;
Point(1) = {455313, 5.24371e+06, 0, charl};
Point(2) = {455973, 5.24382e+06, 0, charl};
Point(3) = {456320, 5.24392e+06, 0, charl};
Point(4) = {456708, 5.24407e+06, 0, charl};
Point(5) = {457055, 5.24422e+06, 0, charl};
Point(6) = {455607, 5.249e+06, -8645.39, charl};
Point(7) = {455258, 5.24886e+06, -8665, charl};
Point(8) = {454870, 5.24871e+06, -8678.75, charl};
Point(9) = {454523, 5.24861e+06, -8676.06, charl};
Point(10) = {453866, 5.24849e+06, -8636.07, charl};
CatmullRom(1) = {1:5};
CatmullRom(2) = {6:10};
CatmullRom(3) = {5,6};
CatmullRom(4) = {10,1};
Line Loop(1) = {1, 3, 2, 4};
Ruled Surface(1) = {1};
