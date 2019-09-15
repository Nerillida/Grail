--
--	Grail Reputations
--	Written by scott@mithrandir.com
--
--	Version History
--		001	Initial version
--		002	Converted to be a load-on-demand addon.
--		003 Converted codes to be more MoP-friendly.
--		004	Removed the version check because live has MoP data.
--		005 Changes the technique of how reputation data is stored, which reduces memory by over 0.6 MB.
--			Basically each reputation change is converted to a four-character code (representing a bitmap)
--			that is stored in a separate table whose index is the questId.  For quests that change more
--			than one reputation the four-character codes are appended, so no more tons of little tables.
--		006	Interface 50300
--		007	Switches to not relying on Grail.quests any more.
--
--	Known Issues
--
--	UTF-8 file
--

local pairs, strsub, tonumber = pairs, strsub, tonumber
local GetBuildInfo = GetBuildInfo
local COMBAT_TEXT_SHOW_REPUTATION_TEXT = COMBAT_TEXT_SHOW_REPUTATION_TEXT

local Grail_Reputations_File_Version = 007

if Grail.reputationsVersionNumber < Grail_Reputations_File_Version then
	Grail.reputationsVersionNumber = Grail_Reputations_File_Version

local _, release, _, interface = GetBuildInfo()
release = tonumber(release)
interface = tonumber(interface)

local G = Grail.questReputations

local originalMem = gcinfo()

if release >= 0 then
G[456]={'045250'}
G[457]={'045250'}
G[458]={'04575'}
G[459]={'045250'}
G[916]={'045250'}
G[917]={'045350'}
G[920]={'04510'}
G[921]={'045150'}
G[928]={'04575'}
G[3519]={'04525'}
G[3521]={'045250'}
G[3522]={'045350'}
G[4495]={'045150'}
end

if release >= 31407 then
G[7]={'048250'}
G[9]={'048250'}
G[12]={'048250'}
G[14]={'048350'}
G[15]={'048250'}
G[18]={'048250'}
G[21]={'048250'}
G[33]={'048250'}
G[47]={'048250'}
G[54]={'04875'}
G[62]={'048150'}
G[132]={'04875'}
G[141]={'04825'}
G[170]={'02F250','036250'}
G[179]={'02F250','036250'}
G[182]={'02F250','036250'}
G[183]={'02F250','036250'}
G[218]={'02F350','036500'}
G[233]={'02F150','036150'}
G[234]={'02F150','036150'}
G[282]={'02F150','036150'}
G[363]={'04475'}
G[475]={'04575'}
G[476]={'045250'}
G[483]={'045250'}
G[487]={'045250'}
G[783]={'04875'}
G[788]={'04C250','212250'}
G[789]={'04C250','212250'}
G[790]={'04C250','212250'}
G[792]={'04C350','212350'}
G[794]={'04C500','212500'}
G[804]={'04C25','21225'}
G[805]={'04C75','21275'}
G[808]={'04C250','212250'}
G[817]={'04C250','212250'}
G[818]={'04C250','212250'}
G[823]={'04C75','21275'}
G[826]={'04C250','212250'}
G[918]={'045250'}
G[919]={'045350'}
G[922]={'04575'}
G[923]={'045350'}
G[929]={'045250'}
G[933]={'045250'}
G[997]={'04575'}
G[1599]={'02F250','036250'}
G[2158]={'04825'}
G[2159]={'04525'}
G[2161]={'04C25','21225'}
G[3087]={'04C75'}
G[3100]={'04875'}
G[3106]={'02F75'}
G[3107]={'02F75'}
G[3108]={'02F75'}
G[3109]={'02F75'}
G[3110]={'02F75'}
G[3112]={'03675'}
G[3113]={'03675'}
G[3114]={'03675'}
G[3115]={'03675'}
G[3116]={'04575'}
G[3117]={'04575'}
G[3118]={'04575'}
G[3119]={'04575'}
G[3120]={'04575'}
G[3361]={'02F250','036250'}
G[3364]={'02F75','03675'}
G[3365]={'02F250','036250'}
G[4402]={'04C500','212500'}
G[4641]={'04C75','21275'}
G[5261]={'04875'}
G[5441]={'04C350','212350'}
G[6394]={'04C350','212350'}
G[8831]={'045150'}
end

if release >= 31650 then
G[6]={'048150'}
G[747]={'051250'}
G[3102]={'04875'}
G[3103]={'04875'}
G[3903]={'04810'}
G[3904]={'04875'}
end

if release >= 31687 then
G[11]={'048250'}
G[35]={'04875'}
G[37]={'04825'}
G[39]={'048350'}
G[40]={'04810'}
G[45]={'04875'}
G[46]={'048250'}
G[52]={'048150'}
G[59]={'04825'}
G[60]={'048150'}
G[61]={'048350'}
G[71]={'04825'}
G[76]={'048250'}
G[83]={'048250'}
G[84]={'04825'}
G[85]={'04825'}
G[86]={'048150'}
G[87]={'048350'}
G[88]={'048250'}
G[109]={'048150'}
G[176]={'048250'}
G[239]={'04825'}
G[750]={'051250'}
G[752]={'05175'}
G[753]={'051250'}
G[755]={'051250'}
G[757]={'051350'}
G[763]={'051150'}
G[3094]={'05175'}
G[3376]={'051500'}
G[8837]={'048150'}
end

if release >= 31727 then
G[1]={'211150','057-250'}
G[2]={'051250'}
G[5]={'04825'}
G[8]={'04425'}
G[10]={'171250'}
G[13]={'048250'}
G[17]={'02F250'}
G[19]={'048350'}
G[20]={'048250'}
G[22]={'048250'}
G[23]={'051250'}
G[24]={'051250'}
G[25]={'04C250'}
G[28]={'261150'}
G[29]={'261150'}
G[30]={'261150'}
G[31]={'261250'}
G[32]={'171350','043350'}
G[34]={'048250'}
G[36]={'04875'}
G[38]={'048250'}
G[55]={'048500'}
G[56]={'048150'}
G[57]={'048250'}
G[58]={'048250'}
G[64]={'048250'}
G[65]={'048250'}
G[66]={'04825'}
G[67]={'04875'}
G[68]={'048150'}
G[69]={'04825'}
G[70]={'048150'}
G[74]={'04875'}
G[75]={'04875'}
G[77]={'04C250'}
G[78]={'04825'}
G[79]={'04825'}
G[80]={'04825'}
G[81]={'04C250'}
G[82]={'171150'}
G[89]={'048250'}
G[90]={'048250'}
G[91]={'048250'}
G[92]={'048250'}
G[93]={'04875'}
G[95]={'04875'}
G[97]={'04825'}
G[98]={'048500'}
G[99]={'044350'}
G[101]={'048350'}
G[102]={'048250'}
G[105]={'043350','211350'}
G[106]={'04825'}
G[107]={'04825'}
G[110]={'17110'}
G[111]={'04825'}
G[112]={'04875'}
G[113]={'17110'}
G[114]={'048350'}
G[115]={'048350'}
G[116]={'048250'}
G[118]={'04825'}
G[119]={'04875'}
G[120]={'04875'}
G[121]={'04825'}
G[122]={'048350'}
G[123]={'04825'}
G[124]={'048150'}
G[125]={'048150'}
G[126]={'048250'}
G[127]={'048150'}
G[128]={'048250'}
G[135]={'04875'}
G[142]={'048250'}
G[143]={'04875'}
G[144]={'04825'}
G[145]={'048150'}
G[146]={'04825'}
G[147]={'048250'}
G[150]={'048250'}
G[151]={'048250'}
G[153]={'048250'}
G[155]={'048350'}
G[161]={'02F250'}
G[162]={'171350','1D5350'}
G[163]={'04825'}
G[164]={'04875'}
G[165]={'04875'}
G[166]={'048500'}
G[167]={'02F250'}
G[168]={'02F250'}
G[169]={'048350'}
G[173]={'04875'}
G[174]={'048250'}
G[177]={'048150'}
G[178]={'048150'}
G[180]={'048350'}
G[181]={'048250'}
G[184]={'048150'}
G[189]={'015250','057-250'}
G[198]={'04875'}
G[199]={'02F250'}
G[200]={'048150'}
G[201]={'01575','057-75'}
G[202]={'048250'}
G[203]={'048150'}
G[204]={'048250'}
G[205]={'048250'}
G[206]={'048350'}
G[207]={'048350'}
G[209]={'015250','057-250'}
G[210]={'01575','057-75'}
G[211]={'1D5350','211350'}
G[212]={'048500'}
G[213]={'015250','057-250'}
G[214]={'048250'}
G[215]={'04875'}
G[216]={'04C250'}
G[217]={'02F350'}
G[219]={'048350'}
G[221]={'048150'}
G[222]={'048150'}
G[223]={'048350'}
G[224]={'02F250'}
G[225]={'04825'}
G[226]={'048150'}
G[227]={'04825'}
G[228]={'048150'}
G[229]={'04825'}
G[230]={'04875'}
G[232]={'04410'}
G[235]={'05110'}
G[237]={'02F250'}
G[238]={'04410'}
G[240]={'04875'}
G[243]={'04475'}
G[244]={'04825'}
G[245]={'048150'}
G[246]={'048150'}
G[247]={'051350'}
G[248]={'048150'}
G[249]={'048350'}
G[250]={'02F75'}
G[253]={'1D5500'}
G[255]={'02F350'}
G[256]={'02F250'}
G[262]={'04825'}
G[263]={'02F250'}
G[267]={'02F250'}
G[268]={'04825'}
G[269]={'04825'}
G[270]={'04875'}
G[272]={'261150'}
G[273]={'02F25'}
G[274]={'02F25'}
G[278]={'02F250'}
G[279]={'048250'}
G[280]={'02F75'}
G[281]={'04825'}
G[283]={'02F350'}
G[284]={'04825'}
G[285]={'04875'}
G[286]={'048150'}
G[287]={'02F150','036150'}
G[289]={'048150'}
G[290]={'04875'}
G[291]={'02F75','03675'}
G[292]={'04875'}
G[293]={'048250'}
G[294]={'02F250'}
G[295]={'02F250'}
G[296]={'02F350'}
G[297]={'02F250'}
G[298]={'02F25'}
G[299]={'02F250'}
G[301]={'02F75'}
G[302]={'02F25'}
G[303]={'02F250'}
G[304]={'02F350'}
G[305]={'02F75'}
G[306]={'02F25'}
G[307]={'02F350'}
G[309]={'02F250'}
G[310]={'02F25','03625'}
G[311]={'02F250','036250'}
G[312]={'02F250','036250'}
G[313]={'02F250','036250'}
G[314]={'02F250','036250'}
G[315]={'02F250','036250'}
G[317]={'02F350','036350'}
G[318]={'02F25','03625'}
G[319]={'02F150','036150'}
G[320]={'02F350','036350'}
G[321]={'04825'}
G[322]={'02F75'}
G[323]={'048250'}
G[324]={'02F150'}
G[325]={'04825'}
G[328]={'04875'}
G[329]={'04875'}
G[331]={'048250'}
G[332]={'048150'}
G[333]={'04875'}
G[334]={'048150'}
G[337]={'048150'}
G[343]={'04810'}
G[344]={'04825'}
G[345]={'04825'}
G[346]={'048250'}
G[347]={'04875'}
G[348]={'015500','057-500'}
G[351]={'015250','057-250'}
G[353]={'02F250'}
G[354]={'044250'}
G[355]={'04410'}
G[356]={'044150'}
G[357]={'044150'}
G[358]={'044250'}
G[359]={'04425'}
G[360]={'04475'}
G[361]={'044150'}
G[362]={'04475'}
G[364]={'044250'}
G[365]={'044250'}
G[366]={'04475'}
G[367]={'044250'}
G[368]={'044250'}
G[369]={'04425'}
G[370]={'044250'}
G[371]={'044250'}
G[372]={'044250'}
G[373]={'04875'}
G[374]={'044250'}
G[375]={'044250'}
G[376]={'044250'}
G[377]={'048250'}
G[378]={'02F350'}
G[379]={'044150','171150'}
G[380]={'044250'}
G[381]={'044250'}
G[382]={'044500'}
G[383]={'044150'}
G[384]={'02F250','036250'}
G[385]={'02F250'}
G[386]={'048250'}
G[387]={'048350'}
G[388]={'048350'}
G[391]={'048250'}
G[392]={'04825'}
G[393]={'04825'}
G[395]={'04825'}
G[396]={'048500'}
G[398]={'044250'}
G[399]={'048250'}
G[400]={'02F25','03625'}
G[404]={'044150'}
G[405]={'04425'}
G[407]={'04425'}
G[408]={'044250'}
G[409]={'044150'}
G[411]={'044250'}
G[412]={'036250','02F250'}
G[413]={'02F75','03675'}
G[414]={'02F150','036150'}
G[415]={'02F10','03610'}
G[416]={'02F250'}
G[417]={'02F150','036150'}
G[418]={'02F250'}
G[419]={'02F75','03675'}
G[420]={'02F150','036150'}
G[421]={'044250'}
G[422]={'044250'}
G[423]={'044250'}
G[424]={'044250'}
G[425]={'044150'}
G[426]={'044350'}
G[427]={'044250'}
G[428]={'04425'}
G[429]={'04475'}
G[430]={'044150'}
G[432]={'02F150','036150'}
G[433]={'02F150','036150'}
G[434]={'048150'}
G[435]={'044250'}
G[436]={'02F25'}
G[437]={'044250'}
G[438]={'044150'}
G[439]={'04425'}
G[440]={'04475'}
G[441]={'04475'}
G[442]={'044250'}
G[443]={'044250'}
G[444]={'04425'}
G[445]={'044150'}
G[446]={'04425'}
G[447]={'044250'}
G[448]={'04475'}
G[449]={'04475'}
G[450]={'044350'}
G[451]={'044500'}
G[452]={'044350'}
G[453]={'04875'}
G[454]={'02F10'}
G[455]={'02F150'}
G[460]={'04475'}
G[461]={'04475'}
G[464]={'02F250'}
G[465]={'02F150'}
G[466]={'02F250'}
G[468]={'02F25'}
G[469]={'04875'}
G[470]={'02F350'}
G[471]={'048250'}
G[472]={'02F75'}
G[473]={'02F25'}
G[474]={'02F250'}
G[477]={'044250'}
G[478]={'044150'}
G[479]={'044250'}
G[480]={'044250'}
G[481]={'04410'}
G[482]={'04410'}
G[484]={'048250'}
G[485]={'015250','057-250'}
G[486]={'045350'}
G[489]={'045500'}
G[491]={'044350'}
G[492]={'044250'}
G[493]={'044150'}
G[494]={'04475'}
G[496]={'04425'}
G[498]={'04C350'}
G[499]={'044250'}
G[500]={'048250'}
G[501]={'044250'}
G[502]={'044150'}
G[503]={'04C250'}
G[504]={'048250'}
G[505]={'048150'}
G[506]={'04C150'}
G[508]={'04C350'}
G[509]={'044250'}
G[510]={'04875'}
G[511]={'04875'}
G[512]={'048250'}
G[513]={'04475'}
G[514]={'02F75'}
G[515]={'044350'}
G[516]={'044150'}
G[517]={'04475'}
G[518]={'044250'}
G[519]={'044250'}
G[520]={'044350'}
G[521]={'044250'}
G[522]={'04825'}
G[523]={'048250'}
G[524]={'044500'}
G[525]={'04875'}
G[526]={'02F150'}
G[527]={'044250'}
G[528]={'044250'}
G[529]={'044250'}
G[530]={'044250'}
G[532]={'044250'}
G[533]={'04C250'}
G[537]={'048250'}
G[538]={'04825'}
G[539]={'044250'}
G[540]={'048350'}
G[541]={'044250'}
G[542]={'048350'}
G[543]={'048500'}
G[544]={'044350'}
G[545]={'044150'}
G[546]={'044350'}
G[547]={'044350'}
G[549]={'044250'}
G[550]={'044250'}
G[552]={'044250'}
G[553]={'044350'}
G[554]={'02F250'}
G[555]={'048250'}
G[556]={'044250'}
G[557]={'044250'}
G[560]={'04825'}
G[564]={'048250'}
G[565]={'048250'}
G[566]={'044250'}
G[567]={'044250'}
G[568]={'04C250'}
G[569]={'04C250'}
G[570]={'04C250'}
G[571]={'04C250'}
G[572]={'04C250'}
G[573]={'04C350'}
G[574]={'048250'}
G[575]={'015250','057-250'}
G[576]={'015350','057-350'}
G[577]={'015250','057-250'}
G[578]={'015250','057-250'}
G[580]={'015250','057-250'}
G[581]={'212250'}
G[582]={'212250'}
G[584]={'212250'}
G[585]={'212150'}
G[586]={'212250'}
G[587]={'015250','057-250'}
G[588]={'21225'}
G[589]={'212250'}
G[590]={'04475'}
G[591]={'212350'}
G[592]={'212350'}
G[595]={'015150','057-150'}
G[596]={'212250'}
G[597]={'015150','057-150'}
G[598]={'212250'}
G[599]={'01525','057-25'}
G[600]={'015250','057-250'}
G[601]={'015250','057-250'}
G[602]={'04875'}
G[603]={'01575','057-75'}
G[604]={'015250','057-250'}
G[605]={'015250','057-250'}
G[606]={'01525','057-25'}
G[607]={'015150','057-150'}
G[608]={'015350','057-350'}
G[609]={'015250','057-250'}
G[610]={'015250','057-250'}
G[611]={'015350','057-350'}
G[613]={'015350','057-350'}
G[614]={'015150','057-150'}
G[617]={'015250','057-250'}
G[618]={'015500','057-500'}
G[620]={'01575','057-75'}
G[621]={'015250','057-250'}
G[622]={'048250'}
G[623]={'015350','057-350'}
G[627]={'015150','057-150'}
G[628]={'015250','057-250'}
G[629]={'212250'}
G[631]={'02F250'}
G[632]={'02F250'}
G[633]={'02F250'}
G[637]={'02F250'}
G[638]={'21225'}
G[639]={'212250'}
G[640]={'04C250'}
G[641]={'21225'}
G[643]={'212250'}
G[644]={'212250'}
G[645]={'21225'}
G[646]={'212350'}
G[647]={'02F350'}
G[648]={'015350','057-350'}
G[650]={'04C250'}
G[654]={'044250'}
G[655]={'04C25'}
G[658]={'048250'}
G[659]={'04875'}
G[660]={'048250'}
G[661]={'048350'}
G[662]={'015250','057-250'}
G[663]={'01525','057-25'}
G[664]={'015250','057-250'}
G[665]={'015250','057-250'}
G[666]={'015350','057-350'}
G[667]={'015350','057-350'}
G[668]={'01575','057-75'}
G[669]={'015250','057-250'}
G[670]={'015250','057-250'}
G[671]={'212250'}
G[672]={'04C250'}
G[673]={'212250'}
G[674]={'04C25'}
G[675]={'04C25'}
G[676]={'212250'}
G[677]={'04C250'}
G[678]={'04C250'}
G[679]={'04C250'}
G[680]={'04C350'}
G[681]={'048250'}
G[682]={'048350'}
G[683]={'02F75'}
G[684]={'048350'}
G[685]={'048350'}
G[686]={'02F75'}
G[689]={'02F250'}
G[690]={'02F150'}
G[691]={'048350'}
G[693]={'02F250'}
G[694]={'048250'}
G[695]={'02F25'}
G[696]={'02F250'}
G[697]={'048350'}
G[698]={'04C250'}
G[699]={'04C250'}
G[700]={'02F250'}
G[701]={'04C250'}
G[702]={'04C25'}
G[703]={'015150','057-150'}
G[704]={'02F250'}
G[705]={'015350','057-350'}
G[706]={'02F250'}
G[707]={'02F25'}
G[708]={'02F150'}
G[717]={'048350'}
G[718]={'02F150'}
G[719]={'02F250'}
G[720]={'02F75'}
G[721]={'02F250'}
G[722]={'02F250'}
G[723]={'02F150'}
G[724]={'02F250'}
G[725]={'02F75'}
G[726]={'02F150'}
G[729]={'02F150'}
G[730]={'02F75'}
G[731]={'02F350'}
G[732]={'048250'}
G[733]={'02F250'}
G[738]={'02F75'}
G[739]={'02F250'}
G[741]={'02F150'}
G[742]={'05110'}
G[743]={'051250'}
G[744]={'051250'}
G[745]={'051250'}
G[746]={'051250'}
G[748]={'051250'}
G[749]={'051150'}
G[751]={'051150'}
G[754]={'051250'}
G[756]={'051250'}
G[758]={'051250'}
G[759]={'051250'}
G[760]={'051350'}
G[761]={'051350'}
G[762]={'02F350'}
G[764]={'051150'}
G[765]={'051250'}
G[766]={'051250'}
G[767]={'05125'}
G[768]={'051350'}
G[769]={'05175'}
G[770]={'051250'}
G[771]={'051250'}
G[772]={'051150'}
G[773]={'051250'}
G[775]={'05175'}
G[776]={'051350'}
G[780]={'051350'}
G[781]={'051250'}
G[782]={'04C250'}
G[784]={'04C250','212250'}
G[785]={'04C75','21275'}
G[786]={'04C250','212250'}
G[787]={'04C75','21275'}
G[791]={'04C250','212250'}
G[793]={'04C350'}
G[806]={'04C250','212250'}
G[809]={'04C75','21275'}
G[812]={'04C350','212350'}
G[815]={'04C250','212250'}
G[816]={'04C250','212250'}
G[819]={'04C250'}
G[821]={'04C350'}
G[822]={'04C75'}
G[824]={'212250'}
G[825]={'04C250','212250'}
G[827]={'04C250','212250'}
G[828]={'04C10','21210'}
G[829]={'04C75','21275'}
G[830]={'04C250','212250'}
G[831]={'04C250','212250'}
G[832]={'04C150','212150'}
G[833]={'051150'}
G[834]={'04C250','212250','1D6250'}
G[835]={'04C250','212250','1D6250'}
G[836]={'015350','057-350'}
G[837]={'04C150','212150'}
G[840]={'04C75','21275'}
G[842]={'04C250','212250'}
G[843]={'051250'}
G[844]={'04C250'}
G[845]={'04C250'}
G[846]={'051250'}
G[847]={'04C250'}
G[848]={'044250'}
G[849]={'051250'}
G[850]={'04C150'}
G[851]={'04C150'}
G[852]={'04C150'}
G[853]={'044150'}
G[854]={'05125'}
G[855]={'04C350'}
G[858]={'1D6250'}
G[860]={'05110'}
G[861]={'051250'}
G[862]={'04C250'}
G[863]={'1D6350'}
G[864]={'044350'}
G[865]={'1D6250'}
G[866]={'1D6250'}
G[867]={'04C250'}
G[868]={'212250'}
G[869]={'04C250'}
G[870]={'051150'}
G[871]={'04C250'}
G[872]={'04C250'}
G[873]={'051350'}
G[874]={'05125'}
G[875]={'04C250'}
G[876]={'04C350'}
G[877]={'051250'}
G[878]={'04C250'}
G[879]={'04C150'}
G[880]={'051250'}
G[881]={'04C350'}
G[882]={'051350'}
G[883]={'051150'}
G[884]={'051150'}
G[885]={'051150'}
G[886]={'05110'}
G[887]={'1D6150'}
G[888]={'1D6250'}
G[890]={'1D610'}
G[891]={'1D6250','04375'}
G[892]={'1D610'}
G[893]={'04C250'}
G[894]={'1D6150'}
G[895]={'1D6250'}
G[896]={'1D6350'}
G[897]={'051350'}
G[898]={'1D6350'}
G[899]={'04C350'}
G[900]={'1D675'}
G[901]={'1D6150'}
G[902]={'1D6250'}
G[903]={'04C250'}
G[905]={'04C250'}
G[906]={'04C500'}
G[907]={'051350'}
G[908]={'212350'}
G[909]={'212350'}
G[913]={'051350'}
G[914]={'051350'}
G[924]={'04C350'}
G[927]={'04575'}
G[930]={'045250'}
G[931]={'045250'}
G[932]={'045250'}
G[934]={'045150'}
G[935]={'045350'}
G[936]={'05110'}
G[937]={'04575'}
G[938]={'045250'}
G[940]={'04575'}
G[941]={'045250'}
G[942]={'02F250'}
G[943]={'02F350'}
G[944]={'04575'}
G[945]={'045250'}
G[947]={'045250'}
G[948]={'04575'}
G[949]={'045250'}
G[950]={'045150'}
G[951]={'045350'}
G[952]={'045250'}
G[953]={'045250'}
G[954]={'045150'}
G[955]={'045250'}
G[956]={'045250'}
G[957]={'045150'}
G[958]={'045250'}
G[959]={'1D6250'}
G[962]={'044350'}
G[963]={'045150'}
G[965]={'04575'}
G[966]={'045250'}
G[967]={'045150'}
G[968]={'045350'}
G[969]={'212250'}
G[970]={'045250'}
G[971]={'02F75'}
G[973]={'045250'}
G[976]={'045500'}
G[977]={'241150'}
G[978]={'045250'}
G[979]={'04575'}
G[981]={'045250'}
G[982]={'045250'}
G[983]={'036250'}
G[984]={'045150'}
G[985]={'045250'}
G[986]={'045250'}
G[990]={'04525'}
G[991]={'045250'}
G[992]={'171150'}
G[993]={'04575'}
G[994]={'045250'}
G[995]={'04575'}
G[1000]={'05110'}
G[1001]={'036350'}
G[1002]={'036250'}
G[1003]={'036250'}
G[1004]={'05110'}
G[1007]={'045150'}
G[1008]={'045250'}
G[1009]={'045350'}
G[1010]={'04575'}
G[1011]={'045250'}
G[1012]={'045350'}
G[1013]={'044250'}
G[1014]={'044500'}
G[1016]={'045250'}
G[1017]={'045350'}
G[1018]={'05110'}
G[1020]={'045350'}
G[1021]={'045250'}
G[1022]={'045250'}
G[1023]={'045150'}
G[1024]={'04575'}
G[1025]={'045250'}
G[1026]={'045250'}
G[1027]={'045250'}
G[1028]={'045150'}
G[1029]={'04525'}
G[1030]={'045150'}
G[1031]={'045250'}
G[1032]={'045250'}
G[1033]={'045250'}
G[1034]={'045250'}
G[1035]={'045350'}
G[1037]={'04525'}
G[1038]={'04525'}
G[1039]={'04575'}
G[1040]={'01525'}
G[1041]={'04875'}
G[1043]={'048250'}
G[1044]={'045350'}
G[1045]={'045250'}
G[1046]={'045350'}
G[1048]={'044500'}
G[1049]={'051350'}
G[1050]={'02F350'}
G[1051]={'044350'}
G[1052]={'04875'}
G[1053]={'048500'}
G[1054]={'045250'}
G[1055]={'04525'}
G[1056]={'04575'}
G[1057]={'045250'}
G[1058]={'212250'}
G[1059]={'045250'}
G[1060]={'212250'}
G[1061]={'04C25'}
G[1062]={'04C250'}
G[1064]={'05125'}
G[1065]={'051250'}
G[1066]={'044250'}
G[1067]={'044150'}
G[1068]={'04C250'}
G[1069]={'1D6350'}
G[1070]={'04575'}
G[1071]={'036250'}
G[1072]={'03675'}
G[1073]={'036250'}
G[1074]={'03675'}
G[1075]={'03675','04875'}
G[1076]={'036250','048250'}
G[1077]={'03675'}
G[1078]={'036250','048250'}
G[1079]={'036350'}
G[1080]={'036350'}
G[1081]={'1D5500'}
G[1082]={'04575'}
G[1083]={'045250'}
G[1084]={'045250'}
G[1085]={'03625'}
G[1086]={'044350'}
G[1090]={'1D6350'}
G[1091]={'04525'}
G[1092]={'1D6150'}
G[1093]={'1D6250'}
G[1094]={'1D675'}
G[1095]={'1D675'}
G[1096]={'1D6250'}
G[1098]={'044250'}
G[1102]={'051500'}
G[1109]={'044350'}
G[1113]={'044350'}
G[1123]={'26125'}
G[1124]={'26175'}
G[1125]={'261250'}
G[1126]={'261250'}
G[1131]={'051250'}
G[1134]={'045250'}
G[1136]={'051500'}
G[1138]={'02F250'}
G[1139]={'02F500'}
G[1140]={'045250'}
G[1141]={'02F250'}
G[1142]={'045350'}
G[1143]={'045250'}
G[1144]={'1D6350'}
G[1145]={'04C75'}
G[1146]={'04C150'}
G[1147]={'04C250'}
G[1148]={'212250'}
G[1149]={'05175'}
G[1150]={'051250'}
G[1151]={'051350'}
G[1152]={'05175'}
G[1153]={'04C250'}
G[1154]={'051150'}
G[1159]={'04475'}
G[1160]={'044150'}
G[1164]={'044250'}
G[1167]={'04525'}
G[1176]={'1D6250'}
G[1178]={'1D625'}
G[1179]={'036250'}
G[1180]={'1D625','01525','057-25'}
G[1182]={'015250','057-250'}
G[1184]={'04C75'}
G[1185]={'26175'}
G[1187]={'1D6250'}
G[1188]={'17125'}
G[1189]={'1D625'}
G[1190]={'1D675'}
G[1194]={'1D675'}
G[1195]={'051350'}
G[1196]={'05125'}
G[1197]={'051250'}
G[1198]={'211350','045350'}
G[1199]={'211350','045350'}
G[1200]={'211500','045500'}
G[1201]={'04C250'}
G[1202]={'04C250'}
G[1204]={'048250'}
G[1205]={'051250'}
G[1219]={'04825'}
G[1220]={'048250'}
G[1221]={'1D6250'}
G[1222]={'048250'}
G[1238]={'04C150'}
G[1239]={'04C150'}
G[1240]={'212250'}
G[1248]={'04825'}
G[1249]={'04875'}
G[1258]={'048250'}
G[1260]={'04825'}
G[1261]={'04C250'}
G[1262]={'04C250'}
G[1264]={'04875'}
G[1266]={'04825'}
G[1267]={'1D5500'}
G[1270]={'1D6250'}
G[1275]={'045350'}
G[1324]={'048150'}
G[1338]={'02F250'}
G[1339]={'02F75'}
G[1358]={'044250'}
G[1359]={'04410'}
G[1360]={'02F250'}
G[1361]={'04C25'}
G[1362]={'04C25'}
G[1363]={'04825'}
G[1364]={'048250'}
G[1365]={'04C350'}
G[1366]={'04C350'}
G[1367]={'05C-250','05D250'}
G[1368]={'05D-250','05C250'}
G[1372]={'04425'}
G[1382]={'05D-250','05C250'}
G[1383]={'044350'}
G[1385]={'05D250','05C-250'}
G[1387]={'048350'}
G[1388]={'04425'}
G[1391]={'044150'}
G[1393]={'1D575','04375'}
G[1394]={'043500'}
G[1395]={'048150'}
G[1396]={'048250'}
G[1398]={'048250'}
G[1418]={'04C75'}
G[1419]={'04C250'}
G[1420]={'04C150'}
G[1421]={'048250'}
G[1423]={'04825'}
G[1424]={'04C350'}
G[1425]={'048150'}
G[1426]={'04C350'}
G[1427]={'04C250'}
G[1428]={'04C250'}
G[1430]={'04C250'}
G[1431]={'04C25'}
G[1432]={'04C75'}
G[1434]={'044250'}
G[1435]={'044250'}
G[1436]={'04C250'}
G[1437]={'045150'}
G[1438]={'045250'}
G[1439]={'045250'}
G[1440]={'045350'}
G[1444]={'04C350'}
G[1445]={'04C350'}
G[1447]={'04875'}
G[1448]={'02F250'}
G[1452]={'1D7250'}
G[1453]={'02F75'}
G[1454]={'02F250'}
G[1455]={'02F75'}
G[1456]={'02F250'}
G[1457]={'02F150'}
G[1458]={'02F250'}
G[1459]={'02F250'}
G[1465]={'045150'}
G[1466]={'02F250'}
G[1467]={'02F250'}
G[1468]={'1D510'}
G[1469]={'02F150'}
G[1470]={'044150'}
G[1475]={'02F500'}
G[1477]={'04825'}
G[1480]={'04475'}
G[1481]={'044250'}
G[1482]={'044250'}
G[1483]={'1D625'}
G[1488]={'043350'}
G[1489]={'05125'}
G[1490]={'05110'}
G[1491]={'1D6250'}
G[1492]={'1D675'}
G[1499]={'21210','04C10'}
G[1578]={'02F250'}
G[1579]={'03675'}
G[1580]={'036250'}
G[1581]={'045250'}
G[1582]={'045250'}
G[1598]={'048250'}
G[1618]={'048250'}
G[1656]={'05125'}
G[1657]={'044350'}
G[1690]={'171250'}
G[1691]={'171250'}
G[1707]={'171150'}
G[1878]={'17110'}
G[1918]={'04C25'}
G[2038]={'036250'}
G[2039]={'03625'}
G[2040]={'048250','036250'}
G[2041]={'03625'}
G[2078]={'02F250'}
G[2098]={'02F250'}
G[2118]={'045250'}
G[2138]={'045250'}
G[2139]={'045250'}
G[2160]={'02F25','03625'}
G[2178]={'045250'}
G[2199]={'036150'}
G[2200]={'036150'}
G[2202]={'212250'}
G[2203]={'212250'}
G[2240]={'02F350'}
G[2258]={'212250'}
G[2279]={'02F350'}
G[2280]={'051350'}
G[2283]={'04C150'}
G[2284]={'04C150'}
G[2318]={'212250'}
G[2338]={'21210'}
G[2339]={'212250'}
G[2340]={'04C75'}
G[2341]={'212250'}
G[2342]={'044250'}
G[2361]={'036500'}
G[2383]={'04C75'}
G[2399]={'04510'}
G[2418]={'015350','057-350'}
G[2438]={'045150'}
G[2440]={'05110'}
G[2459]={'045350'}
G[2498]={'04510'}
G[2499]={'045350'}
G[2500]={'02F250'}
G[2501]={'02F250'}
G[2518]={'045350'}
G[2519]={'04510'}
G[2520]={'045250'}
G[2541]={'045250'}
G[2561]={'045350'}
G[2605]={'171250'}
G[2641]={'171250'}
G[2661]={'17125'}
G[2741]={'045250','051250'}
G[2742]={'212250'}
G[2746]={'04825'}
G[2747]={'05110','04510'}
G[2748]={'21210','04510'}
G[2749]={'05110','04510'}
G[2750]={'05110','04510'}
G[2766]={'015250','057-250'}
G[2767]={'015350','057-350'}
G[2768]={'171500'}
G[2781]={'171350'}
G[2782]={'04475'}
G[2821]={'045250'}
G[2822]={'051250'}
G[2841]={'04C250'}
G[2862]={'051150'}
G[2863]={'051150'}
G[2864]={'17125'}
G[2865]={'171250'}
G[2866]={'045150'}
G[2867]={'04575'}
G[2869]={'045150'}
G[2870]={'045150'}
G[2871]={'045250'}
G[2875]={'171250'}
G[2876]={'171350'}
G[2877]={'1D7250'}
G[2879]={'045250'}
G[2880]={'1D7250'}
G[2881]={'1D725'}
G[2902]={'05175'}
G[2903]={'051250'}
G[2922]={'036350'}
G[2923]={'03625'}
G[2924]={'036350'}
G[2925]={'03625'}
G[2926]={'036250'}
G[2927]={'03610'}
G[2928]={'048250','036250'}
G[2929]={'036250'}
G[2930]={'036500'}
G[2931]={'03610'}
G[2932]={'212250'}
G[2933]={'044250'}
G[2934]={'044250'}
G[2935]={'212150'}
G[2936]={'212350'}
G[2937]={'044500'}
G[2938]={'044500'}
G[2939]={'04525'}
G[2940]={'04525'}
G[2942]={'045250'}
G[2943]={'045150'}
G[2944]={'045250'}
G[2946]={'02F250'}
G[2948]={'02F250','036250'}
G[2950]={'04C250'}
G[2963]={'02F10'}
G[2964]={'02F250'}
G[2965]={'05110'}
G[2966]={'051250'}
G[2967]={'05110'}
G[2968]={'051250'}
G[2969]={'045150'}
G[2970]={'045150'}
G[2972]={'045350'}
G[2973]={'04C250'}
G[2974]={'04C250'}
G[2975]={'04C150'}
G[2976]={'04C350'}
G[2977]={'02F10'}
G[2978]={'04C75'}
G[2979]={'04C250'}
G[2980]={'04C250'}
G[2981]={'04C25'}
G[2982]={'045250'}
G[2987]={'04C250'}
G[2988]={'1D7250'}
G[2989]={'1D7250'}
G[2990]={'1D775','02F75'}
G[2991]={'1D7350','02F350'}
G[2992]={'1D725','02F25'}
G[2993]={'1D775'}
G[2994]={'1D7500'}
G[2995]={'044250'}
G[3002]={'21275'}
G[3062]={'051350'}
G[3063]={'051150'}
G[3065]={'21275'}
G[3082]={'21275'}
G[3083]={'21275'}
G[3084]={'21275'}
G[3085]={'21275'}
G[3086]={'21275'}
G[3088]={'04C75'}
G[3089]={'04C75'}
G[3090]={'04C75'}
G[3091]={'05175'}
G[3092]={'05175'}
G[3093]={'05175'}
G[3095]={'04475'}
G[3096]={'04475'}
G[3097]={'04475'}
G[3098]={'04475'}
G[3099]={'04475'}
G[3101]={'04875'}
G[3104]={'04875'}
G[3105]={'04875'}
G[3121]={'04C75'}
G[3122]={'21225'}
G[3123]={'212250'}
G[3124]={'212250'}
G[3125]={'212250'}
G[3126]={'212250'}
G[3127]={'212250'}
G[3128]={'212250'}
G[3129]={'212250'}
G[3130]={'04525'}
G[3161]={'171250'}
G[3181]={'02F350'}
G[3182]={'02F250'}
G[3201]={'02F250'}
G[3221]={'04410'}
G[3261]={'05110'}
G[3281]={'04C250'}
G[3301]={'051250'}
G[3341]={'044350'}
G[3362]={'171250'}
G[3367]={'02F250'}
G[3368]={'02F250'}
G[3369]={'051250'}
G[3370]={'045250'}
G[3371]={'02F250'}
G[3372]={'02F250'}
G[3378]={'045350'}
G[3449]={'02F75'}
G[3461]={'02F500'}
G[3504]={'04C75'}
G[3505]={'04C150'}
G[3506]={'04C150'}
G[3507]={'04C350'}
G[3513]={'04C350'}
G[3514]={'04C350'}
G[3524]={'045150'}
G[3566]={'02F500'}
G[3568]={'04475'}
G[3570]={'044250'}
G[3601]={'015350','057-350'}
G[3636]={'048350'}
G[3639]={'226150'}
G[3641]={'227150'}
G[3643]={'227150'}
G[3661]={'045250'}
G[3701]={'02F250'}
G[3702]={'02F10'}
G[3721]={'015500','057-500'}
G[3741]={'048250'}
G[3761]={'051250'}
G[3762]={'05110'}
G[3763]={'04510'}
G[3764]={'045250'}
G[3765]={'045150'}
G[3781]={'04510'}
G[3782]={'05110'}
G[3783]={'241150'}
G[3784]={'05110'}
G[3785]={'045250'}
G[3786]={'051250'}
G[3787]={'04525'}
G[3788]={'04525'}
G[3789]={'04510'}
G[3790]={'04510'}
G[3791]={'045250'}
G[3792]={'04525'}
G[3803]={'04575'}
G[3804]={'05175'}
G[3821]={'212250'}
G[3822]={'04C250'}
G[3823]={'02F250'}
G[3824]={'02F250'}
G[3825]={'02F250'}
G[3841]={'04525'}
G[3842]={'04575'}
G[3843]={'045250','1D7250'}
G[3901]={'044250'}
G[3902]={'044350'}
G[3905]={'048250'}
G[3906]={'051250'}
G[3907]={'051350'}
G[3921]={'1D675','04325'}
G[3922]={'1D6250','04375'}
G[3923]={'1D625','04310'}
G[3924]={'1D6350','043150'}
G[3981]={'04C250'}
G[3982]={'04C250'}
G[4001]={'04C350'}
G[4004]={'043500'}
G[4021]={'04C350'}
G[4061]={'044250'}
G[4081]={'04C250'}
G[4082]={'04C250'}
G[4120]={'051250'}
G[4125]={'045150'}
G[4131]={'045150'}
G[4135]={'045150'}
G[4161]={'045250'}
G[4182]={'045250'}
G[4183]={'045150'}
G[4184]={'048150'}
G[4186]={'048250'}
G[4241]={'048250'}
G[4242]={'048250'}
G[4261]={'045350'}
G[4262]={'036250'}
G[4263]={'036250'}
G[4264]={'048250'}
G[4265]={'045250'}
G[4266]={'1D5500'}
G[4281]={'045150'}
G[4282]={'048250'}
G[4283]={'02F250'}
G[4286]={'02F250'}
G[4293]={'044250'}
G[4294]={'044250'}
G[4297]={'045250','1D7250'}
G[4298]={'04525','1D725'}
G[4300]={'212250'}
G[4322]={'048350'}
G[4341]={'02F250'}
G[4362]={'02F350'}
G[4450]={'171350'}
G[4493]={'04510'}
G[4494]={'04C10'}
G[4496]={'171250'}
G[4502]={'1D6250'}
G[4504]={'171250'}
G[4505]={'044250'}
G[4506]={'044250'}
G[4508]={'04525'}
G[4509]={'21210'}
G[4510]={'1D5500'}
G[4511]={'043500'}
G[4512]={'036350'}
G[4513]={'036350'}
G[4521]={'04C250'}
G[4542]={'05125'}
G[4581]={'04525'}
G[4642]={'044350'}
G[4681]={'045250'}
G[4701]={'045250'}
G[4721]={'04C250'}
G[4722]={'04575'}
G[4723]={'04575'}
G[4724]={'04C250'}
G[4725]={'04575'}
G[4726]={'0A9250'}
G[4727]={'04575'}
G[4728]={'04575'}
G[4730]={'04575'}
G[4731]={'04575'}
G[4732]={'04575'}
G[4733]={'04575'}
G[4734]={'0A9350'}
G[4735]={'0A9500'}
G[4740]={'045350'}
G[4741]={'04C250'}
G[4761]={'04510'}
G[4762]={'045150'}
G[4763]={'045350'}
G[4764]={'04825'}
G[4765]={'048250'}
G[4766]={'04810'}
G[4767]={'051150'}
G[4768]={'044350'}
G[4769]={'04410'}
G[4770]={'051250'}
G[4771]={'211500'}
G[4808]={'24175'}
G[4809]={'241250'}
G[4810]={'0A975'}
G[4811]={'04575'}
G[4812]={'04575'}
G[4813]={'045250'}
G[4821]={'051250'}
G[4841]={'051250'}
G[4842]={'241250'}
G[4864]={'02F250'}
G[4865]={'05175'}
G[4881]={'051250'}
G[4882]={'04C75'}
G[4883]={'051250'}
G[4901]={'045150'}
G[4902]={'1D5250'}
G[4903]={'04C350'}
G[4904]={'051250'}
G[4921]={'04C150'}
G[4941]={'04C250'}
G[4966]={'051250'}
G[4970]={'24D75'}
G[4974]={'04C500','212500','044500','051500'}
G[4981]={'015250','057-250'}
G[4983]={'04C250'}
G[4984]={'261150'}
G[4985]={'261150'}
G[4986]={'045250'}
G[4987]={'051250'}
G[5002]={'048250'}
G[5022]={'04875'}
G[5041]={'04C250'}
G[5048]={'048250'}
G[5049]={'044250'}
G[5052]={'04C150'}
G[5054]={'051250'}
G[5055]={'051250'}
G[5056]={'051350'}
G[5057]={'05175'}
G[5061]={'261250'}
G[5064]={'051250'}
G[5066]={'04810'}
G[5081]={'048350'}
G[5082]={'241250'}
G[5083]={'24175'}
G[5084]={'241150'}
G[5085]={'241150'}
G[5086]={'241250'}
G[5087]={'241250'}
G[5088]={'051250'}
G[5089]={'048250'}
G[5090]={'04810'}
G[5091]={'04810'}
G[5092]={'048250'}
G[5093]={'04410'}
G[5094]={'04410'}
G[5095]={'04410'}
G[5096]={'044250'}
G[5097]={'048250'}
G[5098]={'044250'}
G[5102]={'1D5500'}
G[5121]={'241250'}
G[5123]={'24175'}
G[5128]={'241250'}
G[5141]={'056500'}
G[5143]={'225500'}
G[5144]={'053500'}
G[5145]={'056500'}
G[5146]={'053500'}
G[5147]={'051250'}
G[5148]={'225500'}
G[5163]={'241350'}
G[5181]={'211250'}
G[5201]={'24D75'}
G[5206]={'211250'}
G[5210]={'21175'}
G[5212]={'211250'}
G[5213]={'211250'}
G[5215]={'04810'}
G[5216]={'048250','211250'}
G[5217]={'04875','21175'}
G[5218]={'21125'}
G[5219]={'048250','211250'}
G[5220]={'04875','21175'}
G[5221]={'21125'}
G[5222]={'048250','211250'}
G[5223]={'04875','21175'}
G[5224]={'21125'}
G[5225]={'048250','211250'}
G[5226]={'04875','21175'}
G[5227]={'21125'}
G[5228]={'04410'}
G[5229]={'044250','211250'}
G[5230]={'04475','21175'}
G[5231]={'044250','211250'}
G[5232]={'04475','21175'}
G[5233]={'044250','211250'}
G[5234]={'04475','21175'}
G[5235]={'044250','211250'}
G[5236]={'04475','21175'}
G[5237]={'1D5500','211500'}
G[5238]={'043500','211500'}
G[5243]={'211250'}
G[5244]={'02F10'}
G[5245]={'1D525'}
G[5246]={'1D525'}
G[5247]={'1D525'}
G[5248]={'1D525'}
G[5249]={'04510'}
G[5250]={'04510'}
G[5251]={'211350'}
G[5252]={'1D525'}
G[5253]={'1D5250'}
G[5262]={'211350'}
G[5263]={'211350'}
G[5264]={'211250'}
G[5265]={'211500'}
G[5321]={'045250'}
G[5361]={'051150'}
G[5381]={'051250'}
G[5386]={'051150'}
G[5401]={'21110'}
G[5402]={'21125'}
G[5403]={'21125'}
G[5404]={'21125'}
G[5405]={'21110'}
G[5406]={'21125'}
G[5407]={'21125'}
G[5408]={'21125'}
G[5464]={'211350'}
G[5481]={'04475'}
G[5482]={'044250'}
G[5501]={'1D6150'}
G[5503]={'21110'}
G[5505]={'048500'}
G[5508]={'21125'}
G[5509]={'21125'}
G[5510]={'21125'}
G[5511]={'044500'}
G[5522]={'211150'}
G[5526]={'261350'}
G[5527]={'261250'}
G[5529]={'211250'}
G[5531]={'21125'}
G[5534]={'015350','057-350'}
G[5541]={'02F250','036250'}
G[5561]={'1D6150'}
G[5581]={'051350'}
G[5582]={'21175'}
G[5713]={'045250'}
G[5723]={'051250'}
G[5724]={'051350'}
G[5725]={'044350'}
G[5726]={'04C250'}
G[5727]={'04C75'}
G[5728]={'04C250'}
G[5730]={'04C350'}
G[5741]={'211250'}
G[5821]={'1D6250'}
G[5863]={'171250'}
G[5881]={'05175'}
G[5921]={'26125'}
G[5922]={'26125'}
G[5923]={'26125'}
G[5924]={'26125'}
G[5925]={'26125'}
G[5926]={'26125'}
G[5927]={'26125'}
G[5928]={'26125'}
G[5929]={'26175'}
G[5930]={'26175'}
G[5942]={'211500'}
G[5943]={'1D6250'}
G[5961]={'04425'}
G[6001]={'261250'}
G[6002]={'261250'}
G[6021]={'211150'}
G[6022]={'044250'}
G[6027]={'211350'}
G[6028]={'21175','24175'}
G[6029]={'21175','24175'}
G[6030]={'21175','24175'}
G[6031]={'240250'}
G[6032]={'240250'}
G[6042]={'044250'}
G[6121]={'26110'}
G[6122]={'261150'}
G[6123]={'261150'}
G[6124]={'261150'}
G[6125]={'261250'}
G[6126]={'26110'}
G[6127]={'261150'}
G[6128]={'261150'}
G[6129]={'261150'}
G[6130]={'261250'}
G[6131]={'240250'}
G[6133]={'044250'}
G[6135]={'044250'}
G[6136]={'044250'}
G[6142]={'212250'}
G[6143]={'212250'}
G[6144]={'04410'}
G[6145]={'044250'}
G[6147]={'04475'}
G[6148]={'044350'}
G[6162]={'04C250'}
G[6163]={'044250'}
G[6181]={'04825'}
G[6187]={'048500'}
G[6261]={'04825'}
G[6281]={'04875'}
G[6282]={'051250'}
G[6283]={'051250'}
G[6284]={'051250'}
G[6285]={'048350'}
G[6301]={'051150'}
G[6321]={'04425'}
G[6322]={'04425'}
G[6323]={'04475'}
G[6324]={'044350'}
G[6341]={'04525'}
G[6342]={'04575'}
G[6343]={'045350'}
G[6344]={'04525'}
G[6361]={'05125'}
G[6362]={'05175'}
G[6363]={'05125'}
G[6364]={'051350'}
G[6365]={'04C25','21225'}
G[6381]={'051250'}
G[6382]={'05125'}
G[6384]={'04C75','21275'}
G[6385]={'04C25','21225'}
G[6386]={'04C350','212350'}
G[6387]={'02F25','03625'}
G[6388]={'02F25','03625'}
G[6391]={'02F75','03675'}
G[6392]={'02F350','036350'}
G[6395]={'044250'}
G[6401]={'051150'}
G[6403]={'048500'}
G[6421]={'051250'}
G[6441]={'1D6250'}
G[6442]={'212250'}
G[6461]={'212250'}
G[6462]={'212250'}
G[6481]={'051250'}
G[6482]={'051350'}
G[6503]={'212250'}
G[6504]={'04C250'}
G[6543]={'04C350'}
G[6544]={'04C350'}
G[6548]={'051250'}
G[6561]={'211500','051500'}
G[6562]={'21225'}
G[6563]={'212250'}
G[6564]={'212150'}
G[6565]={'212350'}
G[6571]={'04C350'}
G[6605]={'04410'}
G[6642]={'03B75'}
G[6643]={'03B500'}
G[6644]={'03B500'}
G[6645]={'03B350'}
G[6646]={'03B500'}
G[6681]={'15D250'}
G[6701]={'15D250'}
G[6761]={'04510'}
G[6762]={'26125'}
G[6804]={'043250'}
G[6844]={'26175'}
G[6845]={'261350'}
G[6846]={'2DA10','02F10'}
G[6901]={'2D910','04C10'}
G[6921]={'212350'}
G[6922]={'212350'}
G[7003]={'0A9350'}
G[7025]={'0A925'}
G[7064]={'261350'}
G[7065]={'261350'}
G[7066]={'261350'}
G[7068]={'212350'}
G[7070]={'048350'}
G[7201]={'044250'}
G[7321]={'044250'}
G[7383]={'045150'}
G[7541]={'04C350'}
G[7652]={'03B250'}
G[7653]={'03B250'}
G[7654]={'03B350'}
G[7655]={'03B250'}
G[7656]={'03B500'}
G[7657]={'03B500'}
G[7658]={'03B500'}
G[7659]={'03B250'}
G[7701]={'03B250'}
G[7704]={'03B250'}
G[7721]={'0A9350'}
G[7722]={'03B250'}
G[7723]={'03B250'}
G[7724]={'03B250'}
G[7725]={'0A925'}
G[7726]={'0A925'}
G[7727]={'03B250'}
G[7728]={'03B250'}
G[7729]={'03B250'}
G[7730]={'043250'}
G[7731]={'043350'}
G[7732]={'04375'}
G[7733]={'045250'}
G[7734]={'051250'}
G[7735]={'045250'}
G[7736]={'03B25'}
G[7737]={'03B25'}
G[7738]={'051250'}
G[7791]={'048350'}
G[7792]={'045350'}
G[7793]={'048350'}
G[7794]={'048350'}
G[7795]={'048350'}
G[7796]={'04875'}
G[7798]={'045350'}
G[7799]={'045350'}
G[7800]={'045350'}
G[7801]={'04575'}
G[7802]={'02F350'}
G[7803]={'02F350'}
G[7804]={'02F350'}
G[7805]={'02F350'}
G[7806]={'02F75'}
G[7807]={'036350'}
G[7808]={'036350'}
G[7809]={'036350'}
G[7811]={'036350'}
G[7813]={'044350'}
G[7814]={'044350'}
G[7815]={'37D250'}
G[7816]={'37D250'}
G[7817]={'044350'}
G[7818]={'044350'}
G[7819]={'04475'}
G[7820]={'051350'}
G[7821]={'051350'}
G[7822]={'051350'}
G[7823]={'051350'}
G[7824]={'04C350'}
G[7825]={'05175'}
G[7826]={'04C350'}
G[7827]={'04C350'}
G[7828]={'37D250'}
G[7829]={'37D250'}
G[7830]={'37D250'}
G[7831]={'04C350'}
G[7833]={'212350'}
G[7834]={'212350'}
G[7835]={'212350'}
G[7836]={'212350'}
G[7839]={'37D250'}
G[7840]={'37D250'}
G[7841]={'37D250'}
G[7842]={'37D350'}
G[7843]={'37D500'}
G[7844]={'37D250'}
G[7845]={'37D350'}
G[7846]={'37D500'}
G[7847]={'37D500'}
G[7849]={'37D350'}
G[7850]={'37D350'}
G[7861]={'37D500'}
G[7862]={'37D500'}
G[7881]={'38D250'}
G[7882]={'38D250'}
G[7889]={'38D250'}
G[7890]={'38D250'}
G[7894]={'38D250'}
G[7895]={'38D250'}
G[7899]={'38D250'}
G[7900]={'38D250'}
G[7905]={'38D75'}
G[7907]={'38D350'}
G[7926]={'38D75'}
G[7927]={'38D350'}
G[7928]={'38D350'}
G[7929]={'38D350'}
G[7937]={'38D75'}
G[7938]={'38D75'}
G[7944]={'38D75'}
G[7945]={'38D75'}
G[7961]={'04825'}
G[7962]={'048350'}
G[8149]={'1D5500'}
G[8150]={'043500'}
G[8241]={'03B25'}
G[8242]={'03B25'}
G[8249]={'15D75','046-75'}
G[8266]={'37A75'}
G[8268]={'37975'}
G[8273]={'04475'}
G[8275]={'26110'}
G[8277]={'261150'}
G[8280]={'261150'}
G[8283]={'261250'}
G[8284]={'261250'}
G[8290]={'37A500'}
G[8295]={'379500','379500','379500','379500'}
G[8308]={'261250'}
G[8311]={'1D5250'}
G[8312]={'043250'}
G[8318]={'261250'}
G[8365]={'171250'}
G[8366]={'171250'}
G[8460]={'240350'}
G[8461]={'240350'}
G[8462]={'24025'}
G[8464]={'240350'}
G[8465]={'24025'}
G[8466]={'24075'}
G[8467]={'24075'}
G[8469]={'24075'}
G[8470]={'240350'}
G[8471]={'240350'}
G[8551]={'015150','057-150'}
G[8552]={'01575','057-75'}
G[8554]={'015500','057-500'}
G[8619]={'04375','1D575'}
G[8635]={'04375','1D575'}
G[8636]={'04375','1D575'}
G[8642]={'04375','1D575'}
G[8643]={'04375','1D575'}
G[8644]={'04375','1D575'}
G[8645]={'04375','1D575'}
G[8646]={'04375','1D575'}
G[8647]={'04375','1D575'}
G[8648]={'04375','1D575'}
G[8649]={'04375','1D575'}
G[8650]={'04375','1D575'}
G[8651]={'04375','1D575'}
G[8652]={'04375','1D575'}
G[8653]={'04375','1D575'}
G[8654]={'04375','1D575'}
G[8670]={'04375','1D575'}
G[8671]={'04375','1D575'}
G[8672]={'04375','1D575'}
G[8673]={'04375','1D575'}
G[8674]={'04375','1D575'}
G[8675]={'04375','1D575'}
G[8676]={'04375','1D575'}
G[8677]={'04375','1D575'}
G[8678]={'04375','1D575'}
G[8679]={'04375','1D575'}
G[8680]={'04375','1D575'}
G[8681]={'04375','1D575'}
G[8682]={'04375','1D575'}
G[8683]={'04375','1D575'}
G[8684]={'04375','1D575'}
G[8685]={'04375','1D575'}
G[8686]={'04375','1D575'}
G[8688]={'04375','1D575'}
G[8713]={'04375','1D575'}
G[8714]={'04375','1D575'}
G[8715]={'04375','1D575'}
G[8716]={'04375','1D575'}
G[8717]={'04375','1D575'}
G[8718]={'04375','1D575'}
G[8719]={'04375','1D575'}
G[8720]={'04375','1D575'}
G[8721]={'04375','1D575'}
G[8722]={'04375','1D575'}
G[8723]={'04375','1D575'}
G[8724]={'04375','1D575'}
G[8725]={'04375','1D575'}
G[8726]={'04375','1D575'}
G[8727]={'04375','1D575'}
G[8819]={'045150'}
G[8820]={'036150'}
G[8821]={'02F150'}
G[8822]={'048150'}
G[8823]={'04C150'}
G[8824]={'212150'}
G[8825]={'051150'}
G[8826]={'044150'}
G[8833]={'044150'}
G[8835]={'02F150'}
G[8839]={'036150'}
G[8841]={'04C150'}
G[8843]={'051150'}
G[8845]={'212150'}
G[8856]={'26175'}
G[8860]={'048250'}
G[8861]={'051250'}
G[8866]={'04375','1D575'}
G[8867]={'26175'}
G[9065]={'211150','057-250'}
G[9124]={'211500'}
G[9126]={'211500'}
G[9128]={'211500'}
G[9131]={'211500'}
G[9136]={'211500'}
G[9141]={'211500'}
G[9247]={'21110'}
G[9419]={'261250'}
G[9422]={'261250'}
end

if release >= 31830 then
G[4121]={'04C350'}
G[5507]={'211250'}
G[5513]={'211250'}
G[6241]={'240150'}
G[7486]={'2ED500'}
G[7650]={'329500'}
G[7651]={'329500'}
G[7812]={'03675'}
G[7832]={'04C75'}
G[8276]={'26110'}
G[9178]={'21175'}
G[9188]={'21175'}
G[9197]={'21175'}
end

--	Now the reputation data gets processed into its own table to save space

for questId, reps in pairs(Grail.questReputations) do
	if reps ~= nil then
		local index, mapId, factionId
		local s = ""
		for _, v in pairs(reps) do
			index = strsub(v, 1, 3)
			factionId = tonumber(index, 16)
			mapId = factionId  + Grail.mapAreaBaseReputationChange
if (index == nil) then print("index is nil "..v) end
if (Grail.reputationMapping[index] == nil) then print("no reputation mapping for ", index) end
			Grail:AddQuestToMapArea(questId, mapId, COMBAT_TEXT_SHOW_REPUTATION_TEXT .. " - " .. (Grail.reputationMapping[index] or "EEK"))
			s = s .. Grail:_ReputationCode(v)
		end
		if "" == s then s = nil end
		Grail.questReputations[questId] = s		-- replaces the table with a string to save space
	end
end
Grail:_CleanDatabase()	-- this is called because Grail will do it before this loadable addon is loaded, which means its reputation data will be dirty
Grail.memoryUsage.Reputations = gcinfo() - originalMem


end
