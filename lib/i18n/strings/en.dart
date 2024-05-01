// ignore_for_file: annotate_overrides

import '../translations/translations.dart';

class En implements Translations {
  // Language code from this Translation
  String get languageCode => 'en';

  // General translations
  String get loading => 'Loading...';
  String get okButton => 'OK';
  String get nextButton => 'Next';
  String get cancelButton => 'Cancel';
  String get saveButton => 'Save';
  String get searchHint => 'Search...';
  String get defaultErrorTitle => 'We had a problem';
  String get retryLogin => 'Retry Login';
  String get dataEmpty => 'No data to display';
  String get noContent => 'Content not yet available';
  String get readMore => 'Read more';
  String get hello => 'Hello';
  String get welcome => 'Welcome';
  String get welcomeBack => 'Welcome back';
  String get login => 'Login';
  String get logout => 'Logout';
  String get forgotPassword => 'Forgot password?';
  String get loginWithMicrosoft => 'Login with Microsoft';
  String get needHelp => 'Need help?';
  String get or => 'or';
  String get insertYourInformationOfLogin => 'Insert your login information';
  String get insertYourUser => 'Insert your user';
  String get user => 'User';
  String get email => 'E-mail';
  String get password => 'Password';
  String get theBestSystemOf => 'The best system of';
  String get businessManagement => 'business management';
  String get insertYourPassword => 'Insert your password';
  String get complaint => 'Complaint';
  String get complaints => 'Complaints';
  String get searchComplaints => 'Search complaints';
  String get complaintRegistration => 'Complaint registration';
  String get registeredBy => 'Registered by';
  String get lastEdition => 'Last edition';
  String get description => 'Description';
  String get branch => 'Branch';
  String get sector => 'Sector';
  String get number => 'Number';
  String get status => 'Status';
  String get enterDescription => 'Enter description';
  String get responsible => 'Responsible';
  String get search => 'Search';
  String get newComplaint => 'New complaint';
  String get print => 'Print';
  String get export => 'Export';
  String get report => 'Report';
  String get reports => 'Reports';
  String get stepByStep => 'Step by step';

  @override
  Map<int?, List<String>> get httpErrors => {
        404: ['Not Found', 'No data found'],
        401: ['Unauthorized', 'Your session may have expired, log in again'],
        400: ['Bad Request', 'Your session may have expired, log in again'],
        500: ['Server Error', 'Internal server problems, try again later'],
      };
}
