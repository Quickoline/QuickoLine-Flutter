import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userref = prefs.getString('ff_userref')?.ref ?? _userref;
    });
    _safeInit(() {
      _userref2 = prefs.getString('ff_userref2') ?? _userref2;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  set userref(DocumentReference? value) {
    _userref = value;
    value != null
        ? prefs.setString('ff_userref', value.path)
        : prefs.remove('ff_userref');
  }

  String _userref2 = '';
  String get userref2 => _userref2;
  set userref2(String value) {
    _userref2 = value;
    prefs.setString('ff_userref2', value);
  }

  DocumentReference? _userref3;
  DocumentReference? get userref3 => _userref3;
  set userref3(DocumentReference? value) {
    _userref3 = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
