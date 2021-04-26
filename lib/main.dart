import 'package:flutter/material.dart';
import 'package:flutter_crud/views/user_form.dart';
import 'package:flutter_crud/views/user_list,.dart';
import 'package:provider/provider.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => UsersProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: UserList(),
          routes: {appRoutes.USER_FORM: (_) => UserForm()}),
    );
  }
}
