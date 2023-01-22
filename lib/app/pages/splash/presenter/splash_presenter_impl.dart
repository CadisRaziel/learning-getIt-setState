import 'package:dwfifa/app/pages/splash/presenter/splash_presenter.dart';
import 'package:dwfifa/app/pages/splash/view/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPresenterImpl implements SplashPresenter {
  late final SplashView _view;

  @override
  Future<void> checkLogin() async {
    _view.showLoader();
    final sharedPre = await SharedPreferences.getInstance();
    final accessToken = sharedPre.getString('accessToken');

    if (accessToken != null) {
      _view.logger(true);
    } else {
      _view.logger(false);
    }

    _view.logger(false);
  }

  @override
  set view(view) => _view = view;
}
