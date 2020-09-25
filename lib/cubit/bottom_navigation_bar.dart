import 'package:flutter_bloc/flutter_bloc.dart';

class BottonNavigationCubit extends Cubit<int>{

  ///Here the constructor
  /// And the first value will be pass the thought the constructor
  ///  At the call
  BottonNavigationCubit(int state) : super(state);

  ///This method is to push the to another screen the user
  void pushToAnotherUIScreen(int screenIndex){
    emit(screenIndex); //Here the screen index
  }
}