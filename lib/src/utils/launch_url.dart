import 'package:url_launcher/url_launcher.dart';

Future<void> uXlaunchUrl(dynamic url, {LaunchMode? mode}) async {
  late Uri uri;

  if (url is String) {
    uri = Uri.parse(url);
  } else if (url is Uri) {
    uri = url;
  } else {
    throw 'url must be String or Uri';
  }

  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: mode ?? LaunchMode.externalApplication,
    );
  }
}
