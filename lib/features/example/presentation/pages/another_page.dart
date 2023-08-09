import 'package:base_bloc_3/common/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: BaseScaffold(
        appBar: AppBar(
          title: const Text('Another Page'),
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: const Center(
          child: Text('Another Page'),
        ),
      ),
    );
  }
}
