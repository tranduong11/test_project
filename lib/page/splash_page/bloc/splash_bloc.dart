import 'package:bloc_project/routers/app_router_path.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(super.initialState) {
    on<SplashEventIsCheck>(_setCheck);
    on<SplashEventNavigate>(_navigate);
  }

  Future<void> _setCheck(SplashEventIsCheck event, Emitter<SplashState> emit) async {
    emit(state.copyWith(
      isCheck: !state.isCheck!,
    ));
  }

  Future<void> _navigate(SplashEventNavigate event, Emitter<SplashState> emit) async {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(event.context, AppRoutePath.loginScreen);
    });
  }
}
