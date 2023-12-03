import 'package:vexana/vexana.dart';

import '../../auth/model/token_model.dart';
import '../model/login_model.dart';

abstract class ILoginService {
  final INetworkManager networkManager;

  ILoginService(this.networkManager);
  Future<IResponseModel<TokenModel, LoginModel?>?> login(LoginModel model);

  final String _loginPath = 'api/login';
}

class LoginService extends ILoginService {
  LoginService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<IResponseModel<TokenModel, LoginModel?>?> login(
      LoginModel model) async {
    try {
      final response = await networkManager.send<TokenModel, TokenModel>(
        _loginPath,
        data: model,
        parseModel: TokenModel(),
        method: RequestType.POST,
      );
      print(response.data?.token);
      return null;
    } catch (error) {
      // Handle errors appropriately
      print('Error in login: $error');
      return null; // or throw an exception
    }
  }
}
