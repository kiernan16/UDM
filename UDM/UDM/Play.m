//
//  Play.m
//  UDM
//
//  Created by Matthew Kiernan on 2/11/14.
//  Copyright (c) 2014 Matthew Kiernan. All rights reserved.
//

#import "Play.h"

@interface Play ()

@end

@implementation Play


int countdownstart;
int race;
int a = 0;
int b = 0;
int r;

-(NSUInteger)supportedInterfaceOrientations
{
    
    return UIInterfaceOrientationMaskLandscape;
    
}

-(void)Race
{
    //Yes array X and Y coordinates
    
 const   NSArray * yesarrayX = @[               @278,	@279,	@280,	@281,	@282,	@283,	@284,
@285,	@286,	@287,	@288,	@289,	@290,	@291,	@292,	@293,	@294,
@295,	@296,	@297,	@298,	@299,	@300,	@301,	@302,	@303,	@304,
@305,	@306,	@307,	@308,	@309,	@310,	@311,	@312,	@313,	@314,
@315,	@316,	@317,	@318,	@319,	@320,	@321,	@322,	@323,	@324,
@325,	@326,	@327,	@328,	@329,	@330,	@331,	@332,	@333,	@334,
@335,	@336,	@337,	@338,	@339,	@340,	@341,	@342,	@343,	@344,
@345,	@346,	@347,	@348,	@349,	@350,	@351,	@352,	@353,	@354,
@355,	@356,	@357,	@358,	@359,	@360,	@361,	@362,	@363,	@364,
@365,	@366,	@367,	@368,	@369,	@370,	@371,	@372,	@373,	@374,
@375,	@376,	@377,	@378,	@379,	@380,	@381,	@382,	@383,	@384,
@385,	@386,	@387,	@388,	@389,	@390,	@391,	@392,	@393,	@394,
@395,	@396,	@397,	@398,	@399,	@400,	@401,	@402,	@403,	@404,
@405,	@406,	@407,	@408,	@409,	@410,	@411,	@412,	@413,	@414,
@415,	@416,	@417,	@418,	@419,	@420,	@421,	@422,	@423,	@424,
@425,	@426,	@427,	@428,	@429,	@430,	@431,	@432,	@433,	@434,
@435,	@436,	@437,	@438,	@439,	@440,	@441,	@442,	@443,	@444,
@445,	@446,	@447,	@448,	@449,	@450,	@451,	@452,	@453,	@454,
@455,	@456,	@457,	@458,	@459,	@460,	@461,	@462,	@463,	@464,
@465,	@466,	@467,	@468,	@469,	@470,	@471,	@472,	@473,	@474,
@475,	@476,	@477,	@478,	@479,	@480,	@481,	@482,	@483,	@484,
@485,	@486,	@487,	@488,	@489,	@490,	@491,	@492,	@493,	@494,
@495,	@496,	@497,	@498,	@499,	@500,	@501,	@502,	@503,	@504,
@505,	@506,	@507,	@508,	@509,	@510,	@511,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,	@512,
@512,	@512,	@512,	@512,	@512,	@512,	@512,	@511,	@510,	@509,
@508,	@507,	@506,	@505,	@504,	@503,	@502,	@501,	@500,	@499,
@498,	@497,	@496,	@495,	@494,	@493,	@492,	@491,	@490,	@489,
@488,	@487,	@486,	@485,	@484,	@483,	@482,	@481,	@480,	@479,
@478,	@477,	@476,	@475,	@474,	@473,	@472,	@471,	@470,	@469,
@468,	@467,	@466,	@465,	@464,	@463,	@462,	@461,	@460,	@459,
@458,	@457,	@456,	@455,	@454,	@453,	@452,	@451,	@450,	@449,
@448,	@447,	@446,	@445,	@444,	@443,	@442,	@441,	@440,	@439,
@438,	@437,	@436,	@435,	@434,	@433,	@432,	@431,	@430,	@429,
@428,	@427,	@426,	@425,	@424,	@423,	@422,	@421,	@420,	@419,
@418,	@417,	@416,	@415,	@414,	@413,	@412,	@411,	@410,	@409,
@408,	@407,	@406,	@405,	@404,	@403,	@402,	@401,	@400,	@399,
@398,	@397,	@396,	@395,	@394,	@393,	@392,	@391,	@390,	@389,
@388,	@387,	@386,	@385,	@384,	@383,	@382,	@381,	@380,	@379,
@378,	@377,	@376,	@375,	@374,	@373,	@372,	@371,	@370,	@369,
@368,	@367,	@366,	@365,	@364,	@363,	@362,	@361,	@360,	@359,
@358,	@357,	@356,	@355,	@354,	@353,	@352,	@351,	@350,	@349,
@348,	@347,	@346,	@345,	@344,	@343,	@342,	@341,	@340,	@339,
@338,	@337,	@336,	@335,	@334,	@333,	@332,	@331,	@330,	@329,
@328,	@327,	@326,	@325,	@324,	@323,	@322,	@321,	@320,	@319,
@318,	@317,	@316,	@315,	@314,	@313,	@312,	@311,	@310,	@309,
@308,	@307,	@306,	@305,	@304,	@303,	@302,	@301,	@300,	@299,
@298,	@297,	@296,	@295,	@294,	@293,	@292,	@291,	@290,	@289,
@288,	@287,	@286,	@285,	@284,	@283,	@282,	@281,	@280,	@279,
@278,	@277,	@276,	@275,	@274,	@273,	@272,	@271,	@270,	@269,
@268,	@267,	@266,	@265,	@264,	@263,	@262,	@261,	@260,	@259,
@258,	@257,	@256,	@255,	@254,	@253,	@252,	@251,	@250,	@249,
@248,	@247,	@246,	@245,	@244,	@243,	@242,	@241,	@240,	@239,
@238,	@237,	@236,	@235,	@234,	@233,	@232,	@231,	@230,	@229,
@228,	@227,	@226,	@225,	@224,	@223,	@222,	@221,	@220,	@219,
@218,	@217,	@216,	@215,	@214,	@213,	@212,	@211,	@210,	@209,
@208,	@207,	@206,	@205,	@204,	@203,	@202,	@201,	@200,	@199,
@198,	@197,	@196,	@195,	@194,	@193,	@192,	@191,	@190,	@189,
@188,	@187,	@186,	@185,	@184,	@183,	@182,	@181,	@180,	@179,
@178,	@177,	@176,	@175,	@174,	@173,	@172,	@171,	@170,	@169,
@168,	@167,	@166,	@165,	@164,	@163,	@162,	@161,	@160,	@159,
@158,	@157,	@156,	@155,	@154,	@153,	@152,	@151,	@150,	@149,
@148,	@147,	@146,	@145,	@144,	@143,	@142,	@141,	@140,	@139,
@138,	@137,	@136,	@135,	@134,	@133,	@132,	@131,	@130,	@129,
@128,	@127,	@126,	@125,	@124,	@123,	@122,	@121,	@120,	@119,
@118,	@117,	@116,	@115,	@114,	@113,	@112,	@111,	@110,	@109,
@108,	@107,	@106,	@105,	@104,	@103,	@102,	@101,	@100,	@99,
@98,	@97,	@96,	@95,	@94,	@93,	@92,	@91,	@90,	@89,
@88,	@87,	@86,	@85,	@84,	@83,	@82,	@81,	@80,	@79,
@78,	@77,	@76,	@75,	@74,	@73,	@72,	@71,	@70,	@69,
@68,	@67,	@66,	@65,	@64,	@63,	@62,	@61,	@60,	@59,
@58,	@57,	@56,	@55,	@54,	@53,	@52,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,
@51,	@51,	@51,	@51,	@51,	@51,	@51,	@51,	@52,	@52,
@53,	@53,	@54,	@54,	@55,	@55,	@56,	@56,	@57,	@57,
@58,	@58,	@59,	@59,	@60,	@60,	@61,	@61,	@62,	@62,
@63,	@63,	@64,	@64,	@65,	@65,	@66,	@66,	@67,	@67,
@68,	@68,	@69,	@69,	@70,	@70,	@71,	@71,	@72,	@72,
@73,	@74,	@75,	@76,	@77,	@78,	@79,	@80,	@81,	@82,
@83,	@84,	@85,	@86,	@87,	@88,	@89,	@90,	@91,	@92,
@93,	@94,	@95,	@96,	@97,	@98,	@99,	@100,	@101,	@102,
@103,	@104,	@105,	@106,	@107,	@108,	@109,	@110,	@111,	@112,
@113,	@114,	@115,	@116,	@117,	@118,	@119,	@120,	@121,	@122,
@123,	@124,	@125,	@126,	@127,	@128,	@129,	@130,	@131,	@132,
@133,	@134,	@135,	@136,	@137,	@138,	@139,	@140,	@141,	@142,
@143,	@144,	@145,	@146,	@147,	@148,	@149,	@150,	@151,	@152,
@153,	@154,	@155,	@156,	@157,	@158,	@159,	@160,	@161,	@162,
@163,	@164,	@165,	@166,	@167,	@168,	@169,	@170,	@171,	@172,
@173,	@174,	@175,	@176,	@177,	@178,	@179,	@180,	@181,	@182,
@183,	@184,	@185,	@186,	@187,	@188,	@189,	@190,	@191,	@192,
@193,	@194,	@195,	@196,	@197,	@198,	@199,	@200,	@201,	@202,
@203,	@204,	@205,	@206,	@207,	@208,	@209,	@210,	@211,	@212,
@213,	@214,	@215,	@216,	@217,	@218,	@219,	@220,	@221,	@222,
@223,	@224,	@225,	@226,	@227,	@228,	@229,	@230,	@231,	@232,
@233,	@234,	@235,	@236,	@237,	@238,	@239,	@240,	@241,	@242,
@243,	@244,	@245,	@246,	@247,	@248,	@249,	@250,	@251,	@252,
@253,	@254,	@255,	@256,	@257,	@258,	@259,	@260,	@261,	@262,
@263,	@264,	@265,	@266,	@267,	@268,	@269,	@270,	@271,	@272,
@273,	@274,	@275,	@276,	@277,	@278, @278, @278  ];
   
  
  
 const   NSArray * yesarrayY = @[               @238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@237,	@237,	@236,	@236,	@235,	@235,	@234,	@234,	@233,	@233,
@232,	@232,	@231,	@231,	@230,	@230,	@229,	@229,	@228,	@228,
@227,	@227,	@226,	@226,	@225,	@225,	@224,	@224,	@223,	@223,
@222,	@222,	@221,	@221,	@220,	@220,	@219,	@219,	@218,	@217,
@216,	@215,	@214,	@213,	@212,	@211,	@210,	@209,	@208,	@207,
@206,	@205,	@204,	@203,	@202,	@201,	@200,	@199,	@198,	@197,
@196,	@195,	@194,	@193,	@192,	@191,	@190,	@189,	@188,	@187,
@186,	@185,	@184,	@183,	@182,	@181,	@180,	@179,	@178,	@177,
@176,	@175,	@174,	@173,	@172,	@171,	@170,	@169,	@168,	@167,
@166,	@165,	@164,	@163,	@162,	@161,	@160,	@159,	@158,	@157,
@156,	@155,	@154,	@153,	@152,	@151,	@150,	@149,	@148,	@147,
@146,	@145,	@144,	@143,	@142,	@141,	@140,	@139,	@138,	@137,
@136,	@135,	@134,	@133,	@132,	@131,	@130,	@129,	@128,	@127,
@126,	@125,	@124,	@123,	@122,	@121,	@120,	@119,	@118,	@117,
@116,	@115,	@114,	@113,	@112,	@111,	@110,	@109,	@108,	@107,
@106,	@105,	@104,	@103,	@102,	@101,	@100,	@99,	@99,	@98,
@98,	@97,	@97,	@96,	@96,	@95,	@95,	@94,	@94,	@93,
@93,	@92,	@91,	@90,	@89,	@88,	@87,	@86,	@85,	@84,
@83,	@83,	@82,	@81,	@80,	@79,	@78,	@77,	@76,	@75,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,	@74,
@74,	@74,	@74,	@74,	@75,	@75,	@76,	@76,	@77,	@77,
@78,	@78,	@79,	@79,	@80,	@80,	@81,	@81,	@82,	@82,
@83,	@83,	@84,	@84,	@85,	@85,	@86,	@86,	@87,	@87,
@88,	@88,	@89,	@89,	@90,	@90,	@91,	@91,	@92,	@92,
@93,	@93,	@94,	@94,	@95,	@95,	@96,	@96,	@97,	@98,
@99,	@100,	@101,	@102,	@103,	@104,	@105,	@106,	@107,	@108,
@109,	@110,	@111,	@112,	@113,	@114,	@115,	@116,	@117,	@118,
@119,	@120,	@121,	@122,	@123,	@124,	@125,	@126,	@127,	@128,
@129,	@130,	@131,	@132,	@133,	@134,	@135,	@136,	@137,	@138,
@139,	@140,	@141,	@142,	@143,	@144,	@145,	@146,	@147,	@148,
@149,	@150,	@151,	@152,	@153,	@154,	@155,	@156,	@157,	@158,
@159,	@160,	@161,	@162,	@163,	@164,	@165,	@166,	@167,	@168,
@169,	@170,	@171,	@172,	@173,	@174,	@175,	@176,	@177,	@178,
@179,	@180,	@181,	@182,	@183,	@184,	@185,	@186,	@187,	@188,
@189,	@190,	@191,	@192,	@193,	@194,	@195,	@195,	@196,	@197,
@198,	@199,	@200,	@201,	@202,	@203,	@204,	@205,	@206,	@207,
@208,	@209,	@210,	@211,	@212,	@213,	@214,	@215,	@216,	@217,
@218,	@219,	@220,	@221,	@222,	@223,	@224,	@225,	@226,	@227,
@228,	@229,	@230,	@231,	@232,	@233,	@234,	@235,	@236,	@237,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,	@238,
@238,	@238,	@238,	@238,	@238,	@238, @238, @238  ];
   
  
    //No array X and Y cooodinates

    
 const   NSArray * noarrayX = @[                @278,	@280,	@282,	@284,	@286,	@288,	@290,
@292,	@294,	@296,	@298,	@300,	@302,	@304,	@306,	@308,	@310,
@312,	@314,	@316,	@318,	@320,	@322,	@324,	@326,	@328,	@330,
@332,	@334,	@336,	@338,	@340,	@342,	@344,	@346,	@348,	@350,
@352,	@354,	@356,	@358,	@360,	@362,	@364,	@366,	@368,	@370,
@372,	@374,	@376,	@378,	@380,	@382,	@384,	@386,	@388,	@390,
@392,	@394,	@396,	@398,	@400,	@402,	@404,	@406,	@408,	@410,
@412,	@414,	@416,	@418,	@420,	@422,	@424,	@426,	@428,	@430,
@432,	@434,	@436,	@438,	@440,	@442,	@444,	@446,	@448,	@450,
@452,	@454,	@456,	@458,	@460,	@462,	@464,	@466,	@468,	@470,
@472,	@474,	@476,	@478,	@480,	@481,	@482,	@483,	@484,	@485,
@486,	@487,	@488,	@489,	@490,	@491,	@492,	@493,	@494,	@495,
@496,	@497,	@498,	@499,	@500,	@501,	@502,	@503,	@504,	@505,
@506,	@507,	@508,	@509,	@510,	@511,	@512,	@513,	@514,	@515,
@516,	@517,	@518,	@519,	@520,	@521,	@522,	@523,	@524,	@525,
@526,	@527,	@528,	@529,	@530,	@531,	@532,	@533,	@534,	@535,
@536,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,	@537,
@537,	@537,	@537,	@537,	@536,	@536,	@535,	@535,	@534,	@534,
@533,	@533,	@532,	@532,	@531,	@531,	@530,	@530,	@529,	@529,
@528,	@528,	@527,	@527,	@526,	@526,	@525,	@525,	@524,	@524,
@523,	@523,	@522,	@522,	@521,	@521,	@520,	@520,	@519,	@519,
@518,	@518,	@517,	@517,	@516,	@516,	@515,	@515,	@514,	@514,
@513,	@513,	@512,	@512,	@511,	@511,	@510,	@510,	@509,	@509,
@508,	@508,	@507,	@507,	@506,	@506,	@505,	@505,	@504,	@504,
@503,	@503,	@502,	@502,	@501,	@501,	@500,	@498,	@496,	@494,
@492,	@490,	@488,	@486,	@484,	@482,	@480,	@478,	@476,	@474,
@472,	@470,	@468,	@466,	@464,	@462,	@460,	@458,	@456,	@454,
@452,	@450,	@448,	@446,	@444,	@442,	@440,	@438,	@436,	@434,
@432,	@430,	@428,	@426,	@424,	@422,	@420,	@418,	@416,	@414,
@412,	@410,	@408,	@406,	@404,	@402,	@400,	@398,	@396,	@394,
@392,	@390,	@388,	@386,	@384,	@382,	@380,	@378,	@376,	@374,
@372,	@370,	@368,	@366,	@364,	@362,	@360,	@358,	@356,	@354,
@352,	@350,	@348,	@346,	@344,	@342,	@340,	@338,	@336,	@334,
@332,	@330,	@328,	@326,	@324,	@322,	@320,	@318,	@316,	@314,
@312,	@310,	@308,	@306,	@304,	@302,	@300,	@298,	@296,	@294,
@292,	@290,	@288,	@286,	@284,	@282,	@280,	@278,	@276,	@274,
@272,	@270,	@268,	@266,	@264,	@262,	@260,	@258,	@256,	@254,
@252,	@250,	@248,	@246,	@244,	@242,	@241,	@240,	@239,	@238,
@237,	@236,	@235,	@234,	@233,	@232,	@231,	@230,	@229,	@228,
@227,	@226,	@225,	@224,	@223,	@222,	@221,	@220,	@219,	@218,
@217,	@216,	@215,	@214,	@213,	@212,	@211,	@210,	@209,	@208,
@207,	@206,	@205,	@204,	@203,	@202,	@201,	@200,	@199,	@198,
@197,	@196,	@195,	@194,	@193,	@192,	@191,	@190,	@189,	@188,
@187,	@186,	@185,	@184,	@183,	@182,	@181,	@180,	@179,	@178,
@177,	@176,	@175,	@174,	@173,	@172,	@171,	@170,	@169,	@168,
@167,	@166,	@165,	@164,	@163,	@162,	@161,	@160,	@159,	@158,
@157,	@156,	@155,	@154,	@153,	@152,	@151,	@150,	@149,	@148,
@147,	@146,	@145,	@144,	@143,	@142,	@141,	@140,	@139,	@138,
@137,	@136,	@135,	@134,	@133,	@132,	@131,	@130,	@129,	@128,
@127,	@126,	@125,	@124,	@123,	@122,	@121,	@120,	@119,	@118,
@117,	@116,	@115,	@114,	@113,	@112,	@111,	@110,	@109,	@108,
@107,	@106,	@105,	@104,	@103,	@102,	@101,	@100,	@99,	@98,
@97,	@96,	@95,	@94,	@93,	@92,	@91,	@90,	@89,	@88,
@87,	@86,	@85,	@84,	@83,	@83,	@82,	@81,	@80,	@80,
@79,	@78,	@77,	@77,	@76,	@75,	@74,	@74,	@73,	@72,
@71,	@71,	@70,	@69,	@68,	@68,	@67,	@66,	@65,	@65,
@64,	@63,	@62,	@62,	@61,	@60,	@59,	@59,	@58,	@57,
@56,	@56,	@55,	@54,	@53,	@53,	@52,	@51,	@50,	@50,
@49,	@48,	@47,	@47,	@46,	@45,	@44,	@44,	@43,	@42,
@41,	@41,	@40,	@39,	@38,	@38,	@37,	@36,	@35,	@35,
@34,	@33,	@32,	@32,	@31,	@30,	@29,	@29,	@28,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,	@27,
@27,	@27,	@27,	@27,	@27,	@27,	@27,	@28,	@28,	@29,
@29,	@30,	@30,	@31,	@31,	@32,	@32,	@33,	@33,	@34,
@34,	@35,	@35,	@36,	@36,	@37,	@37,	@38,	@38,	@39,
@39,	@40,	@40,	@41,	@41,	@42,	@42,	@43,	@43,	@44,
@44,	@45,	@45,	@46,	@46,	@47,	@47,	@48,	@48,	@49,
@49,	@50,	@50,	@51,	@51,	@52,	@52,	@53,	@53,	@54,
@54,	@55,	@55,	@56,	@56,	@57,	@57,	@58,	@58,	@59,
@59,	@60,	@60,	@61,	@61,	@62,	@62,	@63,	@63,	@64,
@64,	@65,	@65,	@66,	@67,	@68,	@69,	@70,	@71,	@72,
@73,	@74,	@75,	@76,	@77,	@78,	@79,	@80,	@81,	@82,
@83,	@84,	@85,	@86,	@87,	@88,	@89,	@90,	@91,	@92,
@93,	@94,	@95,	@96,	@97,	@98,	@99,	@100,	@101,	@102,
@103,	@104,	@105,	@106,	@107,	@108,	@109,	@110,	@111,	@112,
@113,	@114,	@115,	@116,	@117,	@118,	@119,	@120,	@121,	@122,
@123,	@124,	@125,	@126,	@127,	@128,	@129,	@130,	@131,	@132,
@133,	@134,	@135,	@136,	@137,	@138,	@139,	@140,	@141,	@142,
@143,	@144,	@145,	@146,	@147,	@148,	@149,	@150,	@151,	@152,
@153,	@154,	@155,	@156,	@157,	@158,	@159,	@160,	@161,	@162,
 @163,	@164,	@165,	@166,	@167,	@168,	@169,	@170,	@171,	@172,
@173,	@174,	@175,	@176,	@177,	@178,	@179,	@180,	@181,	@182,
@183,	@184,	@185,	@186,	@187,	@188,	@189,	@190,	@191,	@192,
@193,	@194,	@195,	@196,	@197,	@198,	@199,	@200,	@201,	@202,
@203,	@204,	@205,	@206,	@207,	@208,	@209,	@210,	@211,	@212,
@213,	@214,	@215,	@216,	@217,	@218,	@219,	@220,	@221,	@222,
@223,	@224,	@225,	@226,	@227,	@228,	@229,	@230,	@231,	@232,
@233,	@234,	@235,	@236,	@237,	@238,	@239,	@240,	@241,	@242,
@243,	@244,	@245,	@246,	@247,	@248,	@249,	@250,	@251,	@252,
@253,	@254,	@255,	@256,	@257,	@258,	@259,	@260,	@261,	@262,
@263,	@264,	@265,	@266,	@267,	@268,	@269,	@270,	@271,	@272,
@273,	@274,	@275,	@276,	@277,	@278, @278, @278 ];
    
  
    
  const  NSArray * noarrayY = @[                @273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@272,	@272,	@271,	@271,	@270,
@270,	@269,	@269,	@268,	@268,	@267,	@267,	@266,	@266,	@265,
@265,	@264,	@264,	@263,	@263,	@262,	@262,	@261,	@261,	@260,
@260,	@259,	@259,	@258,	@258,	@257,	@257,	@256,	@256,	@255,
@255,	@254,	@253,	@252,	@251,	@250,	@249,	@248,	@247,	@250,
@246,	@245,	@244,	@243,	@242,	@241,	@240,	@239,	@238,	@245,
@237,	@236,	@235,	@234,	@233,	@232,	@231,	@230,	@229,	@228,
@227,	@226,	@225,	@224,	@223,	@222,	@221,	@220,	@219,	@218,
@217,	@216,	@215,	@214,	@213,	@212,	@211,	@210,	@209,	@208,
@207,	@206,	@205,	@204,	@203,	@202,	@201,	@200,	@199,	@198,
@197,	@196,	@195,	@194,	@193,	@192,	@191,	@190,	@189,	@188,
@187,	@186,	@185,	@184,	@183,	@182,	@181,	@180,	@179,	@178,
@177,	@176,	@175,	@174,	@173,	@172,	@171,	@170,	@169,	@168,
@167,	@166,	@165,	@164,	@163,	@162,	@161,	@160,	@159,	@158,
@157,	@156,	@155,	@154,	@153,	@152,	@151,	@150,	@149,	@148,
@147,	@146,	@145,	@144,	@143,	@142,	@141,	@140,	@139,	@138,
@137,	@136,	@135,	@134,	@133,	@132,	@131,	@130,	@129,	@128,
@127,	@126,	@125,	@124,	@123,	@122,	@121,	@120,	@119,	@118,
@117,	@116,	@115,	@114,	@113,	@112,	@111,	@110,	@109,	@108,
@107,	@106,	@105,	@104,	@103,	@102,	@101,	@100,	@99,	@98,
@97,	@96,	@95,	@94,	@93,	@92,	@92,	@91,	@90,	@89,
@89,	@88,	@87,	@86,	@86,	@85,	@84,	@83,	@83,	@82,
@81,	@80,	@80,	@79,	@78,	@77,	@77,	@76,	@75,	@74,
@74,	@73,	@72,	@71,	@71,	@70,	@69,	@68,	@68,	@67,
@66,	@65,	@65,	@64,	@63,	@62,	@62,	@61,	@60,	@59,
@59,	@58,	@57,	@56,	@56,	@55,	@54,	@53,	@53,	@52,
@51,	@50,	@50,	@49,	@48,	@47,	@47,	@46,	@45,	@44,
@44,	@43,	@42,	@41,	@41,	@40,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,	@39,
@39,	@39,	@39,	@40,	@40,	@41,	@41,	@42,	@42,	@43,
@43,	@44,	@44,	@45,	@45,	@46,	@46,	@47,	@47,	@48,
@48,	@49,	@49,	@50,	@50,	@51,	@51,	@52,	@52,	@53,
@53,	@54,	@54,	@55,	@55,	@56,	@56,	@57,	@57,	@58,
@58,	@59,	@59,	@60,	@60,	@61,	@61,	@62,	@62,	@63,
@63,	@64,	@64,	@65,	@65,	@66,	@66,	@67,	@67,	@68,
@68,	@69,	@69,	@70,	@70,	@71,	@71,	@72,	@72,	@73,
@73,	@74,	@74,	@75,	@75,	@76,	@76,	@77,	@77,	@78,
@79,	@80,	@81,	@82,	@83,	@84,	@85,	@86,	@87,	@88,
@89,	@90,	@91,	@92,	@93,	@94,	@95,	@96,	@97,	@98,
@99,	@100,	@101,	@102,	@103,	@104,	@105,	@106,	@107,	@108,
@109,	@110,	@111,	@112,	@113,	@114,	@115,	@116,	@117,	@118,
@119,	@120,	@121,	@122,	@123,	@124,	@125,	@126,	@127,	@128,
@129,	@130,	@131,	@132,	@133,	@134,	@135,	@136,	@137,	@138,
@139,	@140,	@141,	@142,	@143,	@144,	@145,	@146,	@147,	@148,
@149,	@150,	@151,	@152,	@153,	@154,	@155,	@156,	@157,	@158,
@159,	@160,	@161,	@162,	@163,	@164,	@165,	@166,	@167,	@168,
@169,	@170,	@171,	@172,	@173,	@174,	@175,	@176,	@177,	@178,
@179,	@180,	@181,	@182,	@183,	@184,	@185,	@186,	@187,	@188,
@189,	@190,	@191,	@192,	@193,	@194,	@195,	@196,	@197,	@198,
@199,	@200,	@201,	@202,	@203,	@204,	@205,	@206,	@207,	@208,
@209,	@210,	@211,	@212,	@213,	@214,	@215,	@216,	@217,	@217,
@218,	@219,	@220,	@220,	@221,	@222,	@223,	@223,	@224,	@225,
@226,	@226,	@227,	@228,	@229,	@229,	@230,	@231,	@232,	@232,
@233,	@234,	@235,	@235,	@236,	@237,	@238,	@238,	@239,	@240,
@241,	@241,	@242,	@243,	@244,	@244,	@245,	@246,	@247,	@247,
@248,	@249,	@250,	@250,	@251,	@252,	@253,	@253,	@254,	@255,
@256,	@256,	@257,	@258,	@259,	@259,	@260,	@261,	@262,	@262,
@263,	@264,	@265,	@265,	@266,	@267,	@268,	@268,	@269,	@270,
@271,	@271,	@272,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,	@273,
@273,	@273,	@273,	@273,	@273,	@273, @273, @273 ];
 

 
      ////////////////////////////////////////////////////////////////////////////////////////
    
    CABasicAnimation * YesRotation = [CABasicAnimation animationWithKeyPath: @"transform.rotation"];
    YesRotation.fromValue = [NSNumber numberWithFloat:0];
    YesRotation.toValue = [NSNumber numberWithFloat:((M_PI)/-2)];
    YesRotation.duration = 0.45;
    YesRotation.repeatCount = 0;
    
    CABasicAnimation * NoRotation = [CABasicAnimation animationWithKeyPath: @"transform.rotation"];
    NoRotation.fromValue = [NSNumber numberWithFloat:0];
    NoRotation.toValue = [NSNumber numberWithFloat:((M_PI)/-2)];
    NoRotation.duration = 0.5;
    NoRotation.repeatCount = 0;
    
       ////////////////////////////////////////////////////////////////////////////////////////
    
    race++;
    CGFloat numYX, numYY, numNX, numNY;

    
    if ((a<1163)&&(b<1163)) {
        
        numYX = [[yesarrayX objectAtIndex:a]floatValue];
        numYY = [[yesarrayY objectAtIndex:a]floatValue];
        numNX = [[noarrayX objectAtIndex:b]floatValue];
        numNY = [[noarrayY objectAtIndex:b]floatValue];
        
        r = arc4random()%2;
        
        if (r == 1) {
            YesCar.center = CGPointMake(numYX, numYY);
            a++;
        }
        
        if (r == 0) {
            NoCar.center = CGPointMake(numNX, numNY);
            b++;
        }
        
        //Yes Rotation elements
        if (a==197) {
            [YesCar.layer addAnimation:YesRotation forKey:@"-90"];
        }
        if ((a>225)&&(a<340)) {
            YesRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-2)];
            [YesCar.layer addAnimation:YesRotation forKey:@"-90"];
        }
        
        if (a==341) {
            YesRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-2)];
            YesRotation.toValue = [NSNumber numberWithFloat:((M_PI)/-1)];
            [YesCar.layer addAnimation:YesRotation forKey:@"180"];
        }
        if ((a>379)&&(a<772)) {
            YesRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-1)];
            [YesCar.layer addAnimation:YesRotation forKey:@"180"];
        }
        if (a==775) {
            YesRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-1)];
            YesRotation.toValue = [NSNumber numberWithFloat:(-2*(M_PI))];
            [YesCar.layer addAnimation:YesRotation forKey:@"-90"];
        }
        
        if((a>803)&&(a<915)) {
            YesRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/2)];
            YesRotation.toValue = [NSNumber numberWithFloat:((M_PI)/2)];
            [YesCar.layer addAnimation:YesRotation forKey:@"90"];
        }
        
        if(a==916) {
            YesRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/2)];
            YesRotation.toValue = [NSNumber numberWithFloat: 0];
            [YesCar.layer addAnimation:YesRotation forKey:@"0"];
        }
        
        //No Rotation elements
        if(b==102)
            [NoCar.layer addAnimation:NoRotation forKey:@"-90"];
        
        if ((b>140)&&(b<293)) {
            NoRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-2)];
            [NoCar.layer addAnimation:NoRotation forKey:@"-90"];
        }
        
        if (b==294) {
            NoRotation.duration = 0.6;
            NoRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-2)];
            NoRotation.toValue = [NSNumber numberWithFloat:((M_PI)/-1)];
            [NoCar.layer addAnimation:NoRotation forKey:@"180"];
        }
        
        if ((b>349)&&(b<667)) {
            NoRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-1)];
            [NoCar.layer addAnimation:NoRotation forKey:@"180"];
        }
        
        if (b==670) {
            NoRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/-1)];
            NoRotation.toValue = [NSNumber numberWithFloat:(-2*(M_PI))];
            [NoCar.layer addAnimation:NoRotation forKey:@"-90"];
        }
        
        if ((b>690)&&(b<890)) {
            NoRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/2)];
            NoRotation.toValue = [NSNumber numberWithFloat:((M_PI)/2)];
            [NoCar.layer addAnimation:NoRotation forKey:@"90"];
        }
        
        if (b==891) {
            NoRotation.fromValue = [NSNumber numberWithFloat:((M_PI)/2)];
            NoRotation.toValue = [NSNumber numberWithFloat: 0];
            [NoCar.layer addAnimation:NoRotation forKey:@"0"];
        }
            
        
    }
    
    else{
        [RaceTimer invalidate];
        go.hidden = YES;
        
        if (a>b) {
            yesLable.hidden = NO;
            Back.hidden = NO;
        }
    
        else{
            noLable.hidden = NO;
            Back.hidden = NO;
        }
    }
    
    
    
     
}

-(void)Countdown
{
    countdownstart--;
    
    if (countdownstart!=0) {
        
        if (countdownstart==3) {
            three.hidden = NO;
            two.hidden = YES;
            one.hidden = YES;
            go.hidden = YES;    }
        
        
        
        if (countdownstart==2) {
            three.hidden = YES;
            two.hidden = NO;
            one.hidden = YES;
            go.hidden = YES;
        }
        
        if (countdownstart==1) {
            three.hidden = YES;
            two.hidden = YES;
            one.hidden = NO;
            go.hidden = YES;
        }
    }
    
    if (countdownstart == 0) {
        race=-1;
        [CountdownTimer invalidate];
        
        three.hidden = YES;
        two.hidden = YES;
        one.hidden = YES;
        go.hidden = NO;
  
        
      
        RaceTimer = [NSTimer scheduledTimerWithTimeInterval:0.005 //0.005
                                                          target:self
                                                        selector:@selector(Race)
                                                        userInfo: nil
                                                         repeats:YES];
        
        
       
    }
    
}

-(IBAction)Start:(id)sender
{
    countdownstart = 4;

    Start.hidden = YES;
    Back.hidden = YES;
    
    CountdownTimer = [NSTimer scheduledTimerWithTimeInterval:0.8
                                             target:self
                                           selector:@selector(Countdown)
                                                    userInfo: nil
                                            repeats:YES];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    Start.hidden = NO;
    three.hidden = YES;
    two.hidden = YES;
    one.hidden = YES;
    go.hidden = YES;
    yesLable.hidden = YES;
    noLable.hidden = YES;
    
    countdownstart = 4;
    race = -1;
    a = 0;
    b = 0;
    r = 3;
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
