import 'package:url_launcher/url_launcher.dart';

class Direct {
  static launchURL(String urlPass) async {
    final Uri url = Uri.parse(urlPass);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
