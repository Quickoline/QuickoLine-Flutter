import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'p2we3wf7': {
      'en': 'QuickoLine',
      'hi': 'Quickoline',
    },
    's59lihx9': {
      'en': 'Profile',
      'hi': '',
    },
    'vpz9m7s8': {
      'en': 'Trending',
      'hi': '',
    },
    '5mjakcb2': {
      'en': 'Refer & Earn',
      'hi': '',
    },
    'yfgcf1gv': {
      'en': 'Policies',
      'hi': '',
    },
    '0exqo8jh': {
      'en': 'Feedback',
      'hi': '',
    },
    'hbap7yf2': {
      'en': 'Rate Us',
      'hi': '',
    },
    's7q3danr': {
      'en': 'Help',
      'hi': '',
    },
    'p3dt8hll': {
      'en': 'Log Out',
      'hi': 'लाग आउट ',
    },
    'm0ejgitm': {
      'en': 'Search',
      'hi': 'खोजें',
    },
    '29176rl9': {
      'en': 'Form Filling',
      'hi': 'फॉर्म पूर्तिकरण',
    },
    'm0dl2s1r': {
      'en': 'Legal Work',
      'hi': 'कानूनी कार्य',
    },
    '15bsg4cf': {
      'en': 'Last Minute',
      'hi': 'अंतिम क्षण  सेवाएँ',
    },
    '25m3fw2z': {
      'en': 'More',
      'hi': 'अन्य सेवाएँ',
    },
    'liivofuq': {
      'en': 'Some Useful Resources',
      'hi': 'कुछ महत्तवपूर्ण लिंक्स',
    },
    'acz1nx9y': {
      'en': 'Profile',
      'hi': 'प्रोफाइल ',
    },
  },
  // Auth2
  {
    'a0b8ap2h': {
      'en': 'Quickoline',
      'hi': '',
    },
    '6kve5sd7': {
      'en': 'Create Account',
      'hi': '',
    },
    'zbn20fts': {
      'en': 'Create Account',
      'hi': '',
    },
    'jnuqgje3': {
      'en': 'Let\'s get started by filling out the form below.',
      'hi': '',
    },
    'fx1krmas': {
      'en': 'Email',
      'hi': '',
    },
    'nqsga5xl': {
      'en': 'Password',
      'hi': '',
    },
    'o6pp8rcg': {
      'en': 'Whatsapp number',
      'hi': '',
    },
    'vdd2drg2': {
      'en': 'I agree to Terms & Conditons',
      'hi': '',
    },
    'ebg80n7h': {
      'en': 'Get Started',
      'hi': '',
    },
    '2xtq196b': {
      'en': 'Log In',
      'hi': '',
    },
    'ahe0ra49': {
      'en': 'Welcome Back',
      'hi': '',
    },
    '6rrmq56y': {
      'en': 'Fill out the information below in order to access your account.',
      'hi': '',
    },
    'up03j2zf': {
      'en': 'Email',
      'hi': '',
    },
    'aqk2f0k0': {
      'en': 'Password',
      'hi': '',
    },
    'x3biwk2r': {
      'en': 'Sign In',
      'hi': '',
    },
    'kkns9qp6': {
      'en': 'Forgot Password?',
      'hi': '',
    },
    'cccs85l1': {
      'en': 'Home',
      'hi': '',
    },
  },
  // profile2
  {
    'i8xakpn9': {
      'en': 'Profile',
      'hi': 'प्रोफाइल',
    },
    '5gqk4onf': {
      'en': 'WELCOME',
      'hi': 'वेलकम',
    },
    'qcwqig28': {
      'en': 'Switch to Dark Mode',
      'hi': 'डार्क मोड में जाएं',
    },
    '0xnbtx8l': {
      'en': 'Switch to Light Mode',
      'hi': 'लाइट मोड में जाएं ',
    },
    '2ov9s8mc': {
      'en': 'Account Settings',
      'hi': '',
    },
    'ze3ek2f1': {
      'en': 'Edit profile',
      'hi': 'प्रोफाइल अपडेट करें ',
    },
    'cb9w9lkv': {
      'en': 'Change Password',
      'hi': 'पासवर्ड बदलें ',
    },
    '9mxv9t3k': {
      'en': 'Help',
      'hi': 'सहायता केंद्र ',
    },
    '6sc5yz1n': {
      'en': 'Log Out',
      'hi': 'लाग आउट ',
    },
    '9eehtad4': {
      'en': '__',
      'hi': '',
    },
  },
  // uploads
  {
    'igofy150': {
      'en': 'Document Upload',
      'hi': '',
    },
    'g6xt3m5u': {
      'en': 'Submit',
      'hi': '',
    },
    'bjcgpso9': {
      'en': 'Home',
      'hi': '',
    },
  },
  // list
  {
    '37kgp541': {
      'en': 'Search',
      'hi': '',
    },
    'cuu6bgeb': {
      'en': 'NEET',
      'hi': '',
    },
    'wkvpodqx': {
      'en': 'CUET',
      'hi': '',
    },
    '54ccd4h6': {
      'en': 'UPSC',
      'hi': '',
    },
    'asbu6eqz': {
      'en': 'SSC',
      'hi': '',
    },
    '5ywuvje7': {
      'en': 'JEECUP',
      'hi': '',
    },
    'vgwzr3d8': {
      'en': 'Form Filling',
      'hi': '',
    },
    'g1xeg17m': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Details
  {
    'c7pp0k2n': {
      'en': 'Form Filling',
      'hi': '',
    },
    'eab7zj12': {
      'en': 'Application Begin : ',
      'hi': '',
    },
    'u74dcug8': {
      'en': 'Last Date for Apply Online : ',
      'hi': '',
    },
    'vg8ixa8o': {
      'en': 'Pay Exam Fee Last Date : ',
      'hi': '',
    },
    'a5acrq2d': {
      'en': 'Correction Date : ',
      'hi': '',
    },
    '5khhxxr8': {
      'en': 'Exam Date Online :',
      'hi': '',
    },
    'u9cfnq1o': {
      'en': 'Exam City Details Available : ',
      'hi': '',
    },
    '5ra16ub0': {
      'en': 'Answer Key Available : ',
      'hi': '',
    },
    'sz6zyjaj': {
      'en': 'Result Declared : ',
      'hi': '',
    },
    'ivy3brri': {
      'en': 'Required Documents',
      'hi': '',
    },
    'qh6m13gk': {
      'en': 'Apply Now',
      'hi': '',
    },
  },
  // Paid
  {
    'b3cybmn6': {
      'en': 'Order Placed!',
      'hi': '',
    },
    '9u2hm7x2': {
      'en':
          'Thanks for Using Quickoline, Your 0rder has been processesd \nOur Executive will contact you via Whatsapp Shortly',
      'hi': '',
    },
    '1nte1agw': {
      'en': 'Go Home',
      'hi': '',
    },
    't5c174q7': {
      'en': 'Home',
      'hi': '',
    },
  },
  // pay
  {
    '7sszpfa8': {
      'en': 'Invoice Amount',
      'hi': '',
    },
    'yk5s1vdl': {
      'en': 'DUE',
      'hi': '',
    },
    'mllvktox': {
      'en': 'Rs.49',
      'hi': '',
    },
    'hstcv7gh': {
      'en': 'Due on:',
      'hi': '',
    },
    'kz208wo8': {
      'en': 'April 17th, 2024',
      'hi': '',
    },
    '0er4i95s': {
      'en': 'Invoice #:',
      'hi': '',
    },
    'wlxw1sme': {
      'en': '5242124422',
      'hi': '',
    },
    '5yu6v14a': {
      'en': 'Note',
      'hi': '',
    },
    'wz3kc3hh': {
      'en': 'Pay Refundable 49 to Start the Process',
      'hi': '',
    },
    'xgdlcag5': {
      'en': 'Customer Information',
      'hi': '',
    },
    '9qdyrj44': {
      'en': 'Virat',
      'hi': '',
    },
    'k89tb93c': {
      'en': 'iviratking@gmail.com',
      'hi': '',
    },
    'bxgha1ou': {
      'en': 'Billing Address:',
      'hi': '',
    },
    '3cwtetbn': {
      'en': 'Harraiya, Basti,272155',
      'hi': '',
    },
    '27yaxmqe': {
      'en': 'Customer Since:',
      'hi': '',
    },
    'kmy64zzs': {
      'en': 'May 30th, 2021',
      'hi': '',
    },
    '7wdrhbi9': {
      'en': 'Pay Refundablen Rs.49',
      'hi': '',
    },
    'vv05s1yf': {
      'en': 'Payment',
      'hi': '',
    },
    '4d021nm7': {
      'en': 'Home',
      'hi': '',
    },
  },
  // UploadScreen
  {
    'v40383jr': {
      'en': 'Documents Upload',
      'hi': '',
    },
    'll3xblel': {
      'en': 'Aadhar Card',
      'hi': '',
    },
    'pt6pvqyg': {
      'en': 'Upload',
      'hi': '',
    },
    '7q90yifx': {
      'en': 'Photo',
      'hi': '',
    },
    'v5mziuo2': {
      'en': 'Upload',
      'hi': '',
    },
    '0llueem4': {
      'en': 'Signature',
      'hi': '',
    },
    'vggfa3x0': {
      'en': 'Upload',
      'hi': '',
    },
    '7ltz59z2': {
      'en': 'Submit',
      'hi': '',
    },
    'hhigji6m': {
      'en': 'Home',
      'hi': '',
    },
  },
  // comingSoon
  {
    'evz87idp': {
      'en': 'Coming Soon!',
      'hi': '',
    },
    'auq63o1u': {
      'en': 'Home',
      'hi': '',
    },
  },
  // HelpCentre
  {
    'ym7aonwq': {
      'en': 'Help',
      'hi': '',
    },
    '20yppro7': {
      'en': 'Welcome to support',
      'hi': '',
    },
    'diih32d7': {
      'en': ' Name',
      'hi': '',
    },
    'arjxw4hv': {
      'en': 'Phone Number',
      'hi': '',
    },
    '2bjd8gh7': {
      'en': 'Message',
      'hi': '',
    },
    'zak30by3': {
      'en': 'Enter Your Message',
      'hi': '',
    },
    'el3cq7j4': {
      'en': 'Upload Screenshot',
      'hi': '',
    },
    'v3ofzvv4': {
      'en': 'Submit ',
      'hi': '',
    },
    'rrkwdxeh': {
      'en': 'Home',
      'hi': '',
    },
  },
  // formwp
  {
    'cj9frj18': {
      'en': 'Enter Your Whatsapp Number',
      'hi': '',
    },
    'zf8ghwr1': {
      'en': 'Whatsapp Number',
      'hi': '',
    },
    '4nf4662y': {
      'en': 'Submit ',
      'hi': '',
    },
    '7wc6y1n0': {
      'en': 'Home',
      'hi': '',
    },
  },
  // password
  {
    '4ve3xr58': {
      'en': 'Back',
      'hi': '',
    },
    'xoqmutaq': {
      'en': 'Forgot Password',
      'hi': '',
    },
    '37ecg2ch': {
      'en':
          'We will send you an email with a link to reset your password, please enter  your email below.',
      'hi': '',
    },
    'mw76eg33': {
      'en': 'Your email address...',
      'hi': '',
    },
    '7r2v3091': {
      'en': 'Enter your email...',
      'hi': '',
    },
    'lm4mald3': {
      'en': 'Send Link',
      'hi': '',
    },
    '8m5v02wr': {
      'en': 'Back',
      'hi': '',
    },
    'yewbqmw9': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Policy
  {
    'tflr6gox': {
      'en': 'Page Title',
      'hi': '',
    },
    'fiflrpup': {
      'en': 'Home',
      'hi': '',
    },
  },
  // SupportPage
  {
    'bc1iog3u': {
      'en': 'Welcome to support',
      'hi': '',
    },
    '9qzihrgk': {
      'en': 'How can we help you?',
      'hi': '',
    },
    'vsndvnwr': {
      'en': 'Whatsapp',
      'hi': '',
    },
    'h5cjotx2': {
      'en': 'Email Us',
      'hi': '',
    },
    '0qj3dt1y': {
      'en': 'Review FAQ\'s below',
      'hi': '',
    },
    '3vpfm4zs': {
      'en': 'How do I download Code?',
      'hi': '',
    },
    'suxvwsn9': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'hi': '',
    },
    '3fonbwzv': {
      'en': 'How do I download Code?',
      'hi': '',
    },
    'h1pf5k4t': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'hi': '',
    },
    'vskra3jg': {
      'en': 'How do I download Code?',
      'hi': '',
    },
    'qj7gb95y': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'hi': '',
    },
    'iz58fsr9': {
      'en': 'Get support',
      'hi': '',
    },
    'mb9syxqm': {
      'en': 'Home',
      'hi': '',
    },
  },
  // profile
  {
    'vhlmzqgn': {
      'en': 'Name',
      'hi': '',
    },
    '9ojijz9g': {
      'en': 'Email',
      'hi': '',
    },
    'hiw7p3q6': {
      'en': 'Phone Number',
      'hi': '',
    },
    '7ktzyenn': {
      'en': 'Save Changes',
      'hi': '',
    },
    'y94fdfgr': {
      'en': 'Update your Profile',
      'hi': '',
    },
  },
  // Terms
  {
    's001597w': {
      'en': 'Terms & Conditions',
      'hi': '',
    },
    'u0lfdpgd': {
      'en': 'Home',
      'hi': '',
    },
  },
  // suppo
  {
    'o5fwdn46': {
      'en': 'Review Terms & Conditions',
      'hi': '',
    },
    'yy4jjha1': {
      'en': 'Hello World',
      'hi': '',
    },
    '8z4878pw': {
      'en': 'Hello World',
      'hi': '',
    },
    'vmkndvze': {
      'en': 'Hello World',
      'hi': '',
    },
    'dskrkbf1': {
      'en': 'Hello World',
      'hi': '',
    },
    'e4o9r1rp': {
      'en': 'Hello World',
      'hi': '',
    },
    'vf0ujcp6': {
      'en': 'Hello World',
      'hi': '',
    },
    'cym9itku': {
      'en': 'Hello World',
      'hi': '',
    },
    '2hazmoka': {
      'en': 'Hello World',
      'hi': '',
    },
    'jssg27nh': {
      'en': 'Hello World',
      'hi': '',
    },
    '543cp7u2': {
      'en': 'Hello World',
      'hi': '',
    },
    '9l34w4dq': {
      'en': 'Hello World',
      'hi': '',
    },
    '5pa5dt30': {
      'en': 'Hello World',
      'hi': '',
    },
    'muy76mf2': {
      'en': 'Hello World',
      'hi': '',
    },
    'sy0v7jai': {
      'en': 'Hello World',
      'hi': '',
    },
    'zl08d4j6': {
      'en': 'Hello World',
      'hi': '',
    },
    'zb07hfqo': {
      'en': 'Terms & Conditions',
      'hi': '',
    },
    '4ybo1ias': {
      'en': 'Home',
      'hi': '',
    },
  },
  // sidebar
  {
    'a6bma5ak': {
      'en': 'Dashboard',
      'hi': '',
    },
    'uga1h1av': {
      'en': 'Trending',
      'hi': '',
    },
    '400le3bs': {
      'en': 'Policies',
      'hi': '',
    },
    'kudsj4fy': {
      'en': 'Rate Us',
      'hi': '',
    },
    'q6jjw5ie': {
      'en': 'Help',
      'hi': '',
    },
    '7fhwisge': {
      'en': 'Switch to Dark Mode',
      'hi': 'डार्क मोड में जाएं',
    },
    '7uh3uzwm': {
      'en': 'Log Out',
      'hi': 'लाग आउट ',
    },
    'tr2600m2': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    'l0l178u1': {
      'en': '',
      'hi': '',
    },
    'mclxuug3': {
      'en': '',
      'hi': '',
    },
    'bf08yn1f': {
      'en': '',
      'hi': '',
    },
    '16l0nlmw': {
      'en': '',
      'hi': '',
    },
    'yastu30v': {
      'en': '',
      'hi': '',
    },
    '5agpdutf': {
      'en': '',
      'hi': '',
    },
    'pvfcah8e': {
      'en': '',
      'hi': '',
    },
    '2xzvbr8z': {
      'en': '',
      'hi': '',
    },
    'za1oqrjj': {
      'en': '',
      'hi': '',
    },
    't6z5flif': {
      'en': '',
      'hi': '',
    },
    'xkv25gpp': {
      'en': '',
      'hi': '',
    },
    'dbq07eo6': {
      'en': '',
      'hi': '',
    },
    'k04nspx2': {
      'en': '',
      'hi': '',
    },
    '465z2k6z': {
      'en': '',
      'hi': '',
    },
    'coit742u': {
      'en': '',
      'hi': '',
    },
    'edavkluf': {
      'en': '',
      'hi': '',
    },
    '6po8q64m': {
      'en': '',
      'hi': '',
    },
    'ph94smey': {
      'en': '',
      'hi': '',
    },
    't4qk7xgz': {
      'en': '',
      'hi': '',
    },
    'w80byohw': {
      'en': '',
      'hi': '',
    },
    'mj038s9p': {
      'en': '',
      'hi': '',
    },
    '3i6pt556': {
      'en': '',
      'hi': '',
    },
    '3flykaxb': {
      'en': '',
      'hi': '',
    },
    'xdgw6g5d': {
      'en': '',
      'hi': '',
    },
    '43x3l4aw': {
      'en': '',
      'hi': '',
    },
    '3iefy30b': {
      'en': '',
      'hi': '',
    },
    '80x0tdb4': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
