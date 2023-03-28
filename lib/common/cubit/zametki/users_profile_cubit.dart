import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/user.dart';
import '../../../data/repository/profile_repo_impl.dart';

part 'users_profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileStateInitial());

  User? user;
  Future<void> fetchUserProfile() async{
     try {
      user =
          (await UserProfileRepositoryImpl().getUserProfile())!;
      emit(ProfileFetchedState(user!));
    } catch (error) {

      emit(ProfileErrorState());
    }
  }
}
