import 'package:base_bloc_3/base/base_widget.dart';
import 'package:base_bloc_3/base/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

import '../bloc/example_bloc.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState
    extends BaseState<ExamplePage, ExampleEvent, ExampleState, ExampleBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const ExampleEvent.getData());
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            bloc.add(const ExampleEvent.showMessage());
          },
        ),
      ),
    );
  }
}
