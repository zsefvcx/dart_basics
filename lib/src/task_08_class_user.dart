
/// 8. Создайте класс User, у которого есть поле email. Реализуйте два наследника данного класса
/// AdminUser и GeneralUser. Реализуйте mixin над классом User, у которого будет метод
/// getMailSystem, который возвращает значение из email, которое находится после @. Например, если
/// email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на
/// AdminUser. Далее реализуйте класс UserManager<T extends User>, у которого будет храниться
/// список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте
/// метод, который выведет почту всех пользователей, однако если пользователь admin, будет
/// выведено значение после @. Проверьте реализованные методы на практике.

class User {
  final String _email;

  factory User({required String email}){
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)){
      throw Exception('Error E-mail. Check your email');
    }
    return User._init(email: email);
  }

  User._init({required String email}) : _email = email;

}

mixin methodGetMailSystem on User {
  String getMailSystem() => _email.split("@").last;
}


class AdminUser extends User{




}

class GeneralUser extends User{

  GeneralUser({required super.email});

}