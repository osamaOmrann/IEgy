import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iegy/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  bool isSearching = false;
  void onSearchFieldPressed() {
    if(isSearching == false) isSearching = true;
    emit(HomeSearchingState());
  }
}
