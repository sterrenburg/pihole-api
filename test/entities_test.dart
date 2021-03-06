import 'package:pihole_api/pihole_api.dart';
import 'package:test/test.dart';

void main() async {
  late PiholeApiParams params;

  setUp(() {
    params = PiholeApiParams(
      baseUrl: "http://pi.hole",
      apiPath: "/admin/api.php",
      apiTokenRequired: true,
      apiToken: "token",
      allowSelfSignedCertificates: false,
      adminHome: "/admin",
    );
  });

  group('apiUrl', () {
    test('default apiUrl should be valid', () {
      expect(params.apiUrl, "http://pi.hole/admin/api.php");
    });
  });

  group('adminUrl', () {
    test('default adminUrl should be valid', () {
      expect(params.adminUrl, "http://pi.hole/admin");
    });
  });
}
