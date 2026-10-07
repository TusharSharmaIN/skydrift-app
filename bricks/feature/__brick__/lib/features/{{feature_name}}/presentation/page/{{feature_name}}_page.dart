import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:skydrift/features/{{feature_name}}/application/{{feature_name}}_bloc.dart';

class {{feature_name.pascalCase()}}Page extends StatefulWidget {
  const {{feature_name.pascalCase()}}Page({super.key});

  @override
  State<{{feature_name.pascalCase()}}Page> createState() => _{{feature_name.pascalCase()}}PageState();
}

class _{{feature_name.pascalCase()}}PageState extends State<{{feature_name.pascalCase()}}Page> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
      builder: (context, state) {
        return const Scaffold(
          body: SafeArea(
            child: SizedBox.expand(),
          ),
        );
      },
    );
  }
}
