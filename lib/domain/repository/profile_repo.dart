import '../../data/model/user.dart';

abstract class ProfileRepository{
  Future<User?> getUserProfile();
}