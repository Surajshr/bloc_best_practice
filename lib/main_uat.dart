import 'package:varosha_app/bootstrap.dart';
import 'package:varosha_app/core/constants/environment_constant.dart';
import 'package:varosha_app/start_up.dart';

void main() async {
  // Set environment to UAT
  Environment.env = Env.uat;
  await initializeApp();
  // Bootstrap the app
  await bootstrap(
    () => const StartUp(),
  );
}
