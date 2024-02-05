import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iegy/features/cart/presentation/screens/cart_screen.dart';
import 'package:iegy/features/categories/presentation/screens/categories_screen.dart';
import 'package:iegy/features/home/presentation/screens/home_screen.dart';
import 'package:iegy/features/nav_bar/presentation/cubit/nav_bar_state.dart';
import 'package:iegy/features/profile/presentation/screens/profile_screen.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());
  int currentIndex = 0;
  final controller = PageController(viewportFraction: 1, keepPage: true);
  final pages = List.generate(
      4,
      (index) => index == 0
          ? HomeScreen()
          : index == 1
              ? const CategoriesScreen()
              : index == 2
                  ? const CartScreen()
                  : const ProfileScreen());
  void changeIndex(index) {
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
