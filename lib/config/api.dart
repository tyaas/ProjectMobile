class Api {
  static const _host = "http://192.168.137.218:74/tugasakhir";

  static String _user = "$_host/user";
  static String login = "$_host/login.php";
  // user
  static String addUser = "$_user/add_user.php";
  static String deleteUser = "$_user/delete_user.php";
  static String getUsers = "$_user/get_users.php";
  static String updateUser = "$_user/update_user.php";
}
