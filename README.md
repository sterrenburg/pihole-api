# Pi-hole API

[![Pub](https://img.shields.io/pub/v/pihole_api.svg)](https://pub.dartlang.org/packages/pihole_api)
[![Build](https://github.com/sterrenburg/pihole-api/actions/workflows/build.yaml/badge.svg)](https://github.com/sterrenburg/pihole-api/actions/workflows/build.yaml)
[![codecov](https://codecov.io/gh/sterrenburg/pihole-api/branch/main/graph/badge.svg?token=1JBFG473VJ)](https://codecov.io/gh/sterrenburg/pihole-api) 
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

A Flutter library for the [Pi-hole](https://pi-hole.net/) API.

## Example

The following example prints the summary information after fetching it.

**Note**: Do not forget to add your own API token if you use authenticated requests.

```dart
import 'package:pihole_api/pihole_api.dart';

final pihole = PiholeRepositoryDio(PiholeRepositoryParams(
  baseUrl: "http://pi.hole",
  apiPath: "/admin/api.php",
  apiTokenRequired: true,
  // Find the API token from your Pi-hole admin dashboard while signed in, 
  // e.g. from http://pi.hole/admin/scripts/pi-hole/php/api_token.php.
  apiToken: const String.fromEnvironment(
    "PIHOLE_API_TOKEN",
    defaultValue: "MY_TOKEN",
  ),  
  allowSelfSignedCertificates: false,
  adminHome: "/admin",
));
pihole.fetchSummary(CancelToken()).then((summary) => print(summary.toString()));
```

## Development

The models are built by [freezed](https://pub.dev/packages/freezed). To build the models, use `build_runner`:

```sh
flutter pub run build_runner build
# or
flutter pub run build_runner build --delete-conflicting-outputs
```

### Changelog

```sh
standard-version --release-as x.y.z
```
