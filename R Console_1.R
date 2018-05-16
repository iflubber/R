
R version 3.4.3 (2017-11-30) -- "Kite-Eating Tree"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin15.6.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

During startup - Warning messages:
1: Setting LC_CTYPE failed, using "C" 
2: Setting LC_COLLATE failed, using "C" 
3: Setting LC_TIME failed, using "C" 
4: Setting LC_MESSAGES failed, using "C" 
5: Setting LC_MONETARY failed, using "C" 
[R.app GUI 1.70 (7463) x86_64-apple-darwin15.6.0]

WARNING: You're using a non-UTF8 locale, therefore only ASCII characters will work.
Please read R for Mac OS X FAQ (see Help) section 9 and adjust your system preferences accordingly.
[History restored from /Users/kanuamit/.Rapp.history]

> iris
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
1            5.1         3.5          1.4         0.2     setosa
2            4.9         3.0          1.4         0.2     setosa
3            4.7         3.2          1.3         0.2     setosa
4            4.6         3.1          1.5         0.2     setosa
5            5.0         3.6          1.4         0.2     setosa
6            5.4         3.9          1.7         0.4     setosa
7            4.6         3.4          1.4         0.3     setosa
8            5.0         3.4          1.5         0.2     setosa
9            4.4         2.9          1.4         0.2     setosa
10           4.9         3.1          1.5         0.1     setosa
11           5.4         3.7          1.5         0.2     setosa
12           4.8         3.4          1.6         0.2     setosa
13           4.8         3.0          1.4         0.1     setosa
14           4.3         3.0          1.1         0.1     setosa
15           5.8         4.0          1.2         0.2     setosa
16           5.7         4.4          1.5         0.4     setosa
17           5.4         3.9          1.3         0.4     setosa
18           5.1         3.5          1.4         0.3     setosa
19           5.7         3.8          1.7         0.3     setosa
20           5.1         3.8          1.5         0.3     setosa
21           5.4         3.4          1.7         0.2     setosa
22           5.1         3.7          1.5         0.4     setosa
23           4.6         3.6          1.0         0.2     setosa
24           5.1         3.3          1.7         0.5     setosa
25           4.8         3.4          1.9         0.2     setosa
26           5.0         3.0          1.6         0.2     setosa
27           5.0         3.4          1.6         0.4     setosa
28           5.2         3.5          1.5         0.2     setosa
29           5.2         3.4          1.4         0.2     setosa
30           4.7         3.2          1.6         0.2     setosa
31           4.8         3.1          1.6         0.2     setosa
32           5.4         3.4          1.5         0.4     setosa
33           5.2         4.1          1.5         0.1     setosa
34           5.5         4.2          1.4         0.2     setosa
35           4.9         3.1          1.5         0.2     setosa
36           5.0         3.2          1.2         0.2     setosa
37           5.5         3.5          1.3         0.2     setosa
38           4.9         3.6          1.4         0.1     setosa
39           4.4         3.0          1.3         0.2     setosa
40           5.1         3.4          1.5         0.2     setosa
41           5.0         3.5          1.3         0.3     setosa
42           4.5         2.3          1.3         0.3     setosa
43           4.4         3.2          1.3         0.2     setosa
44           5.0         3.5          1.6         0.6     setosa
45           5.1         3.8          1.9         0.4     setosa
46           4.8         3.0          1.4         0.3     setosa
47           5.1         3.8          1.6         0.2     setosa
48           4.6         3.2          1.4         0.2     setosa
49           5.3         3.7          1.5         0.2     setosa
50           5.0         3.3          1.4         0.2     setosa
51           7.0         3.2          4.7         1.4 versicolor
52           6.4         3.2          4.5         1.5 versicolor
53           6.9         3.1          4.9         1.5 versicolor
54           5.5         2.3          4.0         1.3 versicolor
55           6.5         2.8          4.6         1.5 versicolor
56           5.7         2.8          4.5         1.3 versicolor
57           6.3         3.3          4.7         1.6 versicolor
58           4.9         2.4          3.3         1.0 versicolor
59           6.6         2.9          4.6         1.3 versicolor
60           5.2         2.7          3.9         1.4 versicolor
61           5.0         2.0          3.5         1.0 versicolor
62           5.9         3.0          4.2         1.5 versicolor
63           6.0         2.2          4.0         1.0 versicolor
64           6.1         2.9          4.7         1.4 versicolor
65           5.6         2.9          3.6         1.3 versicolor
66           6.7         3.1          4.4         1.4 versicolor
67           5.6         3.0          4.5         1.5 versicolor
68           5.8         2.7          4.1         1.0 versicolor
69           6.2         2.2          4.5         1.5 versicolor
70           5.6         2.5          3.9         1.1 versicolor
71           5.9         3.2          4.8         1.8 versicolor
72           6.1         2.8          4.0         1.3 versicolor
73           6.3         2.5          4.9         1.5 versicolor
74           6.1         2.8          4.7         1.2 versicolor
75           6.4         2.9          4.3         1.3 versicolor
76           6.6         3.0          4.4         1.4 versicolor
77           6.8         2.8          4.8         1.4 versicolor
78           6.7         3.0          5.0         1.7 versicolor
79           6.0         2.9          4.5         1.5 versicolor
80           5.7         2.6          3.5         1.0 versicolor
81           5.5         2.4          3.8         1.1 versicolor
82           5.5         2.4          3.7         1.0 versicolor
83           5.8         2.7          3.9         1.2 versicolor
84           6.0         2.7          5.1         1.6 versicolor
85           5.4         3.0          4.5         1.5 versicolor
86           6.0         3.4          4.5         1.6 versicolor
87           6.7         3.1          4.7         1.5 versicolor
88           6.3         2.3          4.4         1.3 versicolor
89           5.6         3.0          4.1         1.3 versicolor
90           5.5         2.5          4.0         1.3 versicolor
91           5.5         2.6          4.4         1.2 versicolor
92           6.1         3.0          4.6         1.4 versicolor
93           5.8         2.6          4.0         1.2 versicolor
94           5.0         2.3          3.3         1.0 versicolor
95           5.6         2.7          4.2         1.3 versicolor
96           5.7         3.0          4.2         1.2 versicolor
97           5.7         2.9          4.2         1.3 versicolor
98           6.2         2.9          4.3         1.3 versicolor
99           5.1         2.5          3.0         1.1 versicolor
100          5.7         2.8          4.1         1.3 versicolor
101          6.3         3.3          6.0         2.5  virginica
102          5.8         2.7          5.1         1.9  virginica
103          7.1         3.0          5.9         2.1  virginica
104          6.3         2.9          5.6         1.8  virginica
105          6.5         3.0          5.8         2.2  virginica
106          7.6         3.0          6.6         2.1  virginica
107          4.9         2.5          4.5         1.7  virginica
108          7.3         2.9          6.3         1.8  virginica
109          6.7         2.5          5.8         1.8  virginica
110          7.2         3.6          6.1         2.5  virginica
111          6.5         3.2          5.1         2.0  virginica
112          6.4         2.7          5.3         1.9  virginica
113          6.8         3.0          5.5         2.1  virginica
114          5.7         2.5          5.0         2.0  virginica
115          5.8         2.8          5.1         2.4  virginica
116          6.4         3.2          5.3         2.3  virginica
117          6.5         3.0          5.5         1.8  virginica
118          7.7         3.8          6.7         2.2  virginica
119          7.7         2.6          6.9         2.3  virginica
120          6.0         2.2          5.0         1.5  virginica
121          6.9         3.2          5.7         2.3  virginica
122          5.6         2.8          4.9         2.0  virginica
123          7.7         2.8          6.7         2.0  virginica
124          6.3         2.7          4.9         1.8  virginica
125          6.7         3.3          5.7         2.1  virginica
126          7.2         3.2          6.0         1.8  virginica
127          6.2         2.8          4.8         1.8  virginica
128          6.1         3.0          4.9         1.8  virginica
129          6.4         2.8          5.6         2.1  virginica
130          7.2         3.0          5.8         1.6  virginica
131          7.4         2.8          6.1         1.9  virginica
132          7.9         3.8          6.4         2.0  virginica
133          6.4         2.8          5.6         2.2  virginica
134          6.3         2.8          5.1         1.5  virginica
135          6.1         2.6          5.6         1.4  virginica
136          7.7         3.0          6.1         2.3  virginica
137          6.3         3.4          5.6         2.4  virginica
138          6.4         3.1          5.5         1.8  virginica
139          6.0         3.0          4.8         1.8  virginica
140          6.9         3.1          5.4         2.1  virginica
141          6.7         3.1          5.6         2.4  virginica
142          6.9         3.1          5.1         2.3  virginica
143          5.8         2.7          5.1         1.9  virginica
144          6.8         3.2          5.9         2.3  virginica
145          6.7         3.3          5.7         2.5  virginica
146          6.7         3.0          5.2         2.3  virginica
147          6.3         2.5          5.0         1.9  virginica
148          6.5         3.0          5.2         2.0  virginica
149          6.2         3.4          5.4         2.3  virginica
150          5.9         3.0          5.1         1.8  virginica
> summary(iris)
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500                  
> attach(iris)
> qqnorm(Sepal.Length)
> qqnorm(Sepal.Width)
> qqnorm(Petal.Length)
> getwd()
[1] "/Users/kanuamit"
> qqline(Sepal.Lenth)
Error in quantile(y, probs, names = FALSE, type = qtype, na.rm = TRUE) : 
  object 'Sepal.Lenth' not found
> qqline(Sepal.Length)
Error in int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) : 
  plot.new has not been called yet
> qqline(Sepal.Length)
Error in int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) : 
  plot.new has not been called yet
> qqnorm(Sepal.Length)
> ceo_data<-read.xls("/Users/kanuamit/Downloads/Datasets/CEO-Compensation.xlsx")
Error in read.xls("/Users/kanuamit/Downloads/Datasets/CEO-Compensation.xlsx") : 
  could not find function "read.xls"
> ceo_data<-readxl("/Users/kanuamit/Downloads/Datasets/CEO-Compensation.xlsx")
Error in readxl("/Users/kanuamit/Downloads/Datasets/CEO-Compensation.xlsx") : 
  could not find function "readxl"
> ceo_data<-read.csv("/Users/kanuamit/Downloads/CEO.csv")
> ceo_data
                      X...Company Compensation
1                              3M         14.1
2             Abbott Laboratories         18.6
3             Abercrombie & Fitch         46.6
4          Advanced Micro Devices         15.6
5       Affiliated Managers Group         14.9
6                           Aflac         14.2
7          Air Products Chemicals         11.4
8             Akamai Technologies         11.9
9                           Alcoa         12.6
10                       Allergan         11.9
11                         Altera         29.6
12               American Express         22.5
13           American Int'l Group         14.0
14           Ameriprise Financial         17.3
15                          Amgen         18.9
16             Anadarko Petroleum         19.5
17             Annaly Capital Mgt         35.0
18                            Aon         12.0
19                         Apache         16.0
20                   Apollo Group         25.1
21                          Apple        378.0
22         Archer Daniels Midland         10.9
23                           AT&T         18.7
24                          Atmel         17.9
25                       Autodesk         15.4
26                       AutoZone         11.4
27                   Baker Hughes         11.2
28                           Beam         12.0
29                       Big Lots         11.9
30                    Biogen Idec         11.3
31                      BlackRock         21.9
32                         Boeing         18.4
33           Bristol-Myers Squibb         13.7
34                       Broadcom         16.1
35            Cablevision Systems          1.2
36                     CareFusion         25.2
37                    Caterpillar         14.8
38                            CBS         68.4
39         Charter Communications         20.5
40                       Chemtura         13.0
41              Chesapeake Energy         17.9
42                        Chevron         18.1
43        Children's Place Retail         11.1
44         Chipotle Mexican Grill         19.4
45                          Chubb         12.7
46                          Cigna         18.9
47                  Cisco Systems         12.9
48                      Citigroup         14.9
49                          Coach         12.4
50                      Coca-Cola         21.2
51          Cognizant Technology          11.8
52              Colgate-Palmolive         12.8
53                        Comcast         23.2
54       Community Health Systems         13.6
55                  ConocoPhilips         19.2
56                  Consol Energy         14.5
57           Coventry Health Care         13.0
58                 Crown Holdings         13.0
59                        Cummins         14.8
60                   CVS Caremark         12.0
61                         DaVita         17.5
62                          Deere         16.6
63                   Devon Energy         14.7
64          Dick's Sporting Goods         10.9
65             Discover Financial         13.9
66       Discovery Communications         52.4
67             Dominion Resources         12.2
68                   Dow Chemical         15.6
69                         DuPont         12.3
70              Eastman Chemical          11.2
71                           eBay         16.5
72                            EMC         13.2
73               Emerson Electric         11.1
74                  EOG Resources         14.8
75             Equity Residential         11.3
76                   Estee Lauder         21.0
77                        Express         16.4
78                    Exxon Mobil         25.2
79  Fidelity National Information         11.1
80                    FirstEnergy         14.3
81                    Foot Locker         13.5
82                     Ford Motor         29.5
83               Freeport-McMoRan         28.4
84               General Dynamics         16.1
85               General Electric         11.3
86                Gilead Sciences         15.6
87                  Goldman Sachs         16.2
88                        Griffon         13.2
89                    Halliburton         15.7
90          Harman International          11.5
91                            HCP         13.8
92                   Hertz Global         13.4
93                           Hess         13.3
94                Hewlett-Packard         16.5
95                Honeywell Int'l         35.3
96                        Hospira         12.3
97                         I.B.M.         24.2
98                          Intel         17.2
99            International Paper         13.9
100       Interpublic Group of Co         13.0
101                        Intuit         11.6
102                       Invesco         13.4
103                   J.C. Penney         53.3
104                   J.P. Morgan         23.1
105             Johnson & Johnson         23.4
106              Johnson Controls         17.0
107                   Kraft Foods         15.7
108            L-3 Communications         13.7
109    Laboratory Corp of America         10.9
110               Las Vegas Sands         13.8
111                        Lennar         11.9
112             Leucadia National         29.3
113        Level 3 Communications         11.3
114                 Libery Global         13.8
115                Limited Brands         18.9
116              Lincoln National         12.4
117     Live Nation Entertainment         11.9
118               Lockheed Martin         20.5
119                     Lorillard         13.0
120              Lowe's Companies         11.6
121                        Macy's         14.5
122                Manpower Group         10.9
123                  Marathon Oil         29.9
124              Marsh & McLennan         14.3
125                        Mednax         12.4
126                      Monsanto         11.2
127              Monster Beverage         11.6
128                Morgan Stanley         13.0
129             Motorola Mobility         47.2
130            Motorola Solutions         29.3
131         MSC Industrial Direct         12.9
132                         Mylan         16.8
133        Navistar International         12.4
134                           NCR         11.7
135             Newell Rubbermaid         18.8
136                     News Corp         29.4
137                NextEra Energy         12.2
138                          Nike         11.0
139              Northrop Grumman         21.0
140         Nuance Communications         20.7
141          Occidental Petroleum         31.7
142                        Oracle         77.6
143         Parametric Technology         12.3
144               Parker Hannifin         11.4
145          Penn National Gaming         12.0
146                       PepsiCo         14.1
147                   PerkinElmer         11.1
148                        Pfizer         18.1
149           Philip Morris Int'l         20.2
150                 PNC Financial         12.2
151                       Praxair         12.5
152              Proctor & Gamble         16.2
153          Prudential Financial         14.7
154                      Qualcomm         21.7
155                      Raytheon         15.1
156             Republic Services         14.5
157              Roper Industries         14.9
158                   Ross Stores         12.5
159                Salesforce.com         17.7
160                       SanDisk         12.2
161              SandRidge Energy         25.3
162                  Schlumberger         11.9
163          Simon Property Group        137.2
164               Spectrum Brands         13.7
165        Stanley Black & Decker         12.1
166                     Starbucks         16.1
167                  State Street         12.0
168                        Target         19.0
169             Texas Instruments         13.9
170                   Time Warner         16.3
171             Time Warner Cable         16.3
172               TransDigm Group         20.7
173           Travelers Companies         15.8
174       TRW Automotive Holdings         15.1
175                 Union Pacific         13.3
176            United Continental         13.4
177         United Parcel Service         11.5
178           United Technologies         22.9
179           United-Health Group         13.4
180     Universal Health Services         12.4
181                    VCA Antech         12.1
182                        Ventas         18.5
183              VeriFone Systems         14.2
184        Verizon Communications         23.0
185         Vertex Pharmceuticals         13.4
186                        Viacom         43.1
187                          Visa         11.0
188                         Wabco         12.1
189                      Walgreen         17.6
190               Wal-mart Stores         12.1
191                   Walt Disney         31.4
192                     WellPoint         13.2
193                   Wells Fargo         17.9
194                    Yum Brands         12.9
> qqnorm(ceo_data$Compensation)
> qqline(ceo_data$Compensation)
Error in int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) : 
  plot.new has not been called yet
> qqline(ceo_data$Compensation)
Error in int_abline(a = a, b = b, h = h, v = v, untf = untf, ...) : 
  plot.new has not been called yet
objc[2398]: Class FIFinderSyncExtensionHost is implemented in both /System/Library/PrivateFrameworks/FinderKit.framework/Versions/A/FinderKit (0x7fffaaed0b68) and /System/Library/PrivateFrameworks/FileProvider.framework/OverrideBundles/FinderSyncCollaborationFileProviderOverride.bundle/Contents/MacOS/FinderSyncCollaborationFileProviderOverride (0x11007ecd8). One of the two will be used. Which one is undefined.
> 