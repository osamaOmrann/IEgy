import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iegy/features/cart/presentation/screens/cart_screen.dart';
import 'package:iegy/features/categories/presentation/screens/categories_screen.dart';
import 'package:iegy/features/home/presentation/screens/home_screen.dart';
import 'package:iegy/features/nav_bar/presentation/nav_bar_cubit/nav_bar_state.dart';
import 'package:iegy/features/profile/presentation/screens/profile_screen.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());
  // List<Widget> Screens = [const HomeScreen(), const CategoriesScreen(), const CartScreen(), const ProfileScreen()];
  final controller = PageController(viewportFraction: 1, keepPage: true);
  final pages = List.generate(
      4,
      (index) => index == 0
          ? const HomeScreen()
          : index == 1
              ? const CategoriesScreen()
              : index == 2
                  ? const CartScreen()
                  : const ProfileScreen());
  int currentIndex = 0;
  void changeIndex(index) {
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
