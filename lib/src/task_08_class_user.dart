
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

  String get email => _email;

  User({required String email})
      : assert(RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(email)),
        _email = email;
}

mixin methodGetMailSystem on User {
  String getMailSystem() => _email.split("@").last;
}

class AdminUser extends User with methodGetMailSystem {
  AdminUser({required super.email});

  @override
  String get email => getMailSystem();
}

class GeneralUser extends User with methodGetMailSystem {
  GeneralUser({required super.email});
}

class UserManager<T extends User>{
  final Set<T> _users = {};

  void add(T user) {
    if(!_users.contains(user)) {
      _users.add(user);
    } else {
      throw Exception('User already exists');
    }
  }

  List<String> get usersEmail {
    List<String> result = [];
    for (var element in _users) {
      result.add(element.email);
    }
    return result;
  }
}