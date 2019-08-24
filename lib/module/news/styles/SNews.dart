import 'package:flutter/material.dart';

class SNews {
  static TextStyle DESCRIPTION_TEXT_TS(String fontSize){
    switch(fontSize){
      case 'm':
        return const TextStyle(fontSize: 12.0, color: Color(0xFF707070),
            height: 1.5
        );
        break;
      case 'l':
        return const TextStyle(fontSize: 18.0, color: Color(0xFF707070));
        break;
      case 's':
      default:
        return const TextStyle(fontSize: 6.0, color: Color(0xFF707070),
        height: 7.0
        );
        break;
    }
  }

  static TextStyle TITLE_TEXT_TS(String font_size){
    switch(font_size){
      case 'm':
        return const TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0, color: Color(0xFFF8FAFF));
        break;
      case 'l':
        return const TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0, color: Colors.white);
        break;
      case 's':
      default:
        return const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.white);
        break;
    }
  }

  static TextStyle LABEL_TEXT_TS(String font_size){
    switch(font_size){
      case 'm':
        return const TextStyle(fontSize: 14.0, color: Colors.white);
        break;
      case 'l':
        return const TextStyle(fontSize: 16.0, color: Colors.white);
        break;
      case 's':
      default:
        return const TextStyle(fontSize: 12.0, color: Colors.white);
        break;
    }
  }

  static TextStyle DATE_TEXT_TS(String font_size){
    switch(font_size){
      case 'm':
        return const TextStyle(fontSize: 12.0, color: Color(0xFF707070));
        break;
      case 'l':
        return const TextStyle(fontSize: 16.0, color: Color(0xFF707070));
        break;
      case 's':
      default:
        return const TextStyle(fontSize: 10.0, color: Color(0xFF707070));
        break;
    }
  }

  static const TextStyle CARD_LABEL_TEXT_TS = TextStyle(fontSize: 14.0, color: Colors.white);
  static const TextStyle CARD_TITLE_TEXT_TS = TextStyle(fontSize: 16.0, color: Color(0xFF3361CA));
  static const TextStyle CARD_DESCRIPTION_TEXT_TS = TextStyle(fontSize: 12.0, color: Color(0xFF545454));
  static const TextStyle CARD_DATE_TEXT_TS = TextStyle(fontSize: 12.0, color: Color(0xFF9B9B9B));

}