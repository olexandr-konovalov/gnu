The following list contains all group orders up to 10000 which are not 
currently avalable from the combination of the GAP Small Groups Library 
and SglPPow and CubeFree packages, and also some orders above 50000.

For n<50000, some data which are not yet available in this service could 
be found in the following table <http://www.icm.tu-bs.de/ag_algebra/software/small/number.html>

It is produced after reading `gnuclient.g` using the command of the form
```
for n in [n1..n2] do Print(n,"\c"); if Gnu(n)=false then Print(" = ");PrintFactorsInt(n); Print("\n"); else Print("\r");fi;od;
```

One could run systematically `ConstructAllGroups` from the GrpConst package 
(See <http://www.gap-system.org/Manuals/pkg/grpconst/htm/CHAP003.htm>), check
that the resulting list contains groups but does not contain *lists of groups*
and reduce the wishlist, adding new entries to `gnudata.g`. It may be useful
to call `SetInfoLevel(InfoGrpCon,5)` before the calculation to see its progress.

```
2024 = 2^3*11*23
2025 = 3^4*5^2
2040 = 2^3*3*5*17
2048 = 2^11
2052 = 2^2*3^3*19
2058 = 2*3*7^3
2064 = 2^4*3*43
2072 = 2^3*7*37
2079 = 3^3*7*11
2080 = 2^5*5*13
2088 = 2^3*3^2*29
2106 = 2*3^4*13
2112 = 2^6*3*11
2120 = 2^3*5*53
2128 = 2^4*7*19
2136 = 2^3*3*89
2160 = 2^4*3^3*5
2184 = 2^3*3*7*13
2200 = 2^3*5^2*11
2208 = 2^5*3*23
2214 = 2*3^3*41
2232 = 2^3*3^2*31
2240 = 2^6*5*7
2250 = 2*3^2*5^3
2256 = 2^4*3*47
2268 = 2^2*3^4*7
2280 = 2^3*3*5*19
2288 = 2^4*11*13
2295 = 3^3*5*17
2296 = 2^3*7*41
2312 = 2^3*17^2
2320 = 2^4*5*29
2322 = 2*3^3*43
2328 = 2^3*3*97
2352 = 2^4*3*7^2
2360 = 2^3*5*59
2376 = 2^3*3^3*11
2392 = 2^3*13*23
2400 = 2^5*3*5^2
2408 = 2^3*7*43
2424 = 2^3*3*101
2430 = 2*3^5*5
2440 = 2^3*5*61
2448 = 2^4*3^2*17
2457 = 3^3*7*13
2464 = 2^5*7*11
2472 = 2^3*3*103
2480 = 2^4*5*31
2484 = 2^2*3^3*23
2496 = 2^6*3*13
2500 = 2^2*5^4
2520 = 2^3*3^2*5*7
2538 = 2*3^3*47
2544 = 2^4*3*53
2552 = 2^3*11*29
2560 = 2^9*5
2565 = 3^3*5*19
2568 = 2^3*3*107
2576 = 2^4*7*23
2584 = 2^3*17*19
2592 = 2^5*3^4
2600 = 2^3*5^2*13
2616 = 2^3*3*109
2625 = 3*5^3*7
2632 = 2^3*7*47
2640 = 2^4*3*5*11
2646 = 2*3^3*7^2
2662 = 2*11^3
2664 = 2^3*3^2*37
2680 = 2^3*5*67
2688 = 2^7*3*7
2700 = 2^2*3^3*5^2
2704 = 2^4*13^2
2712 = 2^3*3*113
2720 = 2^5*5*17
2728 = 2^3*11*31
2736 = 2^4*3^2*19
2744 = 2^3*7^3
2750 = 2*5^3*11
2754 = 2*3^4*17
2760 = 2^3*3*5*23
2784 = 2^5*3*29
2800 = 2^4*5^2*7
2808 = 2^3*3^3*13
2832 = 2^4*3*59
2835 = 3^4*5*7
2840 = 2^3*5*71
2856 = 2^3*3*7*17
2862 = 2*3^3*53
2880 = 2^6*3^2*5
2888 = 2^3*19^2
2904 = 2^3*3*11^2
2912 = 2^5*7*13
2916 = 2^2*3^6
2920 = 2^3*5*73
2928 = 2^4*3*61
2952 = 2^3*3^2*41
2960 = 2^4*5*37
2968 = 2^3*7*53
2970 = 2*3^3*5*11
2976 = 2^5*3*31
2992 = 2^4*11*17
3000 = 2^3*3*5^3
3016 = 2^3*13*29
3024 = 2^4*3^3*7
3040 = 2^5*5*19
3048 = 2^3*3*127
3072 = 2^10*3
3078 = 2*3^4*19
3080 = 2^3*5*7*11
3087 = 3^2*7^3
3096 = 2^3*3^2*43
3105 = 3^3*5*23
3120 = 2^4*3*5*13
3128 = 2^3*17*23
3132 = 2^2*3^3*29
3136 = 2^6*7^2
3144 = 2^3*3*131
3160 = 2^3*5*79
3168 = 2^5*3^2*11
3186 = 2*3^3*59
3192 = 2^3*3*7*19
3200 = 2^7*5^2
3213 = 3^3*7*17
3216 = 2^4*3*67
3224 = 2^3*13*31
3240 = 2^3*3^4*5
3248 = 2^4*7*29
3250 = 2*5^3*13
3256 = 2^3*11*37
3264 = 2^6*3*17
3267 = 3^3*11^2
3280 = 2^4*5*41
3288 = 2^3*3*137
3294 = 2*3^3*61
3304 = 2^3*7*59
3312 = 2^4*3^2*23
3320 = 2^3*5*83
3336 = 2^3*3*139
3344 = 2^4*11*19
3348 = 2^2*3^3*31
3360 = 2^5*3*5*7
3375 = 3^3*5^3
3384 = 2^3*3^2*47
3400 = 2^3*5^2*17
3402 = 2*3^5*7
3408 = 2^4*3*71
3416 = 2^3*7*61
3430 = 2*5*7^3
3432 = 2^3*3*11*13
3440 = 2^4*5*43
3456 = 2^7*3^3
3472 = 2^4*7*31
3480 = 2^3*3*5*29
3496 = 2^3*19*23
3500 = 2^2*5^3*7
3504 = 2^4*3*73
3510 = 2*3^3*5*13
3520 = 2^6*5*11
3528 = 2^3*3^2*7^2
3536 = 2^4*13*17
3552 = 2^5*3*37
3560 = 2^3*5*89
3564 = 2^2*3^4*11
3576 = 2^3*3*149
3584 = 2^9*7
3591 = 3^3*7*19
3600 = 2^4*3^2*5^2
3608 = 2^3*11*41
3618 = 2*3^3*67
3624 = 2^3*3*151
3640 = 2^3*5*7*13
3648 = 2^6*3*19
3672 = 2^3*3^3*17
3680 = 2^5*5*23
3696 = 2^4*3*7*11
3720 = 2^3*3*5*31
3726 = 2*3^4*23
3744 = 2^5*3^2*13
3750 = 2*3*5^4
3752 = 2^3*7*67
3760 = 2^4*5*47
3768 = 2^3*3*157
3780 = 2^2*3^3*5*7
3784 = 2^3*11*43
3792 = 2^4*3*79
3800 = 2^3*5^2*19
3808 = 2^5*7*17
3816 = 2^3*3^2*53
3834 = 2*3^3*71
3840 = 2^8*3*5
3848 = 2^3*13*37
3861 = 3^3*11*13
3864 = 2^3*3*7*23
3872 = 2^5*11^2
3880 = 2^3*5*97
3888 = 2^4*3^5
3912 = 2^3*3*163
3915 = 3^3*5*29
3920 = 2^4*5*7^2
3936 = 2^5*3*41
3942 = 2*3^3*73
3944 = 2^3*17*29
3952 = 2^4*13*19
3960 = 2^3*3^2*5*11
3969 = 3^4*7^2
3976 = 2^3*7*71
3984 = 2^4*3*83
3993 = 3*11^3
3996 = 2^2*3^3*37
4000 = 2^5*5^3
4008 = 2^3*3*167
4032 = 2^6*3^2*7
4040 = 2^3*5*101
4048 = 2^4*11*23
4050 = 2*3^4*5^2
4056 = 2^3*3*13^2
4080 = 2^4*3*5*17
4088 = 2^3*7*73
4096 = 2^12
4104 = 2^3*3^3*19
4116 = 2^2*3*7^3
4120 = 2^3*5*103
4125 = 3*5^3*11
4128 = 2^5*3*43
4136 = 2^3*11*47
4144 = 2^4*7*37
4152 = 2^3*3*173
4158 = 2*3^3*7*11
4160 = 2^6*5*13
4176 = 2^4*3^2*29
4185 = 3^3*5*31
4200 = 2^3*3*5^2*7
4212 = 2^2*3^4*13
4216 = 2^3*17*31
4224 = 2^7*3*11
4232 = 2^3*23^2
4240 = 2^4*5*53
4248 = 2^3*3^2*59
4250 = 2*5^3*17
4256 = 2^5*7*19
4264 = 2^3*13*41
4266 = 2*3^3*79
4272 = 2^4*3*89
4280 = 2^3*5*107
4296 = 2^3*3*179
4312 = 2^3*7^2*11
4320 = 2^5*3^3*5
4344 = 2^3*3*181
4347 = 3^3*7*23
4360 = 2^3*5*109
4368 = 2^4*3*7*13
4374 = 2*3^7
4392 = 2^3*3^2*61
4394 = 2*13^3
4400 = 2^4*5^2*11
4408 = 2^3*19*29
4416 = 2^6*3*23
4424 = 2^3*7*79
4428 = 2^2*3^3*41
4440 = 2^3*3*5*37
4455 = 3^4*5*11
4464 = 2^4*3^2*31
4472 = 2^3*13*43
4480 = 2^7*5*7
4482 = 2*3^3*83
4488 = 2^3*3*11*17
4500 = 2^2*3^2*5^3
4512 = 2^5*3*47
4520 = 2^3*5*113
4536 = 2^3*3^4*7
4560 = 2^4*3*5*19
4563 = 3^3*13^2
4576 = 2^5*11*13
4584 = 2^3*3*191
4590 = 2*3^3*5*17
4592 = 2^4*7*41
4600 = 2^3*5^2*23
4608 = 2^9*3^2
4624 = 2^4*17^2
4632 = 2^3*3*193
4640 = 2^5*5*29
4644 = 2^2*3^3*43
4648 = 2^3*7*83
4656 = 2^4*3*97
4664 = 2^3*11*53
4680 = 2^3*3^2*5*13
4698 = 2*3^4*29
4704 = 2^5*3*7^2
4712 = 2^3*19*31
4720 = 2^4*5*59
4725 = 3^3*5^2*7
4728 = 2^3*3*197
4750 = 2*5^3*19
4752 = 2^4*3^3*11
4760 = 2^3*5*7*17
4776 = 2^3*3*199
4784 = 2^4*13*23
4800 = 2^6*3*5^2
4806 = 2*3^3*89
4816 = 2^4*7*43
4824 = 2^3*3^2*67
4840 = 2^3*5*11^2
4848 = 2^4*3*101
4860 = 2^2*3^5*5
4872 = 2^3*3*7*29
4875 = 3*5^3*13
4880 = 2^4*5*61
4888 = 2^3*13*47
4896 = 2^5*3^2*17
4914 = 2*3^3*7*13
4920 = 2^3*3*5*41
4928 = 2^6*7*11
4944 = 2^4*3*103
4960 = 2^5*5*31
4968 = 2^3*3^3*23
4984 = 2^3*7*89
4992 = 2^7*3*13
4995 = 3^3*5*37
5000 = 2^3*5^4
5016 = 2^3*3*11*19
5022 = 2*3^4*31
5032 = 2^3*17*37
5040 = 2^4*3^2*5*7
5049 = 3^3*11*17
5064 = 2^3*3*211
5076 = 2^2*3^3*47
5080 = 2^3*5*127
5088 = 2^5*3*53
5096 = 2^3*7^2*13
5104 = 2^4*11*29
5112 = 2^3*3^2*71
5120 = 2^10*5
5130 = 2*3^3*5*19
5136 = 2^4*3*107
5145 = 3*5*7^3
5152 = 2^5*7*23
5160 = 2^3*3*5*43
5168 = 2^4*17*19
5184 = 2^6*3^4
5192 = 2^3*11*59
5200 = 2^4*5^2*13
5208 = 2^3*3*7*31
5232 = 2^4*3*109
5238 = 2*3^3*97
5240 = 2^3*5*131
5250 = 2*3*5^3*7
5256 = 2^3*3^2*73
5264 = 2^4*7*47
5265 = 3^4*5*13
5280 = 2^5*3*5*11
5292 = 2^2*3^3*7^2
5304 = 2^3*3*13*17
5320 = 2^3*5*7*19
5324 = 2^2*11^3
5328 = 2^4*3^2*37
5336 = 2^3*23*29
5346 = 2*3^5*11
5352 = 2^3*3*223
5360 = 2^4*5*67
5368 = 2^3*11*61
5376 = 2^8*3*7
5400 = 2^3*3^3*5^2
5408 = 2^5*13^2
5424 = 2^4*3*113
5432 = 2^3*7*97
5440 = 2^6*5*17
5448 = 2^3*3*227
5454 = 2*3^3*101
5456 = 2^4*11*31
5472 = 2^5*3^2*19
5480 = 2^3*5*137
5481 = 3^3*7*29
5488 = 2^4*7^3
5496 = 2^3*3*229
5500 = 2^2*5^3*11
5508 = 2^2*3^4*17
5512 = 2^3*13*53
5520 = 2^4*3*5*23
5535 = 3^3*5*41
5544 = 2^3*3^2*7*11
5560 = 2^3*5*139
5562 = 2*3^3*103
5568 = 2^6*3*29
5576 = 2^3*17*41
5592 = 2^3*3*233
5600 = 2^5*5^2*7
5616 = 2^4*3^3*13
5624 = 2^3*19*37
5625 = 3^2*5^4
5632 = 2^9*11
5640 = 2^3*3*5*47
5643 = 3^3*11*19
5656 = 2^3*7*101
5664 = 2^5*3*59
5670 = 2*3^4*5*7
5680 = 2^4*5*71
5688 = 2^3*3^2*79
5704 = 2^3*23*31
5712 = 2^4*3*7*17
5720 = 2^3*5*11*13
5724 = 2^2*3^3*53
5736 = 2^3*3*239
5750 = 2*5^3*23
5760 = 2^7*3^2*5
5768 = 2^3*7*103
5776 = 2^4*19^2
5778 = 2*3^3*107
5784 = 2^3*3*241
5800 = 2^3*5^2*29
5805 = 3^3*5*43
5808 = 2^4*3*11^2
5824 = 2^6*7*13
5832 = 2^3*3^6
5840 = 2^4*5*73
5848 = 2^3*17*43
5856 = 2^5*3*61
5859 = 3^3*7*31
5880 = 2^3*3*5*7^2
5886 = 2*3^3*109
5896 = 2^3*11*67
5904 = 2^4*3^2*41
5920 = 2^5*5*37
5928 = 2^3*3*13*19
5936 = 2^4*7*53
5940 = 2^2*3^3*5*11
5952 = 2^6*3*31
5960 = 2^3*5*149
5967 = 3^3*13*17
5976 = 2^3*3^2*83
5984 = 2^5*11*17
5992 = 2^3*7*107
5994 = 2*3^4*37
6000 = 2^4*3*5^3
6024 = 2^3*3*251
6032 = 2^4*13*29
6040 = 2^3*5*151
6048 = 2^5*3^3*7
6072 = 2^3*3*11*23
6075 = 3^5*5^2
6080 = 2^6*5*19
6096 = 2^4*3*127
6102 = 2*3^3*113
6104 = 2^3*7*109
6120 = 2^3*3^2*5*17
6125 = 5^3*7^2
6136 = 2^3*13*59
6144 = 2^11*3
6156 = 2^2*3^4*19
6160 = 2^4*5*7*11
6168 = 2^3*3*257
6174 = 2*3^2*7^3
6192 = 2^4*3^2*43
6200 = 2^3*5^2*31
6210 = 2*3^3*5*23
6216 = 2^3*3*7*37
6232 = 2^3*19*41
6237 = 3^4*7*11
6240 = 2^5*3*5*13
6248 = 2^3*11*71
6256 = 2^4*17*23
6264 = 2^3*3^3*29
6272 = 2^7*7^2
6280 = 2^3*5*157
6288 = 2^4*3*131
6312 = 2^3*3*263
6318 = 2*3^5*13
6320 = 2^4*5*79
6328 = 2^3*7*113
6336 = 2^6*3^2*11
6344 = 2^3*13*61
6345 = 3^3*5*47
6360 = 2^3*3*5*53
6372 = 2^2*3^3*59
6375 = 3*5^3*17
6384 = 2^4*3*7*19
6392 = 2^3*17*47
6400 = 2^8*5^2
6408 = 2^3*3^2*89
6424 = 2^3*11*73
6426 = 2*3^3*7*17
6432 = 2^5*3*67
6440 = 2^3*5*7*23
6448 = 2^4*13*31
6456 = 2^3*3*269
6480 = 2^4*3^4*5
6496 = 2^5*7*29
6500 = 2^2*5^3*13
6504 = 2^3*3*271
6512 = 2^4*11*37
6520 = 2^3*5*163
6528 = 2^7*3*17
6534 = 2*3^3*11^2
6536 = 2^3*19*43
6552 = 2^3*3^2*7*13
6560 = 2^5*5*41
6576 = 2^4*3*137
6588 = 2^2*3^3*61
6591 = 3*13^3
6600 = 2^3*3*5^2*11
6608 = 2^4*7*59
6615 = 3^3*5*7^2
6624 = 2^5*3^2*23
6640 = 2^4*5*83
6642 = 2*3^4*41
6648 = 2^3*3*277
6655 = 5*11^3
6656 = 2^9*13
6664 = 2^3*7^2*17
6669 = 3^3*13*19
6672 = 2^4*3*139
6680 = 2^3*5*167
6688 = 2^5*11*19
6696 = 2^3*3^3*31
6720 = 2^6*3*5*7
6728 = 2^3*29^2
6744 = 2^3*3*281
6750 = 2*3^3*5^3
6760 = 2^3*5*13^2
6768 = 2^4*3^2*47
6776 = 2^3*7*11^2
6792 = 2^3*3*283
6800 = 2^4*5^2*17
6804 = 2^2*3^5*7
6808 = 2^3*23*37
6816 = 2^5*3*71
6831 = 3^3*11*23
6832 = 2^4*7*61
6840 = 2^3*3^2*5*19
6858 = 2*3^3*127
6860 = 2^2*5*7^3
6864 = 2^4*3*11*13
6880 = 2^5*5*43
6885 = 3^4*5*17
6888 = 2^3*3*7*41
6912 = 2^8*3^3
6920 = 2^3*5*173
6936 = 2^3*3*17^2
6944 = 2^5*7*31
6952 = 2^3*11*79
6960 = 2^4*3*5*29
6966 = 2*3^4*43
6968 = 2^3*13*67
6984 = 2^3*3^2*97
6992 = 2^4*19*23
6993 = 3^3*7*37
7000 = 2^3*5^3*7
7008 = 2^5*3*73
7020 = 2^2*3^3*5*13
7032 = 2^3*3*293
7040 = 2^7*5*11
7056 = 2^4*3^2*7^2
7072 = 2^5*13*17
7074 = 2*3^3*131
7080 = 2^3*3*5*59
7104 = 2^6*3*37
7112 = 2^3*7*127
7120 = 2^4*5*89
7125 = 3*5^3*19
7128 = 2^3*3^4*11
7144 = 2^3*19*47
7152 = 2^4*3*149
7155 = 3^3*5*53
7160 = 2^3*5*179
7168 = 2^10*7
7176 = 2^3*3*13*23
7182 = 2*3^3*7*19
7192 = 2^3*29*31
7200 = 2^5*3^2*5^2
7208 = 2^3*17*53
7216 = 2^4*11*41
7224 = 2^3*3*7*43
7236 = 2^2*3^3*67
7240 = 2^3*5*181
7248 = 2^4*3*151
7250 = 2*5^3*29
7272 = 2^3*3^2*101
7280 = 2^4*5*7*13
7290 = 2*3^6*5
7296 = 2^7*3*19
7304 = 2^3*11*83
7320 = 2^3*3*5*61
7336 = 2^3*7*131
7344 = 2^4*3^3*17
7360 = 2^6*5*23
7368 = 2^3*3*307
7371 = 3^4*7*13
7384 = 2^3*13*71
7392 = 2^5*3*7*11
7398 = 2*3^3*137
7400 = 2^3*5^2*37
7416 = 2^3*3^2*103
7425 = 3^3*5^2*11
7440 = 2^4*3*5*31
7448 = 2^3*7^2*19
7452 = 2^2*3^4*23
7464 = 2^3*3*311
7480 = 2^3*5*11*17
7488 = 2^6*3^2*13
7500 = 2^2*3*5^4
7504 = 2^4*7*67
7506 = 2*3^3*139
7512 = 2^3*3*313
7520 = 2^5*5*47
7536 = 2^4*3*157
7544 = 2^3*23*41
7546 = 2*7^3*11
7560 = 2^3*3^3*5*7
7568 = 2^4*11*43
7584 = 2^5*3*79
7592 = 2^3*13*73
7600 = 2^4*5^2*19
7608 = 2^3*3*317
7614 = 2*3^4*47
7616 = 2^6*7*17
7632 = 2^4*3^2*53
7640 = 2^3*5*191
7656 = 2^3*3*11*29
7668 = 2^2*3^3*71
7672 = 2^3*7*137
7680 = 2^9*3*5
7688 = 2^3*31^2
7695 = 3^4*5*19
7696 = 2^4*13*37
7704 = 2^3*3^2*107
7720 = 2^3*5*193
7722 = 2*3^3*11*13
7728 = 2^4*3*7*23
7744 = 2^6*11^2
7749 = 3^3*7*41
7750 = 2*5^3*31
7752 = 2^3*3*17*19
7760 = 2^4*5*97
7776 = 2^5*3^5
7784 = 2^3*7*139
7800 = 2^3*3*5^2*13
7803 = 3^3*17^2
7824 = 2^4*3*163
7830 = 2*3^3*5*29
7832 = 2^3*11*89
7840 = 2^5*5*7^2
7848 = 2^3*3^2*109
7872 = 2^6*3*41
7875 = 3^2*5^3*7
7880 = 2^3*5*197
7884 = 2^2*3^3*73
7888 = 2^4*17*29
7896 = 2^3*3*7*47
7904 = 2^5*13*19
7912 = 2^3*23*43
7920 = 2^4*3^2*5*11
7938 = 2*3^4*7^2
7944 = 2^3*3*331
7952 = 2^4*7*71
7960 = 2^3*5*199
7965 = 3^3*5*59
7968 = 2^5*3*83
7986 = 2*3*11^3
7992 = 2^3*3^3*37
8000 = 2^6*5^3
8008 = 2^3*7*11*13
8016 = 2^4*3*167
8024 = 2^3*17*59
8040 = 2^3*3*5*67
8046 = 2*3^3*149
8056 = 2^3*19*53
8064 = 2^7*3^2*7
8073 = 3^3*13*23
8080 = 2^4*5*101
8088 = 2^3*3*337
8096 = 2^5*11*23
8100 = 2^2*3^4*5^2
8112 = 2^4*3*13^2
8120 = 2^3*5*7*29
8127 = 3^3*7*43
8136 = 2^3*3^2*113
8154 = 2*3^3*151
8160 = 2^5*3*5*17
8176 = 2^4*7*73
8184 = 2^3*3*11*31
8192 = 2^13
8200 = 2^3*5^2*41
8208 = 2^4*3^3*19
8216 = 2^3*13*79
8232 = 2^3*3*7^3
8235 = 3^3*5*61
8240 = 2^4*5*103
8250 = 2*3*5^3*11
8256 = 2^6*3*43
8262 = 2*3^5*17
8272 = 2^4*11*47
8280 = 2^3*3^2*5*23
8288 = 2^5*7*37
8296 = 2^3*17*61
8304 = 2^4*3*173
8316 = 2^2*3^3*7*11
8320 = 2^7*5*13
8328 = 2^3*3*347
8344 = 2^3*7*149
8352 = 2^5*3^2*29
8360 = 2^3*5*11*19
8370 = 2*3^3*5*31
8376 = 2^3*3*349
8400 = 2^4*3*5^2*7
8424 = 2^3*3^4*13
8432 = 2^4*17*31
8440 = 2^3*5*211
8448 = 2^8*3*11
8456 = 2^3*7*151
8464 = 2^4*23^2
8472 = 2^3*3*353
8478 = 2*3^3*157
8480 = 2^5*5*53
8496 = 2^4*3^2*59
8500 = 2^2*5^3*17
8505 = 3^5*5*7
8512 = 2^6*7*19
8520 = 2^3*3*5*71
8528 = 2^4*13*41
8532 = 2^2*3^3*79
8536 = 2^3*11*97
8544 = 2^5*3*89
8560 = 2^4*5*107
8568 = 2^3*3^2*7*17
8575 = 5^2*7^3
8584 = 2^3*29*37
8586 = 2*3^4*53
8592 = 2^4*3*179
8600 = 2^3*5^2*43
8613 = 3^3*11*29
8616 = 2^3*3*359
8624 = 2^4*7^2*11
8625 = 3*5^3*23
8632 = 2^3*13*83
8640 = 2^6*3^3*5
8648 = 2^3*23*47
8664 = 2^3*3*19^2
8680 = 2^3*5*7*31
8688 = 2^4*3*181
8694 = 2*3^3*7*23
8704 = 2^9*17
8712 = 2^3*3^2*11^2
8720 = 2^4*5*109
8721 = 3^3*17*19
8736 = 2^5*3*7*13
8748 = 2^2*3^7
8750 = 2*5^4*7
8760 = 2^3*3*5*73
8775 = 3^3*5^2*13
8784 = 2^4*3^2*61
8788 = 2^2*13^3
8792 = 2^3*7*157
8800 = 2^5*5^2*11
8802 = 2*3^3*163
8808 = 2^3*3*367
8816 = 2^4*19*29
8832 = 2^7*3*23
8840 = 2^3*5*13*17
8848 = 2^4*7*79
8856 = 2^3*3^3*41
8880 = 2^4*3*5*37
8883 = 3^3*7*47
8888 = 2^3*11*101
8904 = 2^3*3*7*53
8910 = 2*3^4*5*11
8918 = 2*7^3*13
8920 = 2^3*5*223
8928 = 2^5*3^2*31
8944 = 2^4*13*43
8952 = 2^3*3*373
8960 = 2^8*5*7
8964 = 2^2*3^3*83
8968 = 2^3*19*59
8976 = 2^4*3*11*17
9000 = 2^3*3^2*5^3
9016 = 2^3*7^2*23
9018 = 2*3^3*167
9024 = 2^6*3*47
9040 = 2^4*5*113
9045 = 3^3*5*67
9048 = 2^3*3*13*29
9064 = 2^3*11*103
9072 = 2^4*3^4*7
9080 = 2^3*5*227
9096 = 2^3*3*379
9112 = 2^3*17*67
9120 = 2^5*3*5*19
9126 = 2*3^3*13^2
9128 = 2^3*7*163
9144 = 2^3*3^2*127
9152 = 2^6*11*13
9160 = 2^3*5*229
9168 = 2^4*3*191
9176 = 2^3*31*37
9180 = 2^2*3^3*5*17
9184 = 2^5*7*41
9192 = 2^3*3*383
9200 = 2^4*5^2*23
9207 = 3^3*11*31
9216 = 2^10*3^2
9234 = 2*3^5*19
9240 = 2^3*3*5*7*11
9248 = 2^5*17^2
9250 = 2*5^3*37
9256 = 2^3*13*89
9261 = 3^3*7^3
9264 = 2^4*3*193
9272 = 2^3*19*61
9280 = 2^6*5*29
9288 = 2^3*3^3*43
9296 = 2^4*7*83
9312 = 2^5*3*97
9315 = 3^4*5*23
9317 = 7*11^3
9320 = 2^3*5*233
9328 = 2^4*11*53
9336 = 2^3*3*389
9342 = 2*3^3*173
9352 = 2^3*7*167
9360 = 2^4*3^2*5*13
9384 = 2^3*3*17*23
9396 = 2^2*3^4*29
9400 = 2^3*5^2*47
9408 = 2^6*3*7^2
9416 = 2^3*11*107
9424 = 2^4*19*31
9432 = 2^3*3^2*131
9440 = 2^5*5*59
9450 = 2*3^3*5^2*7
9456 = 2^4*3*197
9464 = 2^3*7*13^2
9480 = 2^3*3*5*79
9500 = 2^2*5^3*19
9504 = 2^5*3^3*11
9512 = 2^3*29*41
9520 = 2^4*5*7*17
9528 = 2^3*3*397
9552 = 2^4*3*199
9558 = 2*3^4*59
9560 = 2^3*5*239
9568 = 2^5*13*23
9576 = 2^3*3^2*7*19
9585 = 3^3*5*71
9592 = 2^3*11*109
9600 = 2^7*3*5^2
9604 = 2^2*7^4
9612 = 2^2*3^3*89
9624 = 2^3*3*401
9625 = 5^3*7*11
9632 = 2^5*7*43
9639 = 3^4*7*17
9640 = 2^3*5*241
9648 = 2^4*3^2*67
9656 = 2^3*17*71
9666 = 2*3^3*179
9672 = 2^3*3*13*31
9680 = 2^4*5*11^2
9688 = 2^3*7*173
9696 = 2^5*3*101
9720 = 2^3*3^5*5
9728 = 2^9*19
9744 = 2^4*3*7*29
9747 = 3^3*19^2
9750 = 2*3*5^3*13
9752 = 2^3*23*53
9760 = 2^5*5*61
9768 = 2^3*3*11*37
9774 = 2*3^3*181
9776 = 2^4*13*47
9792 = 2^6*3^2*17
9800 = 2^3*5^2*7^2
9801 = 3^4*11^2
9816 = 2^3*3*409
9826 = 2*17^3
9828 = 2^2*3^3*7*13
9840 = 2^4*3*5*41
9855 = 3^3*5*73
9856 = 2^7*7*11
9864 = 2^3*3^2*137
9880 = 2^3*5*13*19
9882 = 2*3^4*61
9888 = 2^5*3*103
9912 = 2^3*3*7*59
9920 = 2^6*5*31
9928 = 2^3*17*73
9936 = 2^4*3^3*23
9944 = 2^3*11*113
9960 = 2^3*3*5*83
9968 = 2^4*7*89
9976 = 2^3*29*43
9984 = 2^8*3*13
9990 = 2*3^3*5*37
10000 = 2^4*5^4
```

# Group orders between 50000 and 51000

```
50000 = 2^4*5^5
50004 = 2^2*3^3*463
50008 = 2^3*7*19*47
50016 = 2^5*3*521
50024 = 2^3*13^2*37
50031 = 3^3*17*109
50032 = 2^4*53*59
50040 = 2^3*3^2*5*139
50048 = 2^7*17*23
50058 = 2*3^5*103
50064 = 2^4*3*7*149
50072 = 2^3*11*569
50078 = 2*7^3*73
50080 = 2^5*5*313
50085 = 3^3*5*7*53
50088 = 2^3*3*2087
50096 = 2^4*31*101
50112 = 2^6*3^3*29
50120 = 2^3*5*7*179
50128 = 2^4*13*241
50136 = 2^3*3*2089
50160 = 2^4*3*5*11*19
50166 = 2*3^3*929
50176 = 2^10*7^2
50184 = 2^3*3^2*17*41
50193 = 3^3*11*13^2
50200 = 2^3*5^2*251
50208 = 2^5*3*523
50220 = 2^2*3^4*5*31
50224 = 2^4*43*73
50232 = 2^3*3*7*13*23
50240 = 2^6*5*157
50248 = 2^3*11*571
50250 = 2*3*5^3*67
50256 = 2^4*3^2*349
50264 = 2^3*61*103
50274 = 2*3^3*7^2*19
50280 = 2^3*3*5*419
50288 = 2^4*7*449
50301 = 3^7*23
50304 = 2^7*3*131
50312 = 2^3*19*331
50320 = 2^4*5*17*37
50328 = 2^3*3^3*233
50336 = 2^5*11^2*13
50344 = 2^3*7*29*31
50352 = 2^4*3*1049
50355 = 3^3*5*373
50360 = 2^3*5*1259
50375 = 5^3*13*31
50376 = 2^3*3*2099
50382 = 2*3^4*311
50384 = 2^4*47*67
50400 = 2^5*3^2*5^2*7
50416 = 2^4*23*137
50421 = 3*7^5
50424 = 2^3*3*11*191
50436 = 2^2*3^3*467
50440 = 2^3*5*13*97
50448 = 2^4*3*1051
50456 = 2^3*7*17*53
50463 = 3^4*7*89
50464 = 2^5*19*83
50472 = 2^3*3^2*701
50480 = 2^4*5*631
50490 = 2*3^3*5*11*17
50496 = 2^6*3*263
50500 = 2^2*5^3*101
50504 = 2^3*59*107
50512 = 2^4*7*11*41
50520 = 2^3*3*5*421
50531 = 13^3*23
50544 = 2^4*3^5*13
50552 = 2^3*71*89
50560 = 2^7*5*79
50568 = 2^3*3*7^2*43
50576 = 2^4*29*109
50578 = 2*11^3*19
50592 = 2^5*3*17*31
50598 = 2*3^3*937
50600 = 2^3*5^2*11*23
50616 = 2^3*3^2*19*37
50624 = 2^6*7*113
50625 = 3^4*5^4
50640 = 2^4*3*5*211
50648 = 2^3*13*487
50652 = 2^2*3^3*7*67
50664 = 2^3*3*2111
50680 = 2^3*5*7*181
50688 = 2^9*3^2*11
50706 = 2*3^4*313
50712 = 2^3*3*2113
50720 = 2^5*5*317
50728 = 2^3*17*373
50736 = 2^4*3*7*151
50750 = 2*5^3*7*29
50752 = 2^6*13*61
50760 = 2^3*3^3*5*47
50764 = 2^2*7^3*37
50768 = 2^4*19*167
50776 = 2^3*11*577
50784 = 2^5*3*23^2
50787 = 3^5*11*19
50792 = 2^3*7*907
50800 = 2^4*5^2*127
50808 = 2^3*3*29*73
50814 = 2*3^3*941
50832 = 2^4*3^2*353
50840 = 2^3*5*31*41
50841 = 3^3*7*269
50848 = 2^5*7*227
50856 = 2^3*3*13*163
50864 = 2^4*11*17^2
50868 = 2^2*3^4*157
50875 = 5^3*11*37
50880 = 2^6*3*5*53
50895 = 3^3*5*13*29
50904 = 2^3*3^2*7*101
50912 = 2^5*37*43
50920 = 2^3*5*19*67
50922 = 2*3^3*23*41
50928 = 2^4*3*1061
50949 = 3^4*17*37
50952 = 2^3*3*11*193
50960 = 2^4*5*7^2*13
50968 = 2^3*23*277
50976 = 2^5*3^3*59
51000 = 2^3*3*5^3*17
```