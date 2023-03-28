part of 'users_profile_cubit.dart';

@immutable
abstract class ProfileState {}

class ProfileStateInitial extends ProfileState {}

class ProfileFetchedState extends ProfileState {
  final User user;

  ProfileFetchedState(this.user);
}

class ProfileErrorState extends ProfileState {}
