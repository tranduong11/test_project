part of "splash_bloc.dart";

abstract class SplashEvent extends Equatable {
  const SplashEvent();
  @override
  List<Object?> get props => [];
}

class SplashEventIsCheck extends SplashEvent {
  SplashEventIsCheck();
  @override
  List<Object?> get props => [];
}

class SplashEventNavigate extends SplashEvent {
  final BuildContext context;
  SplashEventNavigate(this.context);
}
