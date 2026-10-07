import 'package:skydrift/app.dart';
import 'package:skydrift/bootstrap.dart';
import 'package:skydrift/flavor_config/flavor_config.dart';

void main() {
  bootstrap(flavor: AppFlavor.dev, builder: () => const App());
}
