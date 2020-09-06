import 'package:get_it/get_it.dart';
import 'package:simple_bloc/data/model/appstate.dart';

GetIt getIt = GetIt.instance;

class GetItInstance {
  GetItInstance() {
// Register your combined blocs here so you can access them anywhere in your app , without the need of inherited widget or using context
    getIt.registerSingleton<AppState>(new AppState());
  }
}
