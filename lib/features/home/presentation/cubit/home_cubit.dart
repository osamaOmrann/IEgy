import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iegy/core/utils/app_assets.dart';
import 'package:iegy/features/home/presentation/components/home_category.dart';
import 'package:iegy/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  FocusNode focusNode = FocusNode();
  List<Widget> homeCategories = [
    HomeCategory(first: true, icon: AppAssets.shuffle),
    HomeCategory(icon: AppAssets.chair),
    HomeCategory(icon: AppAssets.table),
    HomeCategory(icon: AppAssets.sofa),
    HomeCategory(icon: AppAssets.sofra),
    HomeCategory(icon: AppAssets.door),
    HomeCategory(icon: AppAssets.bed),
    HomeCategory(icon: AppAssets.kitchen),
    HomeCategory(icon: AppAssets.tv)
  ];
}
