import 'package:dwfifa/app/core/mvp/fwc_presenter.dart';
import 'package:dwfifa/app/pages/auth/login/view/login_view.dart';

abstract class LoginPresenter extends FwcPresenter<LoginView> {
  Future<void> login(String email, String password);
}
