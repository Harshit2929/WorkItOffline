import 'package:flutter/material.dart';

final standard_btn_bg_color = Color.fromRGBO(13, 12, 34, 0.05);
final scrollbar_thumb_color = Color.fromRGBO(170, 184, 194, 1);
final scrollbar_track_color = Color.fromRGBO(247, 249, 250, 1);

const text_color_1 = Color(0xFF215389);
final text_color_2 = Color(0xFF0d0c22);
final text_color_3 = Color(0xFF44c0eb);
final text_color_4 = Color.fromRGBO(91, 112, 131, 1);
const text_color_5 = Color.fromRGBO(235, 238, 240, 1);
final text_color_6 = Color.fromRGBO(196, 207, 214, 1);
final text_color_7 = Color(0xFF6e6d7a);

final box_shadow_1 = Color.fromRGBO(13, 12, 34, 0.2);

final background_color_1 = Color(0xFF343A40);
final background_color_2 = Color(0xFFECECEC);
final background_color_3 = Color(0xFFCC0000);
final bg_color_4 = Color.fromRGBO(13, 12, 34, 0.05);

final blue_0 = Color(0xFF000E36);
final blue_1 = Color(0xFF01225A);
final blue_2 = Color(0xFF0173E0);
final blue_3 = Color(0xFF02B0FF);
final blue_4 = Color(0xFFB1D9FB);
final blue_5 = Color(0xFFF1F2F6);

final white_0 = Color(0xFFffffff);
final white_1 = Color(0xFFF1F2F6);
final white_2 = Color(0xFFF5F9FB);

final font_size_12 = 12.0;
final font_size_14 = 14.0;

final normalButtonBorderColor = Color.fromRGBO(207, 217, 222, 1);
final activeButtonBackgroundColor = Color.fromRGBO(15, 20, 25, 1);

final disbledColor = Color.fromRGBO(230, 230, 230, 1);

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

// guidelines used for design
// all the headings will have font weight medium
// body will have regular font weight
//
class AppTheme {
  AppTheme._();
  static const Color standardColor = Color(0xFF212529);
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'Ubuntu';
  static const String font_name_main = 'Raleway';
  static const Color linkText = Color(0xff007bff);

  static TextStyle get_text_style(String type) {
    //in type 1 comes, user_name and name in thread feed entry
    if (type == "user_name_feed" || type == "full_name_feed") {
      return type_1;
    } else if (type == "pi_name_feed" || type == "time_feed") {
      //type 2 pi_name in feed entry, time in feed entry
      return type_2;
    } else if (type == "thread_size_3") {
      return thread_size_3;
    } else {
      return body1;
    }
  }

  static const TextTheme textTheme = TextTheme(
      headline4: headline4,
      headline5: headline5,
      headline6: headline6,
      subtitle2: subtitle,
      subtitle1: subtitleMedium,
      bodyText2: body2,
      bodyText1: body1,
      caption: caption,
      labelMedium: label);

  static const TextStyle headline4 = TextStyle(
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w200,
    fontSize: 32,
    letterSpacing: 0.25,
  );

  static const TextStyle headline5 = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w200,
    fontSize: 32,
    letterSpacing: 0,
  );

  static const TextStyle headline6 = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 20,
    letterSpacing: 0.15,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.15,
    color: standardColor,
  );

  static const TextStyle subtitleMedium = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.15,
    color: standardColor,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.4,
    color: lightText, // was lightText
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.25,
    color: standardColor,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.5,
    color: standardColor,
  );

  static const TextStyle label = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: standardColor,
      letterSpacing: 0.14);

  static const TextStyle error =
  TextStyle(fontFamily: fontName, color: Colors.red, fontSize: 12);

  static const TextStyle type_1 = TextStyle(
    // Caption -> caption
      fontWeight: FontWeight.bold,
      fontSize: 12,
      fontFamily: fontName,
      height: 1.2);

  static const TextStyle type_2 = TextStyle(
      fontSize: 11,
      fontFamily: fontName,
      fontWeight: FontWeight.normal,
      height: 1.5);
  static const TextStyle type_3 = TextStyle(
      fontSize: 15,
      fontFamily: fontName,
      fontWeight: FontWeight.normal,
      color: standardColor);
  static const TextStyle thread_size_3 = TextStyle(
    fontSize: 15,
    fontFamily: fontName,
    fontWeight: FontWeight.normal,
    // height: 1.3
  );
  static const TextStyle thread_size_2 = TextStyle(
    fontSize: 18,
    fontFamily: fontName,
    fontWeight: FontWeight.normal,
    // height: 1.3
  );
  static const TextStyle thread_size_2_highlight =
  TextStyle(fontSize: 18, fontFamily: fontName, color: Colors.blue);
  static const TextStyle thread_size_3_highlight =
  TextStyle(fontSize: 15, fontFamily: fontName, color: Colors.blue);
  static const TextStyle pi_listing_name = TextStyle(
    fontSize: 18,
    fontFamily: font_name_main,
  );
  static const TextStyle pi_listing_description = TextStyle(
    fontSize: 15,
    fontFamily: fontName,
  );
  static const TextStyle underline_heading = TextStyle(
      fontSize: 18, fontFamily: fontName, decoration: TextDecoration.underline);
  static const TextStyle education_degree_plus_discipline = TextStyle(
    fontSize: 18,
    fontFamily: fontName,
  );
}
