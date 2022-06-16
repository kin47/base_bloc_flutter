import 'package:flutter/material.dart';

import '../../../../di/di_setup.dart';
import '../bloc/core_bloc.dart';

class CorePage extends StatefulWidget {
  const CorePage({Key? key}) : super(key: key);

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  late final CoreBloc _articleListBloc;

  @override
  void initState() {
    super.initState();
    _articleListBloc = getIt<CoreBloc>();
    _articleListBloc.add(const CoreEvent.getData());
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
