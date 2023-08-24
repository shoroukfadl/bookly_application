import 'package:url_launcher/url_launcher.dart';

Future<void> customlaunchurl(String url) async {
  final Uri xurl = Uri.parse(url);
  if (await canLaunchUrl(xurl)) {
  await  launchUrl(xurl);
  }
  }