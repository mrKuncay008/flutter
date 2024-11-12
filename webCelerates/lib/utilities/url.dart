import 'package:url_launcher/url_launcher.dart';

class UrlLauncherApp {
  static Future<void> launchInWeb(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    )) {
      throw 'Could not launch $url';
    }
  }

  static Future<void> launchInWhatsapp({String? message}) async {
    var phone = "+6285295390034";
    final uri = Uri.parse('https://wa.me/$phone');
    // final uri = Uri.parse(
    //     'https://api.whatsapp.com/message/MMFA36ZYZL5MH1?autoload=1&app_absent=0');
    if (!await launchUrl(uri)) {
      throw 'Could not send message';
    }
  }

  static Future<void> launchInEmail({String? subject, String? message}) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    var email = "contact@celerates.co.id";
    // var emailCc = "talent.acquisition@celerates.co.id";
    final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: email,
        query: encodeQueryParameters(<String, String>{
          // 'cc': emailCc,
          'subject': subject ?? '...',
          'body': message ?? ''
        }));

    if (!await launchUrl(emailLaunchUri)) {
      throw 'Could not send message';
    }
  }

  static Future<void> launchInEmailDefault(
      {String? email, String? subject, String? message}) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: email,
        query: encodeQueryParameters(<String, String>{
          // 'cc': emailCc,
          'subject': subject ?? '...',
          'body': message ?? ''
        }));

    if (!await launchUrl(emailLaunchUri)) {
      throw 'Could not send message';
    }
  }
}
