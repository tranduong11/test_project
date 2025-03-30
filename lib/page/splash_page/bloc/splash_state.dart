part of 'splash_bloc.dart';

class SplashState extends Equatable {
  final bool? isCheck;
  final bool navigateToLogin;

  SplashState({this.isCheck, this.navigateToLogin = false});

  SplashState copyWith({bool? isCheck, bool? navigateToLogin}) {
    return SplashState(
      isCheck: isCheck ?? this.isCheck,
      navigateToLogin: navigateToLogin ?? this.navigateToLogin,
    );
  }

  @override
  List<Object?> get props => [isCheck, navigateToLogin];
}
