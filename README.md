# query_params

A flutter package to create URL query parameters.

## Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
query_params: '^0.6.1'
```

## Install packages:

with pub:

```
$ pub get
```

or with Flutter:

```
$ flutter packages get
```

## Import it:

```dart
import 'package:query_params/query_params.dart';
```

## Implement it:

```dart
URLQueryParams queryParams = new URLQueryParams();

queryParams.append('value1',"1");
queryParams.append('value2',"myString");

print(queryParams.toString()); // value1=1&value2=myString
```

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
