
import '../model/user.dart';

abstract class AlbumRepository{
  Future<User> getUser();
}