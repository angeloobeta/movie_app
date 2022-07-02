import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/presentation/movie_app.dart';
import 'package:pedantic/pedantic.dart';

void main() {
  // Based on the official flutter documentation
//  The glue that binds the flutter framework and the flutter engine
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  // Initialize GetIt to provide us with dependencies
  unawaited(getIt.init());
  runApp(movieApp());
}
