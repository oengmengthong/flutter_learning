import 'package:flutter/material.dart';
import 'dart:ui' as ui;

num NaN = 0.5;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            // Text("sdfasdfadfasdfjhdfkjhajdfhkjshdfjhdjkfhjkdfhjkadhfjshdfjhdjkfhjkdfhjkadhfjshdfjhdjkfhjkdfhjkadhfj"),
            CustomPaint(
              size: Size(400, (400 * 1.2104723237093302).toDouble()),
              painter: RPSCustomPainter(),
            ),
          ],
        ),
      ),
    ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5837115, size.height * -0.05116007);
    path_0.cubicTo(
        size.width * 0.5763523,
        size.height * -0.05117127,
        size.width * 0.5686762,
        size.height * -0.05091606,
        size.width * 0.5606715,
        size.height * -0.05038882);
    path_0.cubicTo(
        size.width * 0.3583607,
        size.height * -0.03692855,
        size.width * 0.4120149,
        size.height * 0.1396396,
        size.width * 0.4090122,
        size.height * 0.1987666);
    path_0.cubicTo(
        size.width * 0.4053177,
        size.height * 0.2420058,
        size.width * 0.3947056,
        size.height * 0.2760812,
        size.width * 0.3587083,
        size.height * 0.3183527);
    path_0.cubicTo(
        size.width * 0.3164169,
        size.height * 0.3599001,
        size.width * 0.2568755,
        size.height * 0.4271451,
        size.width * 0.2286691,
        size.height * 0.4971449);
    path_0.cubicTo(
        size.width * 0.2153570,
        size.height * 0.5301817,
        size.width * 0.2090223,
        size.height * 0.5638551,
        size.width * 0.2148725,
        size.height * 0.5957248);
    path_0.cubicTo(
        size.width * 0.2130399,
        size.height * 0.5970805,
        size.width * 0.2112953,
        size.height * 0.5985010,
        size.width * 0.2096364,
        size.height * 0.5999641);
    path_0.cubicTo(
        size.width * 0.1972196,
        size.height * 0.6109152,
        size.width * 0.1880450,
        size.height * 0.6241840,
        size.width * 0.1778223,
        size.height * 0.6331177);
    path_0.cubicTo(
        size.width * 0.1682715,
        size.height * 0.6409883,
        size.width * 0.1546640,
        size.height * 0.6439820,
        size.width * 0.1397105,
        size.height * 0.6484141);
    path_0.cubicTo(
        size.width * 0.1247513,
        size.height * 0.6528481,
        size.width * 0.1083272,
        size.height * 0.6593853,
        size.width * 0.09835772,
        size.height * 0.6751896);
    path_0.cubicTo(
        size.width * 0.09835772,
        size.height * 0.6751896,
        size.width * 0.09835772,
        size.height * 0.6751954,
        size.width * 0.09835095,
        size.height * 0.6751977);
    path_0.cubicTo(
        size.width * 0.09833468,
        size.height * 0.6752240,
        size.width * 0.09831692,
        size.height * 0.6752487,
        size.width * 0.09829998,
        size.height * 0.6752754);
    path_0.lineTo(size.width * 0.09829998, size.height * 0.6752754);
    path_0.cubicTo(
        size.width * 0.08927507,
        size.height * 0.6892009,
        size.width * 0.09195804,
        size.height * 0.7052373,
        size.width * 0.09471430,
        size.height * 0.7200947);
    path_0.cubicTo(
        size.width * 0.09747065,
        size.height * 0.7349519,
        size.width * 0.1002610,
        size.height * 0.7489915,
        size.width * 0.09655717,
        size.height * 0.7585168);
    path_0.cubicTo(
        size.width * 0.08471797,
        size.height * 0.7852498,
        size.width * 0.08320644,
        size.height * 0.8037416,
        size.width * 0.09154085,
        size.height * 0.8171548);
    path_0.cubicTo(
        size.width * 0.09989303,
        size.height * 0.8305960,
        size.width * 0.1170658,
        size.height * 0.8365288,
        size.width * 0.1364748,
        size.height * 0.8398777);
    path_0.cubicTo(
        size.width * 0.1752928,
        size.height * 0.8465755,
        size.width * 0.2278625,
        size.height * 0.8449111,
        size.width * 0.2692936,
        size.height * 0.8630518);
    path_0.lineTo(size.width * 0.2728547, size.height * 0.8575009);
    path_0.lineTo(size.width * 0.2693305, size.height * 0.8630684);
    path_0.cubicTo(
        size.width * 0.3136845,
        size.height * 0.8822257,
        size.width * 0.3586507,
        size.height * 0.8890303,
        size.width * 0.3945258,
        size.height * 0.8822609);
    path_0.cubicTo(
        size.width * 0.4205358,
        size.height * 0.8773530,
        size.width * 0.4416498,
        size.height * 0.8645584,
        size.width * 0.4524932,
        size.height * 0.8448705);
    path_0.cubicTo(
        size.width * 0.4805533,
        size.height * 0.8447565,
        size.width * 0.5113443,
        size.height * 0.8349388,
        size.width * 0.5606677,
        size.height * 0.8326952);
    path_0.cubicTo(
        size.width * 0.5941287,
        size.height * 0.8304686,
        size.width * 0.6359274,
        size.height * 0.8425115,
        size.width * 0.6840062,
        size.height * 0.8403060);
    path_0.cubicTo(
        size.width * 0.6852630,
        size.height * 0.8446153,
        size.width * 0.6870819,
        size.height * 0.8487601,
        size.width * 0.6895716,
        size.height * 0.8526987);
    path_0.cubicTo(
        size.width * 0.6895970,
        size.height * 0.8527393,
        size.width * 0.6896210,
        size.height * 0.8527794,
        size.width * 0.6896471,
        size.height * 0.8528193);
    path_0.cubicTo(
        size.width * 0.7082850,
        size.height * 0.8836085,
        size.width * 0.7429155,
        size.height * 0.8976915,
        size.width * 0.7798210,
        size.height * 0.8952853);
    path_0.cubicTo(
        size.width * 0.8167752,
        size.height * 0.8928760,
        size.width * 0.8560649,
        size.height * 0.8748749,
        size.width * 0.8878247,
        size.height * 0.8436506);
    path_0.lineTo(size.width * 0.8820023, size.height * 0.8396083);
    path_0.lineTo(size.width * 0.8878692, size.height * 0.8436061);
    path_0.cubicTo(
        size.width * 0.9181410,
        size.height * 0.8132828,
        size.width * 0.9683872,
        size.height * 0.8007089,
        size.width * 1.001704,
        size.height * 0.7841081);
    path_0.cubicTo(
        size.width * 1.018363,
        size.height * 0.7758074,
        size.width * 1.031880,
        size.height * 0.7654138,
        size.width * 1.032925,
        size.height * 0.7503178);
    path_0.cubicTo(
        size.width * 1.033969,
        size.height * 0.7352293,
        size.width * 1.023246,
        size.height * 0.7183203,
        size.width * 0.9985895,
        size.height * 0.6957095);
    path_0.cubicTo(
        size.width * 0.9985895,
        size.height * 0.6957095,
        size.width * 0.9985824,
        size.height * 0.6957037,
        size.width * 0.9985824,
        size.height * 0.6957037);
    path_0.cubicTo(
        size.width * 0.9985725,
        size.height * 0.6956932,
        size.width * 0.9985631,
        size.height * 0.6956849,
        size.width * 0.9985536,
        size.height * 0.6956756);
    path_0.cubicTo(
        size.width * 0.9904523,
        size.height * 0.6881124,
        size.width * 0.9865875,
        size.height * 0.6740948,
        size.width * 0.9824342,
        size.height * 0.6591673);
    path_0.cubicTo(
        size.width * 0.9782837,
        size.height * 0.6442488,
        size.width * 0.9736508,
        size.height * 0.6281560,
        size.width * 0.9588252,
        size.height * 0.6177270);
    path_0.lineTo(size.width * 0.9588252, size.height * 0.6177270);
    path_0.cubicTo(
        size.width * 0.9587955,
        size.height * 0.6177054,
        size.width * 0.9587656,
        size.height * 0.6176859,
        size.width * 0.9587359,
        size.height * 0.6176646);
    path_0.cubicTo(
        size.width * 0.9587359,
        size.height * 0.6176646,
        size.width * 0.9587359,
        size.height * 0.6176646,
        size.width * 0.9587359,
        size.height * 0.6176646);
    path_0.cubicTo(
        size.width * 0.9528354,
        size.height * 0.6134171,
        size.width * 0.9467039,
        size.height * 0.6105343,
        size.width * 0.9405291,
        size.height * 0.6085975);
    path_0.cubicTo(
        size.width * 0.9611415,
        size.height * 0.5580957,
        size.width * 0.9530541,
        size.height * 0.5078081,
        size.width * 0.9322472,
        size.height * 0.4623656);
    path_0.cubicTo(
        size.width * 0.9067113,
        size.height * 0.4065950,
        size.width * 0.8621294,
        size.height * 0.3579995,
        size.width * 0.8280815,
        size.height * 0.3247559);
    path_0.cubicTo(
        size.width * 0.7899703,
        size.height * 0.2850431,
        size.width * 0.7526943,
        size.height * 0.2473389,
        size.width * 0.7534286,
        size.height * 0.1916511);
    path_0.cubicTo(
        size.width * 0.7545638,
        size.height * 0.1066594,
        size.width * 0.7647450,
        size.height * -0.05095519,
        size.width * 0.5837071,
        size.height * -0.05115931);
    path_0.close();
    path_0.moveTo(size.width * 0.6082205, size.height * 0.07977797);
    path_0.cubicTo(
        size.width * 0.6184934,
        size.height * 0.07977797,
        size.width * 0.6272671,
        size.height * 0.08226551,
        size.width * 0.6362796,
        size.height * 0.08766959);
    path_0.cubicTo(
        size.width * 0.6454353,
        size.height * 0.09315935,
        size.width * 0.6520314,
        size.height * 0.1000317,
        size.width * 0.6573476,
        size.height * 0.1096287);
    path_0.cubicTo(
        size.width * 0.6625653,
        size.height * 0.1189817,
        size.width * 0.6650757,
        size.height * 0.1281313,
        size.width * 0.6653219,
        size.height * 0.1389890);
    path_0.cubicTo(
        size.width * 0.6653219,
        size.height * 0.1392737,
        size.width * 0.6653219,
        size.height * 0.1395176,
        size.width * 0.6654202,
        size.height * 0.1398023);
    path_0.cubicTo(
        size.width * 0.6655186,
        size.height * 0.1509445,
        size.width * 0.6632052,
        size.height * 0.1604195,
        size.width * 0.6580858,
        size.height * 0.1700978);
    path_0.cubicTo(
        size.width * 0.6551647,
        size.height * 0.1756203,
        size.width * 0.6518101,
        size.height * 0.1802555,
        size.width * 0.6477949,
        size.height * 0.1842684);
    path_0.cubicTo(
        size.width * 0.6464318,
        size.height * 0.1837277,
        size.width * 0.6450161,
        size.height * 0.1832079,
        size.width * 0.6435478,
        size.height * 0.1827091);
    path_0.lineTo(size.width * 0.6435478, size.height * 0.1827091);
    path_0.cubicTo(
        size.width * 0.6333703,
        size.height * 0.1791080,
        size.width * 0.6255628,
        size.height * 0.1768162,
        size.width * 0.6190558,
        size.height * 0.1749509);
    path_0.cubicTo(
        size.width * 0.6214146,
        size.height * 0.1726086,
        size.width * 0.6233787,
        size.height * 0.1698307,
        size.width * 0.6251057,
        size.height * 0.1663579);
    path_0.cubicTo(
        size.width * 0.6277146,
        size.height * 0.1611121,
        size.width * 0.6289945,
        size.height * 0.1559882,
        size.width * 0.6292406,
        size.height * 0.1498885);
    path_0.cubicTo(
        size.width * 0.6292406,
        size.height * 0.1496445,
        size.width * 0.6293391,
        size.height * 0.1494411,
        size.width * 0.6293391,
        size.height * 0.1491565);
    path_0.cubicTo(
        size.width * 0.6294867,
        size.height * 0.1433008,
        size.width * 0.6285515,
        size.height * 0.1382989,
        size.width * 0.6264841,
        size.height * 0.1331750);
    path_0.cubicTo(
        size.width * 0.6243182,
        size.height * 0.1278073,
        size.width * 0.6215616,
        size.height * 0.1239442,
        size.width * 0.6175745,
        size.height * 0.1207316);
    path_0.cubicTo(
        size.width * 0.6135874,
        size.height * 0.1175189,
        size.width * 0.6096002,
        size.height * 0.1160551,
        size.width * 0.6048254,
        size.height * 0.1159330);
    path_0.cubicTo(
        size.width * 0.6046016,
        size.height * 0.1159218,
        size.width * 0.6043784,
        size.height * 0.1159218,
        size.width * 0.6041579,
        size.height * 0.1159218);
    path_0.cubicTo(
        size.width * 0.5996666,
        size.height * 0.1159330,
        size.width * 0.5957667,
        size.height * 0.1172053,
        size.width * 0.5917319,
        size.height * 0.1199959);
    path_0.cubicTo(
        size.width * 0.5874986,
        size.height * 0.1229239,
        size.width * 0.5843483,
        size.height * 0.1266649,
        size.width * 0.5817394,
        size.height * 0.1318701);
    path_0.cubicTo(
        size.width * 0.5791305,
        size.height * 0.1370752,
        size.width * 0.5778507,
        size.height * 0.1422397,
        size.width * 0.5776046,
        size.height * 0.1483802);
    path_0.cubicTo(
        size.width * 0.5775551,
        size.height * 0.1486242,
        size.width * 0.5775551,
        size.height * 0.1488276,
        size.width * 0.5775551,
        size.height * 0.1490715);
    path_0.cubicTo(
        size.width * 0.5774700,
        size.height * 0.1524468,
        size.width * 0.5777295,
        size.height * 0.1555388,
        size.width * 0.5783596,
        size.height * 0.1585414);
    path_0.cubicTo(
        size.width * 0.5691697,
        size.height * 0.1547584,
        size.width * 0.5605094,
        size.height * 0.1521793,
        size.width * 0.5523816,
        size.height * 0.1505812);
    path_0.cubicTo(
        size.width * 0.5519183,
        size.height * 0.1476776,
        size.width * 0.5516503,
        size.height * 0.1446814,
        size.width * 0.5515648,
        size.height * 0.1415485);
    path_0.lineTo(size.width * 0.5515648, size.height * 0.1406945);
    path_0.cubicTo(
        size.width * 0.5514170,
        size.height * 0.1295928,
        size.width * 0.5536322,
        size.height * 0.1200773,
        size.width * 0.5588007,
        size.height * 0.1103990);
    path_0.cubicTo(
        size.width * 0.5639693,
        size.height * 0.1007207,
        size.width * 0.5703684,
        size.height * 0.09376685,
        size.width * 0.5793764,
        size.height * 0.08811442);
    path_0.cubicTo(
        size.width * 0.5883844,
        size.height * 0.08246199,
        size.width * 0.5972447,
        size.height * 0.07985945,
        size.width * 0.6077294,
        size.height * 0.07977811);
    path_0.cubicTo(
        size.width * 0.6078933,
        size.height * 0.07977811,
        size.width * 0.6080571,
        size.height * 0.07977811,
        size.width * 0.6082201,
        size.height * 0.07977811);
    path_0.close();
    path_0.moveTo(size.width * 0.4676150, size.height * 0.08897464);
    path_0.cubicTo(
        size.width * 0.4744298,
        size.height * 0.08898799,
        size.width * 0.4805278,
        size.height * 0.09086882,
        size.width * 0.4868354,
        size.height * 0.09502998);
    path_0.cubicTo(
        size.width * 0.4936776,
        size.height * 0.09954370,
        size.width * 0.4988461,
        size.height * 0.1053181,
        size.width * 0.5031779,
        size.height * 0.1134512);
    path_0.cubicTo(
        size.width * 0.5075096,
        size.height * 0.1215843,
        size.width * 0.5098231,
        size.height * 0.1297172,
        size.width * 0.5104630,
        size.height * 0.1393143);
    path_0.lineTo(size.width * 0.5104630, size.height * 0.1393951);
    path_0.cubicTo(
        size.width * 0.5107731,
        size.height * 0.1434257,
        size.width * 0.5107352,
        size.height * 0.1472198,
        size.width * 0.5103506,
        size.height * 0.1508943);
    path_0.cubicTo(
        size.width * 0.5090028,
        size.height * 0.1512108,
        size.width * 0.5076820,
        size.height * 0.1515532,
        size.width * 0.5063881,
        size.height * 0.1519212);
    path_0.cubicTo(
        size.width * 0.4990400,
        size.height * 0.1540107,
        size.width * 0.4925642,
        size.height * 0.1568584,
        size.width * 0.4869200,
        size.height * 0.1599373);
    path_0.cubicTo(
        size.width * 0.4874719,
        size.height * 0.1567166,
        size.width * 0.4875541,
        size.height * 0.1534488,
        size.width * 0.4871307,
        size.height * 0.1498053);
    path_0.cubicTo(
        size.width * 0.4870811,
        size.height * 0.1496019,
        size.width * 0.4870811,
        size.height * 0.1494393,
        size.width * 0.4870811,
        size.height * 0.1492360);
    path_0.cubicTo(
        size.width * 0.4864904,
        size.height * 0.1443968,
        size.width * 0.4852598,
        size.height * 0.1403304,
        size.width * 0.4831924,
        size.height * 0.1362231);
    path_0.cubicTo(
        size.width * 0.4809773,
        size.height * 0.1319535,
        size.width * 0.4785161,
        size.height * 0.1289441,
        size.width * 0.4752673,
        size.height * 0.1266262);
    path_0.cubicTo(
        size.width * 0.4723231,
        size.height * 0.1245256,
        size.width * 0.4695413,
        size.height * 0.1235610,
        size.width * 0.4664808,
        size.height * 0.1235801);
    path_0.cubicTo(
        size.width * 0.4661642,
        size.height * 0.1235801,
        size.width * 0.4658440,
        size.height * 0.1235946,
        size.width * 0.4655210,
        size.height * 0.1236168);
    path_0.cubicTo(
        size.width * 0.4620753,
        size.height * 0.1238605,
        size.width * 0.4592203,
        size.height * 0.1252431,
        size.width * 0.4565129,
        size.height * 0.1279678);
    path_0.cubicTo(
        size.width * 0.4538056,
        size.height * 0.1306923,
        size.width * 0.4520336,
        size.height * 0.1340676,
        size.width * 0.4507537,
        size.height * 0.1385406);
    path_0.cubicTo(
        size.width * 0.4494739,
        size.height * 0.1430138,
        size.width * 0.4491293,
        size.height * 0.1474057,
        size.width * 0.4496708,
        size.height * 0.1524481);
    path_0.cubicTo(
        size.width * 0.4496708,
        size.height * 0.1526514,
        size.width * 0.4497203,
        size.height * 0.1528142,
        size.width * 0.4497203,
        size.height * 0.1530174);
    path_0.cubicTo(
        size.width * 0.4503109,
        size.height * 0.1578973,
        size.width * 0.4514923,
        size.height * 0.1619637,
        size.width * 0.4536090,
        size.height * 0.1660710);
    path_0.cubicTo(
        size.width * 0.4557748,
        size.height * 0.1703002,
        size.width * 0.4582853,
        size.height * 0.1733094,
        size.width * 0.4615341,
        size.height * 0.1756273);
    path_0.cubicTo(
        size.width * 0.4620782,
        size.height * 0.1760154,
        size.width * 0.4626164,
        size.height * 0.1763641,
        size.width * 0.4631523,
        size.height * 0.1766757);
    path_0.cubicTo(
        size.width * 0.4597730,
        size.height * 0.1788242,
        size.width * 0.4581594,
        size.height * 0.1798148,
        size.width * 0.4553903,
        size.height * 0.1814957);
    path_0.cubicTo(
        size.width * 0.4536143,
        size.height * 0.1825723,
        size.width * 0.4514990,
        size.height * 0.1838542,
        size.width * 0.4490404,
        size.height * 0.1853513);
    path_0.cubicTo(
        size.width * 0.4436788,
        size.height * 0.1812020,
        size.width * 0.4394962,
        size.height * 0.1759872,
        size.width * 0.4358391,
        size.height * 0.1691208);
    path_0.cubicTo(
        size.width * 0.4315074,
        size.height * 0.1609879,
        size.width * 0.4291938,
        size.height * 0.1528548,
        size.width * 0.4285047,
        size.height * 0.1432578);
    path_0.lineTo(size.width * 0.4285047, size.height * 0.1431770);
    path_0.cubicTo(
        size.width * 0.4278648,
        size.height * 0.1335801,
        size.width * 0.4289970,
        size.height * 0.1253250,
        size.width * 0.4321965,
        size.height * 0.1167854);
    path_0.cubicTo(
        size.width * 0.4353961,
        size.height * 0.1082456,
        size.width * 0.4396786,
        size.height * 0.1020646,
        size.width * 0.4458808,
        size.height * 0.09698132);
    path_0.cubicTo(
        size.width * 0.4520830,
        size.height * 0.09189824,
        size.width * 0.4583345,
        size.height * 0.08933636,
        size.width * 0.4658658,
        size.height * 0.08901114);
    path_0.cubicTo(
        size.width * 0.4664542,
        size.height * 0.08898443,
        size.width * 0.4670373,
        size.height * 0.08897229,
        size.width * 0.4676148,
        size.height * 0.08897450);
    path_0.close();
    path_0.moveTo(size.width * 0.5315617, size.height * 0.1555549);
    path_0.cubicTo(
        size.width * 0.5474010,
        size.height * 0.1555044,
        size.width * 0.5664615,
        size.height * 0.1597943,
        size.width * 0.5895368,
        size.height * 0.1720510);
    path_0.cubicTo(
        size.width * 0.6037108,
        size.height * 0.1796656,
        size.width * 0.6147398,
        size.height * 0.1803020,
        size.width * 0.6401361,
        size.height * 0.1892879);
    path_0.lineTo(size.width * 0.6401666, size.height * 0.1892996);
    path_0.lineTo(size.width * 0.6401976, size.height * 0.1893101);
    path_0.cubicTo(
        size.width * 0.6524169,
        size.height * 0.1934518,
        size.width * 0.6595889,
        size.height * 0.1988504,
        size.width * 0.6630930,
        size.height * 0.2045353);
    path_0.cubicTo(
        size.width * 0.6665970,
        size.height * 0.2102202,
        size.width * 0.6666827,
        size.height * 0.2163850,
        size.width * 0.6637498,
        size.height * 0.2228702);
    path_0.cubicTo(
        size.width * 0.6578842,
        size.height * 0.2358408,
        size.width * 0.6391612,
        size.height * 0.2494910,
        size.width * 0.6128875,
        size.height * 0.2562690);
    path_0.lineTo(size.width * 0.6128627, size.height * 0.2562784);
    path_0.lineTo(size.width * 0.6128394, size.height * 0.2562877);
    path_0.cubicTo(
        size.width * 0.6000285,
        size.height * 0.2597262,
        size.width * 0.5888574,
        size.height * 0.2673197,
        size.width * 0.5756875,
        size.height * 0.2735411);
    path_0.cubicTo(
        size.width * 0.5625180,
        size.height * 0.2797623,
        size.width * 0.5476157,
        size.height * 0.2847800,
        size.width * 0.5273526,
        size.height * 0.2838116);
    path_0.cubicTo(
        size.width * 0.5273526,
        size.height * 0.2756514,
        size.width * 0.5202971,
        size.height * 0.2838116,
        size.width * 0.5273526,
        size.height * 0.2838116);
    path_0.cubicTo(
        size.width * 0.5273526,
        size.height * 0.2695607,
        size.width * 0.5263472,
        size.height * 0.2610421,
        size.width * 0.5204910,
        size.height * 0.2533395);
    path_0.cubicTo(
        size.width * 0.5061360,
        size.height * 0.2456366,
        size.width * 0.5129975,
        size.height * 0.2389243,
        size.width * 0.5035836,
        size.height * 0.2290954);
    path_0.cubicTo(size.width * 0.4796899, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.lineTo(size.width * NaN, size.height * NaN);
    path_0.lineTo(size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.cubicTo(size.width * NaN, size.height * NaN, size.width * NaN,
        size.height * NaN, size.width * NaN, size.height * NaN);
    path_0.close();
    path_0.moveTo(size.width * 0.6423219, size.height * 0.2096714);
    path_0.cubicTo(
        size.width * 0.6354867,
        size.height * 0.2100081,
        size.width * 0.6283280,
        size.height * 0.2129154,
        size.width * 0.6199927,
        size.height * 0.2167598);
    path_0.cubicTo(
        size.width * 0.6116573,
        size.height * 0.2206042,
        size.width * 0.6022838,
        size.height * 0.2255220,
        size.width * 0.5921257,
        size.height * 0.2303648);
    path_0.cubicTo(
        size.width * 0.5718094,
        size.height * 0.2400505,
        size.width * 0.5484228,
        size.height * 0.2493135,
        size.width * 0.5251810,
        size.height * 0.2493135);
    path_0.cubicTo(
        size.width * 0.5019032,
        size.height * 0.2493135,
        size.width * 0.4833055,
        size.height * 0.2404322,
        size.width * 0.4693563,
        size.height * 0.2313002);
    path_0.cubicTo(
        size.width * 0.4623817,
        size.height * 0.2267342,
        size.width * 0.4566253,
        size.height * 0.2221350,
        size.width * 0.4520264,
        size.height * 0.2185771);
    path_0.cubicTo(
        size.width * 0.4497269,
        size.height * 0.2167980,
        size.width * 0.4477327,
        size.height * 0.2152818,
        size.width * 0.4458718,
        size.height * 0.2140975);
    path_0.cubicTo(
        size.width * 0.4440113,
        size.height * 0.2129132,
        size.width * 0.4424969,
        size.height * 0.2117389,
        size.width * 0.4393835,
        size.height * 0.2117389);
    path_0.lineTo(size.width * 0.4392343, size.height * 0.2171436);
    path_0.cubicTo(
        size.width * 0.4390114,
        size.height * 0.2189520,
        size.width * 0.4387823,
        size.height * 0.2188963,
        size.width * 0.4388728,
        size.height * 0.2189456);
    path_0.cubicTo(
        size.width * 0.4390180,
        size.height * 0.2190244,
        size.width * 0.4397404,
        size.height * 0.2192301,
        size.width * 0.4405833,
        size.height * 0.2197665);
    path_0.cubicTo(
        size.width * 0.4419514,
        size.height * 0.2206371,
        size.width * 0.4438503,
        size.height * 0.2220564,
        size.width * 0.4461041,
        size.height * 0.2238000);
    path_0.cubicTo(
        size.width * 0.4506117,
        size.height * 0.2272872,
        size.width * 0.4566013,
        size.height * 0.2320818,
        size.width * 0.4639756,
        size.height * 0.2369094);
    path_0.cubicTo(
        size.width * 0.4787240,
        size.height * 0.2465646,
        size.width * 0.4992349,
        size.height * 0.2564706,
        size.width * 0.5251810,
        size.height * 0.2564706);
    path_0.cubicTo(
        size.width * 0.5511633,
        size.height * 0.2564706,
        size.width * 0.5757455,
        size.height * 0.2464380,
        size.width * 0.5964575,
        size.height * 0.2365637);
    path_0.cubicTo(
        size.width * 0.6068134,
        size.height * 0.2316266,
        size.width * 0.6162189,
        size.height * 0.2266983,
        size.width * 0.6242168,
        size.height * 0.2230096);
    path_0.cubicTo(
        size.width * 0.6322143,
        size.height * 0.2193207,
        size.width * 0.6389432,
        size.height * 0.2170076,
        size.width * 0.6428388,
        size.height * 0.2168157);
    path_0.lineTo(size.width * 0.6423219, size.height * 0.2096714);
    path_0.close();
    path_0.moveTo(size.width * 0.6654172, size.height * 0.2353577);
    path_0.cubicTo(
        size.width * 0.6826742,
        size.height * 0.2915557,
        size.width * 0.7228116,
        size.height * 0.3727271,
        size.width * 0.7486090,
        size.height * 0.4123402);
    path_0.cubicTo(
        size.width * 0.7623212,
        size.height * 0.4333569,
        size.width * 0.7896016,
        size.height * 0.4780102,
        size.width * 0.8013880,
        size.height * 0.5318093);
    path_0.cubicTo(
        size.width * 0.8088563,
        size.height * 0.5316203,
        size.width * 0.8170798,
        size.height * 0.5325167,
        size.width * 0.8258862,
        size.height * 0.5343776);
    path_0.cubicTo(
        size.width * 0.8567026,
        size.height * 0.4683782,
        size.width * 0.7997543,
        size.height * 0.3972881,
        size.width * 0.7737132,
        size.height * 0.3774901);
    path_0.cubicTo(
        size.width * 0.7631997,
        size.height * 0.3690622,
        size.width * 0.7626944,
        size.height * 0.3652862,
        size.width * 0.7679064,
        size.height * 0.3654647);
    path_0.cubicTo(
        size.width * 0.7961598,
        size.height * 0.3861057,
        size.width * 0.8332503,
        size.height * 0.4276215,
        size.width * 0.8467448,
        size.height * 0.4744816);
    path_0.cubicTo(
        size.width * 0.8528981,
        size.height * 0.4958491,
        size.width * 0.8542100,
        size.height * 0.5183122,
        size.width * 0.8476078,
        size.height * 0.5404812);
    path_0.cubicTo(
        size.width * 0.8508380,
        size.height * 0.5415897,
        size.width * 0.8541185,
        size.height * 0.5427950,
        size.width * 0.8574434,
        size.height * 0.5440953);
    path_0.cubicTo(
        size.width * 0.9069094,
        size.height * 0.5639945,
        size.width * 0.9252036,
        size.height * 0.5812984,
        size.width * 0.9164076,
        size.height * 0.6049151);
    path_0.cubicTo(
        size.width * 0.9135105,
        size.height * 0.6048312,
        size.width * 0.9106607,
        size.height * 0.6048406,
        size.width * 0.9078811,
        size.height * 0.6048959);
    path_0.cubicTo(
        size.width * 0.9076217,
        size.height * 0.6049017,
        size.width * 0.9073642,
        size.height * 0.6049075,
        size.width * 0.9071058,
        size.height * 0.6049122);
    path_0.cubicTo(
        size.width * 0.9142690,
        size.height * 0.5861920,
        size.width * 0.8984000,
        size.height * 0.5723849,
        size.width * 0.8561143,
        size.height * 0.5565792);
    path_0.cubicTo(
        size.width * 0.8122557,
        size.height * 0.5406384,
        size.width * 0.7773066,
        size.height * 0.5422243,
        size.width * 0.7713998,
        size.height * 0.5745532);
    path_0.cubicTo(
        size.width * 0.7710217,
        size.height * 0.5762469,
        size.width * 0.7707176,
        size.height * 0.5779728,
        size.width * 0.7704860,
        size.height * 0.5797227);
    path_0.cubicTo(
        size.width * 0.7672093,
        size.height * 0.5806627,
        size.width * 0.7639148,
        size.height * 0.5818629,
        size.width * 0.7606120,
        size.height * 0.5833559);
    path_0.cubicTo(
        size.width * 0.7400174,
        size.height * 0.5926653,
        size.width * 0.7287767,
        size.height * 0.6095569,
        size.width * 0.7225248,
        size.height * 0.6302746);
    path_0.cubicTo(
        size.width * 0.7162780,
        size.height * 0.6509755,
        size.width * 0.7144871,
        size.height * 0.6760017,
        size.width * 0.7127631,
        size.height * 0.7041340);
    path_0.cubicTo(
        size.width * 0.7127631,
        size.height * 0.7041398,
        size.width * 0.7127631,
        size.height * 0.7041445,
        size.width * 0.7127631,
        size.height * 0.7041485);
    path_0.cubicTo(
        size.width * 0.7117097,
        size.height * 0.7182944,
        size.width * 0.7046698,
        size.height * 0.7374271,
        size.width * 0.6975298,
        size.height * 0.7576919);
    path_0.cubicTo(
        size.width * 0.6256825,
        size.height * 0.8000307,
        size.width * 0.5259654,
        size.height * 0.8183741,
        size.width * 0.4413018,
        size.height * 0.7706412);
    path_0.cubicTo(
        size.width * 0.4355641,
        size.height * 0.7631429,
        size.width * 0.4289823,
        size.height * 0.7557135,
        size.width * 0.4222074,
        size.height * 0.7483861);
    path_0.cubicTo(
        size.width * 0.4178810,
        size.height * 0.7437067,
        size.width * 0.4134368,
        size.height * 0.7390560,
        size.width * 0.4090184,
        size.height * 0.7344708);
    path_0.cubicTo(
        size.width * 0.4177096,
        size.height * 0.7344766,
        size.width * 0.4250971,
        size.height * 0.7333005,
        size.width * 0.4310677,
        size.height * 0.7310640);
    path_0.cubicTo(
        size.width * 0.4384926,
        size.height * 0.7282826,
        size.width * 0.4437094,
        size.height * 0.7238153,
        size.width * 0.4462903,
        size.height * 0.7180803);
    path_0.cubicTo(
        size.width * 0.4514520,
        size.height * 0.7066101,
        size.width * 0.4462677,
        size.height * 0.6904294,
        size.width * 0.4297433,
        size.height * 0.6719519);
    path_0.cubicTo(
        size.width * 0.4132199,
        size.height * 0.6534756,
        size.width * 0.3852352,
        size.height * 0.6326235,
        size.width * 0.3441134,
        size.height * 0.6117892);
    path_0.cubicTo(
        size.width * 0.3441134,
        size.height * 0.6117892,
        size.width * 0.3441064,
        size.height * 0.6117892,
        size.width * 0.3441064,
        size.height * 0.6117833);
    path_0.cubicTo(
        size.width * 0.3138960,
        size.height * 0.5962563,
        size.width * 0.2970006,
        size.height * 0.5772248,
        size.width * 0.2890924,
        size.height * 0.5565614);
    path_0.cubicTo(
        size.width * 0.2811835,
        size.height * 0.5358961,
        size.width * 0.2822924,
        size.height * 0.5135503,
        size.width * 0.2883879,
        size.height * 0.4914882);
    path_0.cubicTo(
        size.width * 0.3000875,
        size.height * 0.4491408,
        size.width * 0.3301483,
        size.height * 0.4079545,
        size.width * 0.3493288,
        size.height * 0.3821078);
    path_0.cubicTo(
        size.width * 0.3544927,
        size.height * 0.3789689,
        size.width * 0.3511737,
        size.height * 0.3879343,
        size.width * 0.3299114,
        size.height * 0.4205529);
    path_0.cubicTo(
        size.width * 0.3108557,
        size.height * 0.4503755,
        size.width * 0.2752308,
        size.height * 0.5191992,
        size.width * 0.3240076,
        size.height * 0.5729227);
    path_0.cubicTo(
        size.width * 0.3253111,
        size.height * 0.5346904,
        size.width * 0.3363633,
        size.height * 0.4956981,
        size.width * 0.3549172,
        size.height * 0.4592255);
    path_0.cubicTo(
        size.width * 0.3819425,
        size.height * 0.4086169,
        size.width * 0.4384695,
        size.height * 0.3208553,
        size.width * 0.4429591,
        size.height * 0.2509080);
    path_0.cubicTo(
        size.width * 0.4452739,
        size.height * 0.2522966,
        size.width * 0.4532282,
        size.height * 0.2567305,
        size.width * 0.4567726,
        size.height * 0.2583956);
    path_0.cubicTo(
        size.width * 0.4567796,
        size.height * 0.2584049,
        size.width * 0.4567882,
        size.height * 0.2584049,
        size.width * 0.4567953,
        size.height * 0.2584061);
    path_0.cubicTo(
        size.width * 0.4671653,
        size.height * 0.2634510,
        size.width * 0.4749536,
        size.height * 0.2708255,
        size.width * 0.4850407,
        size.height * 0.2775226);
    path_0.cubicTo(
        size.width * 0.4951478,
        size.height * 0.2842330,
        size.width * 0.5077743,
        size.height * 0.2900290,
        size.width * 0.5268504,
        size.height * 0.2909472);
    path_0.lineTo(size.width * 0.5268504, size.height * 0.2909472);
    path_0.cubicTo(
        size.width * 0.5491161,
        size.height * 0.2920116,
        size.width * 0.5660858,
        size.height * 0.2863143,
        size.width * 0.5799892,
        size.height * 0.2797464);
    path_0.cubicTo(
        size.width * 0.5938717,
        size.height * 0.2731885,
        size.width * 0.6049621,
        size.height * 0.2659308,
        size.width * 0.6154691,
        size.height * 0.2630978);
    path_0.cubicTo(
        size.width * 0.6154856,
        size.height * 0.2630885,
        size.width * 0.6155010,
        size.height * 0.2630885,
        size.width * 0.6155165,
        size.height * 0.2630854);
    path_0.cubicTo(
        size.width * 0.6377187,
        size.height * 0.2573496,
        size.width * 0.6553717,
        size.height * 0.2471976,
        size.width * 0.6654173,
        size.height * 0.2353568);
    path_0.close();
    path_0.moveTo(size.width * 0.8064349, size.height * 0.5570903);
    path_0.cubicTo(
        size.width * 0.8154278,
        size.height * 0.5570559,
        size.width * 0.8263214,
        size.height * 0.5595328,
        size.width * 0.8382460,
        size.height * 0.5639398);
    path_0.cubicTo(
        size.width * 0.8703400,
        size.height * 0.5761801,
        size.width * 0.8803817,
        size.height * 0.5866717,
        size.width * 0.8716199,
        size.height * 0.6020838);
    path_0.cubicTo(
        size.width * 0.8642363,
        size.height * 0.6137141,
        size.width * 0.8326344,
        size.height * 0.6322167,
        size.width * 0.8109759,
        size.height * 0.6273369);
    path_0.cubicTo(
        size.width * 0.7888743,
        size.height * 0.6226197,
        size.width * 0.7780942,
        size.height * 0.5963093,
        size.width * 0.7816875,
        size.height * 0.5764241);
    path_0.cubicTo(
        size.width * 0.7836123,
        size.height * 0.5629207,
        size.width * 0.7928575,
        size.height * 0.5571427,
        size.width * 0.8064349,
        size.height * 0.5570903);
    path_0.close();
    path_0.moveTo(size.width * 0.7701230, size.height * 0.5934285);
    path_0.cubicTo(
        size.width * 0.7719372,
        size.height * 0.6177454,
        size.width * 0.7865004,
        size.height * 0.6425460,
        size.width * 0.8122557,
        size.height * 0.6479134);
    path_0.cubicTo(
        size.width * 0.8404401,
        size.height * 0.6540482,
        size.width * 0.8810762,
        size.height * 0.6340705,
        size.width * 0.8982332,
        size.height * 0.6177755);
    path_0.cubicTo(
        size.width * 0.9016543,
        size.height * 0.6176623,
        size.width * 0.9049990,
        size.height * 0.6175239,
        size.width * 0.9082472,
        size.height * 0.6174591);
    path_0.cubicTo(
        size.width * 0.9232972,
        size.height * 0.6171589,
        size.width * 0.9359200,
        size.height * 0.6178686,
        size.width * 0.9488171,
        size.height * 0.6271869);
    path_0.lineTo(size.width * 0.9488617, size.height * 0.6272185);
    path_0.lineTo(size.width * 0.9489077, size.height * 0.6272501);
    path_0.cubicTo(
        size.width * 0.9588188,
        size.height * 0.6341870,
        size.width * 0.9635299,
        size.height * 0.6472963,
        size.width * 0.9676159,
        size.height * 0.6619820);
    path_0.cubicTo(
        size.width * 0.9717017,
        size.height * 0.6766677,
        size.width * 0.9749691,
        size.height * 0.6926621,
        size.width * 0.9872225,
        size.height * 0.7040564);
    path_0.lineTo(size.width * 0.9872407, size.height * 0.7040727);
    path_0.lineTo(size.width * 0.9872578, size.height * 0.7040890);
    path_0.cubicTo(
        size.width * 1.010815,
        size.height * 0.7256853,
        size.width * 1.018387,
        size.height * 0.7402826,
        size.width * 1.017743,
        size.height * 0.7495997);
    path_0.cubicTo(
        size.width * 1.017098,
        size.height * 0.7589169,
        size.width * 1.008932,
        size.height * 0.7658338,
        size.width * 0.9938538,
        size.height * 0.7733468);
    path_0.cubicTo(
        size.width * 0.9637098,
        size.height * 0.7883667,
        size.width * 0.9102987,
        size.height * 0.8014278,
        size.width * 0.8761837,
        size.height * 0.8355658);
    path_0.cubicTo(
        size.width * 0.8465611,
        size.height * 0.8646888,
        size.width * 0.8104396,
        size.height * 0.8806836,
        size.width * 0.7786278,
        size.height * 0.8827578);
    path_0.cubicTo(
        size.width * 0.7468160,
        size.height * 0.8848318,
        size.width * 0.7193700,
        size.height * 0.8739244,
        size.width * 0.7031888,
        size.height * 0.8470943);
    path_0.lineTo(size.width * 0.7031520, size.height * 0.8470335);
    path_0.lineTo(size.width * 0.7031137, size.height * 0.8469737);
    path_0.cubicTo(
        size.width * 0.6930754,
        size.height * 0.8311984,
        size.width * 0.6972571,
        size.height * 0.8063027,
        size.width * 0.7057133,
        size.height * 0.7800427);
    path_0.cubicTo(
        size.width * 0.7141697,
        size.height * 0.7537825,
        size.width * 0.7263193,
        size.height * 0.7268191,
        size.width * 0.7279457,
        size.height * 0.7049035);
    path_0.lineTo(size.width * 0.7279457, size.height * 0.7048691);
    path_0.lineTo(size.width * 0.7279457, size.height * 0.7048358);
    path_0.cubicTo(
        size.width * 0.7296662,
        size.height * 0.6767561,
        size.width * 0.7315687,
        size.height * 0.6522341,
        size.width * 0.7372783,
        size.height * 0.6333135);
    path_0.cubicTo(
        size.width * 0.7429879,
        size.height * 0.6143929,
        size.width * 0.7519783,
        size.height * 0.6015786,
        size.width * 0.7679080,
        size.height * 0.5943779);
    path_0.cubicTo(
        size.width * 0.7686498,
        size.height * 0.5940426,
        size.width * 0.7693862,
        size.height * 0.5937263,
        size.width * 0.7701184,
        size.height * 0.5934273);
    path_0.close();
    path_0.moveTo(size.width * 0.2528244, size.height * 0.5952635);
    path_0.cubicTo(
        size.width * 0.2552019,
        size.height * 0.5952717,
        size.width * 0.2577180,
        size.height * 0.5954354,
        size.width * 0.2603987,
        size.height * 0.5957705);
    path_0.cubicTo(
        size.width * 0.2784304,
        size.height * 0.5980271,
        size.width * 0.2941547,
        size.height * 0.6084425,
        size.width * 0.3093043,
        size.height * 0.6254179);
    path_0.cubicTo(
        size.width * 0.3244540,
        size.height * 0.6423936,
        size.width * 0.3385505,
        size.height * 0.6655666,
        size.width * 0.3530414,
        size.height * 0.6912714);
    path_0.lineTo(size.width * 0.3530599, size.height * 0.6913030);
    path_0.lineTo(size.width * 0.3530770, size.height * 0.6913335);
    path_0.cubicTo(
        size.width * 0.3647219,
        size.height * 0.7114121,
        size.width * 0.3892946,
        size.height * 0.7334900,
        size.width * 0.4101185,
        size.height * 0.7560126);
    path_0.cubicTo(
        size.width * 0.4309422,
        size.height * 0.7785352,
        size.width * 0.4470585,
        size.height * 0.8011429,
        size.width * 0.4449598,
        size.height * 0.8184463);
    path_0.lineTo(size.width * 0.4449499, size.height * 0.8185215);
    path_0.lineTo(size.width * 0.4449429, size.height * 0.8185965);
    path_0.cubicTo(
        size.width * 0.4422280,
        size.height * 0.8481083,
        size.width * 0.4220767,
        size.height * 0.8641743,
        size.width * 0.3911424,
        size.height * 0.8700113);
    path_0.cubicTo(
        size.width * 0.3602174,
        size.height * 0.8758464,
        size.width * 0.3182938,
        size.height * 0.8700301,
        size.width * 0.2764197,
        size.height * 0.8519507);
    path_0.cubicTo(
        size.width * 0.2764070,
        size.height * 0.8519449,
        size.width * 0.2763949,
        size.height * 0.8519403,
        size.width * 0.2763829,
        size.height * 0.8519344);
    path_0.cubicTo(
        size.width * 0.2300558,
        size.height * 0.8316638,
        size.width * 0.1749431,
        size.height * 0.8336772,
        size.width * 0.1395899,
        size.height * 0.8275774);
    path_0.cubicTo(
        size.width * 0.1219086,
        size.height * 0.8245265,
        size.width * 0.1103714,
        size.height * 0.8199399,
        size.width * 0.1050762,
        size.height * 0.8114179);
    path_0.cubicTo(
        size.width * 0.09978062,
        size.height * 0.8028962,
        size.width * 0.09966243,
        size.height * 0.7880284,
        size.width * 0.1109153,
        size.height * 0.7626783);
    path_0.lineTo(size.width * 0.1109648, size.height * 0.7625664);
    path_0.lineTo(size.width * 0.1110094, size.height * 0.7624534);
    path_0.cubicTo(
        size.width * 0.1165743,
        size.height * 0.7482721,
        size.width * 0.1124560,
        size.height * 0.7327557,
        size.width * 0.1097541,
        size.height * 0.7181919);
    path_0.cubicTo(
        size.width * 0.1070523,
        size.height * 0.7036279,
        size.width * 0.1057310,
        size.height * 0.6903808,
        size.width * 0.1117508,
        size.height * 0.6811473);
    path_0.lineTo(size.width * 0.1117785, size.height * 0.6811051);
    path_0.lineTo(size.width * 0.1118059, size.height * 0.6810619);
    path_0.cubicTo(
        size.width * 0.1195133,
        size.height * 0.6687885,
        size.width * 0.1308183,
        size.height * 0.6644011,
        size.width * 0.1448491,
        size.height * 0.6602426);
    path_0.cubicTo(
        size.width * 0.1588799,
        size.height * 0.6560839,
        size.width * 0.1755174,
        size.height * 0.6528179,
        size.width * 0.1886554,
        size.height * 0.6419407);
    path_0.lineTo(size.width * 0.1887233, size.height * 0.6418834);
    path_0.lineTo(size.width * 0.1887912, size.height * 0.6418250);
    path_0.cubicTo(
        size.width * 0.2009369,
        size.height * 0.6312399,
        size.width * 0.2100601,
        size.height * 0.6179717,
        size.width * 0.2207376,
        size.height * 0.6085545);
    path_0.cubicTo(
        size.width * 0.2297467,
        size.height * 0.6006088,
        size.width * 0.2387624,
        size.height * 0.5953426,
        size.width * 0.2523518,
        size.height * 0.5952646);
    path_0.cubicTo(
        size.width * 0.2525090,
        size.height * 0.5952646,
        size.width * 0.2526670,
        size.height * 0.5952646,
        size.width * 0.2528256,
        size.height * 0.5952646);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(1);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7685971, size.height * 0.5938600);
    path_1.cubicTo(
        size.width * 0.7543965,
        size.height * 0.5987924,
        size.width * 0.7455917,
        size.height * 0.6106198,
        size.width * 0.7405146,
        size.height * 0.6221774);
    path_1.cubicTo(
        size.width * 0.7282031,
        size.height * 0.6517506,
        size.width * 0.7299986,
        size.height * 0.6835536,
        size.width * 0.7255956,
        size.height * 0.7141412);
    path_1.cubicTo(
        size.width * 0.7191908,
        size.height * 0.7464264,
        size.width * 0.7029045,
        size.height * 0.7770245,
        size.width * 0.6975486,
        size.height * 0.8095521);
    path_1.cubicTo(
        size.width * 0.6971214,
        size.height * 0.8221072,
        size.width * 0.6949497,
        size.height * 0.8355959,
        size.width * 0.7023532,
        size.height * 0.8471647);
    path_1.cubicTo(
        size.width * 0.7136338,
        size.height * 0.8658014,
        size.width * 0.7354013,
        size.height * 0.8815848,
        size.width * 0.7613817,
        size.height * 0.8830683);
    path_1.cubicTo(
        size.width * 0.7978418,
        size.height * 0.8861155,
        size.width * 0.8329745,
        size.height * 0.8712310,
        size.width * 0.8589427,
        size.height * 0.8511039);
    path_1.cubicTo(
        size.width * 0.8784482,
        size.height * 0.8347889,
        size.width * 0.8967128,
        size.height * 0.8168287,
        size.width * 0.9212499,
        size.height * 0.8053998);
    path_1.cubicTo(
        size.width * 0.9482749,
        size.height * 0.7916585,
        size.width * 0.9788294,
        size.height * 0.7828900,
        size.width * 1.004955,
        size.height * 0.7678399);
    path_1.cubicTo(
        size.width * 1.014681,
        size.height * 0.7623423,
        size.width * 1.021177,
        size.height * 0.7522710,
        size.width * 1.017595,
        size.height * 0.7425141);
    path_1.cubicTo(
        size.width * 1.011905,
        size.height * 0.7238022,
        size.width * 0.9930013,
        size.height * 0.7110731,
        size.width * 0.9812563,
        size.height * 0.6952311);
    path_1.cubicTo(
        size.width * 0.9680500,
        size.height * 0.6751709,
        size.width * 0.9699083,
        size.height * 0.6503222,
        size.width * 0.9542603,
        size.height * 0.6311444);
    path_1.cubicTo(
        size.width * 0.9419720,
        size.height * 0.6176126,
        size.width * 0.9192378,
        size.height * 0.6149357,
        size.width * 0.9001996,
        size.height * 0.6173829);
    path_1.cubicTo(
        size.width * 0.8929796,
        size.height * 0.6195875,
        size.width * 0.8887050,
        size.height * 0.6256843,
        size.width * 0.8820949,
        size.height * 0.6288692);
    path_1.cubicTo(
        size.width * 0.8616957,
        size.height * 0.6410139,
        size.width * 0.8363413,
        size.height * 0.6516471,
        size.width * 0.8107468,
        size.height * 0.6466657);
    path_1.cubicTo(
        size.width * 0.7891358,
        size.height * 0.6412682,
        size.width * 0.7776180,
        size.height * 0.6228650,
        size.width * 0.7731595,
        size.height * 0.6058046);
    path_1.cubicTo(
        size.width * 0.7711387,
        size.height * 0.6021092,
        size.width * 0.7732244,
        size.height * 0.5971511,
        size.width * 0.7699483,
        size.height * 0.5940386);
    path_1.cubicTo(
        size.width * 0.7695380,
        size.height * 0.5938565,
        size.width * 0.7690541,
        size.height * 0.5938172,
        size.width * 0.7685971,
        size.height * 0.5938600);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffffd300).withOpacity(1);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7690945, size.height * 0.5938079);
    path_2.cubicTo(
        size.width * 0.7393329,
        size.height * 0.6038858,
        size.width * 0.7366242,
        size.height * 0.6347983,
        size.width * 0.7318259,
        size.height * 0.6575058);
    path_2.cubicTo(
        size.width * 0.7274199,
        size.height * 0.6954700,
        size.width * 0.7228144,
        size.height * 0.7333348,
        size.width * 0.7082923,
        size.height * 0.7697452);
    path_2.cubicTo(
        size.width * 0.7005422,
        size.height * 0.7980311,
        size.width * 0.6864182,
        size.height * 0.8322367,
        size.width * 0.7107193,
        size.height * 0.8578447);
    path_2.cubicTo(
        size.width * 0.7262643,
        size.height * 0.8767151,
        size.width * 0.7545255,
        size.height * 0.8868170,
        size.width * 0.7817986,
        size.height * 0.8824058);
    path_2.cubicTo(
        size.width * 0.8343277,
        size.height * 0.8798124,
        size.width * 0.8659866,
        size.height * 0.8402170,
        size.width * 0.9042329,
        size.height * 0.8159155);
    path_2.cubicTo(
        size.width * 0.9371332,
        size.height * 0.7931552,
        size.width * 0.9824648,
        size.height * 0.7858088,
        size.width * 1.013033,
        size.height * 0.7607584);
    path_2.cubicTo(
        size.width * 1.027422,
        size.height * 0.7432226,
        size.width * 1.006423,
        size.height * 0.7239683,
        size.width * 0.9947993,
        size.height * 0.7098681);
    path_2.cubicTo(
        size.width * 0.9681708,
        size.height * 0.6875669,
        size.width * 0.9729355,
        size.height * 0.6531324,
        size.width * 0.9511101,
        size.height * 0.6287814);
    path_2.cubicTo(
        size.width * 0.9378045,
        size.height * 0.6161887,
        size.width * 0.9129062,
        size.height * 0.6138568,
        size.width * 0.8949646,
        size.height * 0.6200588);
    path_2.cubicTo(
        size.width * 0.8710848,
        size.height * 0.6365427,
        size.width * 0.8395993,
        size.height * 0.6520709,
        size.width * 0.8075018,
        size.height * 0.6452339);
    path_2.cubicTo(
        size.width * 0.7855600,
        size.height * 0.6355858,
        size.width * 0.7728195,
        size.height * 0.6144771,
        size.width * 0.7713191,
        size.height * 0.5945265);
    path_2.cubicTo(
        size.width * 0.7707727,
        size.height * 0.5940070,
        size.width * 0.7699176,
        size.height * 0.5937526,
        size.width * 0.7690945,
        size.height * 0.5938079);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffffbb00).withOpacity(1);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2523489, size.height * 0.5955270);
    path_3.cubicTo(
        size.width * 0.2213325,
        size.height * 0.5972643,
        size.width * 0.2084871,
        size.height * 0.6255380,
        size.width * 0.1882067,
        size.height * 0.6409346);
    path_3.cubicTo(
        size.width * 0.1660798,
        size.height * 0.6600493,
        size.width * 0.1233001,
        size.height * 0.6575867,
        size.width * 0.1101165,
        size.height * 0.6844131);
    path_3.cubicTo(
        size.width * 0.1015435,
        size.height * 0.7129178,
        size.width * 0.1221335,
        size.height * 0.7426478,
        size.width * 0.1071803,
        size.height * 0.7704642);
    path_3.cubicTo(
        size.width * 0.1014871,
        size.height * 0.7869161,
        size.width * 0.09490168,
        size.height * 0.8120957,
        size.width * 0.1182713,
        size.height * 0.8215418);
    path_3.cubicTo(
        size.width * 0.1662891,
        size.height * 0.8360964,
        size.width * 0.2202619,
        size.height * 0.8310538,
        size.width * 0.2672669,
        size.height * 0.8491122);
    path_3.cubicTo(
        size.width * 0.3038111,
        size.height * 0.8625685,
        size.width * 0.3429194,
        size.height * 0.8767546,
        size.width * 0.3839489,
        size.height * 0.8706424);
    path_3.cubicTo(
        size.width * 0.4197791,
        size.height * 0.8686062,
        size.width * 0.4493112,
        size.height * 0.8405149,
        size.width * 0.4443115,
        size.height * 0.8107114);
    path_3.cubicTo(
        size.width * 0.4377302,
        size.height * 0.7780534,
        size.width * 0.4061302,
        size.height * 0.7541761,
        size.width * 0.3838751,
        size.height * 0.7282356);
    path_3.cubicTo(
        size.width * 0.3451141,
        size.height * 0.6915371,
        size.width * 0.3332028,
        size.height * 0.6396250,
        size.width * 0.2880730,
        size.height * 0.6071064);
    path_3.cubicTo(
        size.width * 0.2781111,
        size.height * 0.6002203,
        size.width * 0.2656057,
        size.height * 0.5951430,
        size.width * 0.2523489,
        size.height * 0.5955270);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffffbb00).withOpacity(1);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5309158, size.height * 0.1544784);
    path_4.cubicTo(
        size.width * 0.5129451,
        size.height * 0.1544737,
        size.width * 0.4957316,
        size.height * 0.1609081,
        size.width * 0.4822433,
        size.height * 0.1704741);
    path_4.cubicTo(
        size.width * 0.4734616,
        size.height * 0.1766934,
        size.width * 0.4652384,
        size.height * 0.1834856,
        size.width * 0.4556093,
        size.height * 0.1888507);
    path_4.cubicTo(
        size.width * 0.4475298,
        size.height * 0.1939845,
        size.width * 0.4388444,
        size.height * 0.1985850,
        size.width * 0.4315229,
        size.height * 0.2044680);
    path_4.cubicTo(
        size.width * 0.4250062,
        size.height * 0.2102091,
        size.width * 0.4240634,
        size.height * 0.2190027,
        size.width * 0.4277377,
        size.height * 0.2260648);
    path_4.cubicTo(
        size.width * 0.4323881,
        size.height * 0.2358606,
        size.width * 0.4422957,
        size.height * 0.2432029,
        size.width * 0.4525260,
        size.height * 0.2490758);
    path_4.cubicTo(
        size.width * 0.4623303,
        size.height * 0.2539911,
        size.width * 0.4718016,
        size.height * 0.2594010,
        size.width * 0.4801177,
        size.height * 0.2659626);
    path_4.cubicTo(
        size.width * 0.4908757,
        size.height * 0.2740882,
        size.width * 0.5030254,
        size.height * 0.2820822,
        size.width * 0.5178520,
        size.height * 0.2840200);
    path_4.cubicTo(
        size.width * 0.5279372,
        size.height * 0.2854984,
        size.width * 0.5383787,
        size.height * 0.2850852,
        size.width * 0.5484384,
        size.height * 0.2836765);
    path_4.cubicTo(
        size.width * 0.5665981,
        size.height * 0.2805552,
        size.width * 0.5819950,
        size.height * 0.2715806,
        size.width * 0.5975081,
        size.height * 0.2636964);
    path_4.cubicTo(
        size.width * 0.6049473,
        size.height * 0.2596500,
        size.width * 0.6134347,
        size.height * 0.2573967,
        size.width * 0.6216815,
        size.height * 0.2547941);
    path_4.cubicTo(
        size.width * 0.6387503,
        size.height * 0.2488751,
        size.width * 0.6554409,
        size.height * 0.2395700,
        size.width * 0.6637849,
        size.height * 0.2254727);
    path_4.cubicTo(
        size.width * 0.6685413,
        size.height * 0.2177249,
        size.width * 0.6684022,
        size.height * 0.2077564,
        size.width * 0.6617746,
        size.height * 0.2007574);
    path_4.cubicTo(
        size.width * 0.6530380,
        size.height * 0.1912013,
        size.width * 0.6385359,
        size.height * 0.1875074,
        size.width * 0.6255975,
        size.height * 0.1833173);
    path_4.cubicTo(
        size.width * 0.6129465,
        size.height * 0.1794057,
        size.width * 0.5996571,
        size.height * 0.1764485,
        size.width * 0.5883443,
        size.height * 0.1701183);
    path_4.cubicTo(
        size.width * 0.5711424,
        size.height * 0.1612453,
        size.width * 0.5515276,
        size.height * 0.1543196,
        size.width * 0.5309158,
        size.height * 0.1544784);
    path_4.close();
    path_4.moveTo(size.width * 0.6409774, size.height * 0.2109438);
    path_4.cubicTo(
        size.width * 0.6414696,
        size.height * 0.2125215,
        size.width * 0.6411669,
        size.height * 0.2142400,
        size.width * 0.6412635,
        size.height * 0.2158699);
    path_4.cubicTo(
        size.width * 0.6302928,
        size.height * 0.2178962,
        size.width * 0.6210227,
        size.height * 0.2235511,
        size.width * 0.6113204,
        size.height * 0.2279473);
    path_4.cubicTo(
        size.width * 0.5892320,
        size.height * 0.2386383,
        size.width * 0.5668172,
        size.height * 0.2502118,
        size.width * 0.5412472,
        size.height * 0.2540781);
    path_4.cubicTo(
        size.width * 0.5328678,
        size.height * 0.2552057,
        size.width * 0.5239618,
        size.height * 0.2552130,
        size.width * 0.5153570,
        size.height * 0.2548338);
    path_4.cubicTo(
        size.width * 0.4986952,
        size.height * 0.2532187,
        size.width * 0.4829381,
        size.height * 0.2471645,
        size.width * 0.4695738,
        size.height * 0.2388523);
    path_4.cubicTo(
        size.width * 0.4591407,
        size.height * 0.2327229,
        size.width * 0.4502254,
        size.height * 0.2250837,
        size.width * 0.4404529,
        size.height * 0.2183065);
    path_4.cubicTo(
        size.width * 0.4409501,
        size.height * 0.2166311,
        size.width * 0.4404090,
        size.height * 0.2142983,
        size.width * 0.4409990,
        size.height * 0.2130308);
    path_4.cubicTo(
        size.width * 0.4473914,
        size.height * 0.2157266,
        size.width * 0.4518502,
        size.height * 0.2204396,
        size.width * 0.4573653,
        size.height * 0.2241776);
    path_4.cubicTo(
        size.width * 0.4699979,
        size.height * 0.2339214,
        size.width * 0.4842938,
        size.height * 0.2425990,
        size.width * 0.5008764,
        size.height * 0.2470865);
    path_4.cubicTo(
        size.width * 0.5088942,
        size.height * 0.2495642,
        size.width * 0.5174602,
        size.height * 0.2504255,
        size.width * 0.5259844,
        size.height * 0.2501249);
    path_4.cubicTo(
        size.width * 0.5406871,
        size.height * 0.2505764,
        size.width * 0.5549540,
        size.height * 0.2465342,
        size.width * 0.5682603,
        size.height * 0.2417540);
    path_4.cubicTo(
        size.width * 0.5894661,
        size.height * 0.2339999,
        size.width * 0.6085213,
        size.height * 0.2228070,
        size.width * 0.6290869,
        size.height * 0.2141348);
    path_4.cubicTo(
        size.width * 0.6328530,
        size.height * 0.2126837,
        size.width * 0.6368203,
        size.height * 0.2113272,
        size.width * 0.6409774,
        size.height * 0.2109438);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffffbb00).withOpacity(1);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.8055741, size.height * 0.5561644);
    path_5.cubicTo(
        size.width * 0.7956353,
        size.height * 0.5559385,
        size.width * 0.7857656,
        size.height * 0.5609692,
        size.width * 0.7826660,
        size.height * 0.5689425);
    path_5.cubicTo(
        size.width * 0.7783760,
        size.height * 0.5796661,
        size.width * 0.7793126,
        size.height * 0.5915487,
        size.width * 0.7831391,
        size.height * 0.6022797);
    path_5.cubicTo(
        size.width * 0.7875671,
        size.height * 0.6136500,
        size.width * 0.7965474,
        size.height * 0.6256423,
        size.width * 0.8115914,
        size.height * 0.6285033);
    path_5.cubicTo(
        size.width * 0.8272863,
        size.height * 0.6308591,
        size.width * 0.8428645,
        size.height * 0.6247518,
        size.width * 0.8553335,
        size.height * 0.6173716);
    path_5.cubicTo(
        size.width * 0.8652456,
        size.height * 0.6112158,
        size.width * 0.8758710,
        size.height * 0.6030707,
        size.width * 0.8758587,
        size.height * 0.5920034);
    path_5.cubicTo(
        size.width * 0.8755284,
        size.height * 0.5817757,
        size.width * 0.8645646,
        size.height * 0.5749553,
        size.width * 0.8549578,
        size.height * 0.5700629);
    path_5.cubicTo(
        size.width * 0.8399171,
        size.height * 0.5629579,
        size.width * 0.8232671,
        size.height * 0.5562279,
        size.width * 0.8055741,
        size.height * 0.5561644);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xff000000).withOpacity(1);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.5296286, size.height * 0.1535843);
    path_6.cubicTo(
        size.width * 0.5092478,
        size.height * 0.1535082,
        size.width * 0.4904751,
        size.height * 0.1623984,
        size.width * 0.4759459,
        size.height * 0.1736111);
    path_6.cubicTo(
        size.width * 0.4620286,
        size.height * 0.1841691,
        size.width * 0.4460022,
        size.height * 0.1926686,
        size.width * 0.4318261,
        size.height * 0.2029918);
    path_6.cubicTo(
        size.width * 0.4223538,
        size.height * 0.2098190,
        size.width * 0.4225421,
        size.height * 0.2221166,
        size.width * 0.4288701,
        size.height * 0.2304522);
    path_6.cubicTo(
        size.width * 0.4376373,
        size.height * 0.2432116,
        size.width * 0.4535801,
        size.height * 0.2505571,
        size.width * 0.4675832,
        size.height * 0.2588020);
    path_6.cubicTo(
        size.width * 0.4812980,
        size.height * 0.2673603,
        size.width * 0.4930737,
        size.height * 0.2787718,
        size.width * 0.5098856,
        size.height * 0.2833304);
    path_6.cubicTo(
        size.width * 0.5233070,
        size.height * 0.2870721,
        size.width * 0.5380274,
        size.height * 0.2864634,
        size.width * 0.5517157,
        size.height * 0.2840872);
    path_6.cubicTo(
        size.width * 0.5721801,
        size.height * 0.2796677,
        size.width * 0.5889160,
        size.height * 0.2682472,
        size.width * 0.6074448,
        size.height * 0.2605842);
    path_6.cubicTo(
        size.width * 0.6220291,
        size.height * 0.2557776,
        size.width * 0.6371485,
        size.height * 0.2510808,
        size.width * 0.6490962,
        size.height * 0.2423110);
    path_6.cubicTo(
        size.width * 0.6573082,
        size.height * 0.2361754,
        size.width * 0.6653993,
        size.height * 0.2286526,
        size.width * 0.6674463,
        size.height * 0.2193812);
    path_6.cubicTo(
        size.width * 0.6683436,
        size.height * 0.2129737,
        size.width * 0.6684482,
        size.height * 0.2058193,
        size.width * 0.6629884,
        size.height * 0.2006550);
    path_6.cubicTo(
        size.width * 0.6524068,
        size.height * 0.1887793,
        size.width * 0.6340129,
        size.height * 0.1851612,
        size.width * 0.6182606,
        size.height * 0.1800230);
    path_6.cubicTo(
        size.width * 0.6066879,
        size.height * 0.1766945,
        size.width * 0.5952301,
        size.height * 0.1729414,
        size.width * 0.5850379,
        size.height * 0.1672272);
    path_6.cubicTo(
        size.width * 0.5681939,
        size.height * 0.1593495,
        size.width * 0.5493676,
        size.height * 0.1528152,
        size.width * 0.5296286,
        size.height * 0.1535843);
    path_6.close();
    path_6.moveTo(size.width * 0.6399455, size.height * 0.2122077);
    path_6.cubicTo(
        size.width * 0.6399809,
        size.height * 0.2135789,
        size.width * 0.6406678,
        size.height * 0.2155966,
        size.width * 0.6381848,
        size.height * 0.2153987);
    path_6.cubicTo(
        size.width * 0.6202549,
        size.height * 0.2212619,
        size.width * 0.6043647,
        size.height * 0.2306498,
        size.width * 0.5873542,
        size.height * 0.2379577);
    path_6.cubicTo(
        size.width * 0.5686431,
        size.height * 0.2465993,
        size.width * 0.5482828,
        size.height * 0.2540402,
        size.width * 0.5265029,
        size.height * 0.2538247);
    path_6.cubicTo(
        size.width * 0.5055022,
        size.height * 0.2549586,
        size.width * 0.4854795,
        size.height * 0.2472974,
        size.width * 0.4689748,
        size.height * 0.2371434);
    path_6.cubicTo(
        size.width * 0.4597392,
        size.height * 0.2311570,
        size.width * 0.4510397,
        size.height * 0.2246352,
        size.width * 0.4421988,
        size.height * 0.2182620);
    path_6.cubicTo(
        size.width * 0.4419925,
        size.height * 0.2161957,
        size.width * 0.4417692,
        size.height * 0.2136383,
        size.width * 0.4444642,
        size.height * 0.2162707);
    path_6.cubicTo(
        size.width * 0.4606690,
        size.height * 0.2277100,
        size.width * 0.4761930,
        size.height * 0.2407739,
        size.width * 0.4966667,
        size.height * 0.2469145);
    path_6.cubicTo(
        size.width * 0.5104368,
        size.height * 0.2518718,
        size.width * 0.5257925,
        size.height * 0.2516142,
        size.width * 0.5404171,
        size.height * 0.2502653);
    path_6.cubicTo(
        size.width * 0.5688982,
        size.height * 0.2456804,
        size.width * 0.5933042,
        size.height * 0.2318022,
        size.width * 0.6182199,
        size.height * 0.2203151);
    path_6.cubicTo(
        size.width * 0.6251245,
        size.height * 0.2172395,
        size.width * 0.6323241,
        size.height * 0.2134593,
        size.width * 0.6399455,
        size.height * 0.2122077);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xffff9c00).withOpacity(1);
    canvas.drawPath(path_6, paint_6_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

