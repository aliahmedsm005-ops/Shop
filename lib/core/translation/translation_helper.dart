import 'package:get/get.dart';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';

class TranslationHelper extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,

    'ar': ar,

    'fr': fr,

  };

}