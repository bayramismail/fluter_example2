import 'package:vexana/vexana.dart';

class VexanaNetworkManager<T extends INetworkModel<T>>
    extends NetworkManager<T> {
  VexanaNetworkManager()
      : super(options: BaseOptions(baseUrl: 'https://reqres.in/'));
}
