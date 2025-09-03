import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'Beauty App'**
  String get appTitle;

  /// Welcome message on the home screen
  ///
  /// In en, this message translates to:
  /// **'Welcome to Beauty App!'**
  String get welcome;

  /// Counter label
  ///
  /// In en, this message translates to:
  /// **'Counter'**
  String get counter;

  /// Current settings section title
  ///
  /// In en, this message translates to:
  /// **'Current Settings'**
  String get currentSettings;

  /// Theme settings
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Language settings
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Dark mode setting
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// Light mode setting
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// System default theme setting
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// English language
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Arabic language
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// testing
  ///
  /// In en, this message translates to:
  /// **'testing'**
  String get testing;

  /// Onboarding text for salon owners
  ///
  /// In en, this message translates to:
  /// **'Showcase your unique talent and make your salon the go-to destination for beauty and self-care.'**
  String get showcaseTalent;

  /// Label for salon owner role
  ///
  /// In en, this message translates to:
  /// **'Salon Owner'**
  String get salonOwner;

  /// Onboarding text for clients
  ///
  /// In en, this message translates to:
  /// **'You can book at the nearest salon or order a service at home.'**
  String get bookOrOrder;

  /// Label for clients role
  ///
  /// In en, this message translates to:
  /// **'Clients'**
  String get clients;

  /// Button text for account creation
  ///
  /// In en, this message translates to:
  /// **'Create Your Account !'**
  String get createAccount;

  /// Gender option: Female
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// Gender option: Male
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// Title for gender selection screen
  ///
  /// In en, this message translates to:
  /// **'Choose Gender'**
  String get chooseGender;

  /// Subtitle for gender selection screen
  ///
  /// In en, this message translates to:
  /// **'Select your gender to determine the places that suit you.'**
  String get selectGender;

  /// Button text to proceed after gender selection
  ///
  /// In en, this message translates to:
  /// **'Let’s Identify'**
  String get letsIdentify;

  /// Button text to proceed after gender selection
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Button text to start the app
  ///
  /// In en, this message translates to:
  /// **'Get Start'**
  String get getStart;

  /// Button text to sign up
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// Button text to sign in
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Button text to continue without signing in
  ///
  /// In en, this message translates to:
  /// **'Continue as a Guest'**
  String get continueAsGuest;

  /// Description text on home or onboarding screen
  ///
  /// In en, this message translates to:
  /// **'Find and book beauty salons, barbers, and spa services anywhere, anytime.'**
  String get findAndBook;

  /// Onboarding text inviting users to join
  ///
  /// In en, this message translates to:
  /// **'Let’s Join with Us'**
  String get letsJoinWithUs;

  /// Onboarding description for skin care services
  ///
  /// In en, this message translates to:
  /// **'Rejuvenate your glow with personalized treatments designed for radiant, healthy skin.'**
  String get personalizedTreatment;

  /// Section title for skin care and facial services
  ///
  /// In en, this message translates to:
  /// **'Skin Care & Facial'**
  String get skinCareFacial;

  /// Description for hair services
  ///
  /// In en, this message translates to:
  /// **'From bold cuts to stunning color transformations, we create styles that suit you perfectly.'**
  String get hairService;

  /// Description for nail services
  ///
  /// In en, this message translates to:
  /// **'Treat your hands and feet to a pampering experience with our manicures, pedicures, and nail art.'**
  String get nailPerfection;

  /// Welcome message on the home screen
  ///
  /// In en, this message translates to:
  /// **'Welcome to Belle Salon where luxury meets expertise! Whether you\'re seeking a fresh new look or any service, our team of skilled beauty professionals is here to make your dreams a reality.'**
  String get welcomeBelleSalon;

  /// Button text to skip onboarding or a step
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Prompt asking the user to enter their email or phone number
  ///
  /// In en, this message translates to:
  /// **'Enter Your Email / Phone Number'**
  String get enterYourEmailOrPhone;

  /// Message shown below login fields to encourage signup if the user has no account
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account ?'**
  String get dontHaveAccount;

  /// Prompt asking the user to enter their password
  ///
  /// In en, this message translates to:
  /// **'Enter Your Password'**
  String get enterYourPassword;

  /// Checkbox label for remembering the user login
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get rememberMe;

  /// Link text for forgotten password
  ///
  /// In en, this message translates to:
  /// **'Forget Password?'**
  String get forgetPassword;

  /// Prompt asking the user to enter their email only
  ///
  /// In en, this message translates to:
  /// **'Enter Your Email'**
  String get enterYourEmail;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
