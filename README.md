
# Base Project Flutter with Bloc Pattern




## Packages 

- [Bloc Pattern: flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [Navigation: auto_route](https://pub.dev/packages/auto_route)
- [DI: get_it](https://pub.dev/packages/get_it)
- [Network: dio](https://pub.dev/packages/dio)
- [Localization: easy_localization](https://pub.dev/packages/easy_localization)
- [Flavors: production, dev, staging](https://docs.flutter.dev/deployment/flavors)
- [Model generator: Freezed](https://pub.dev/packages/freezed)
- [Dio client generator: retrofit](https://pub.dev/packages/retrofit)
-  ...



## Installation

Generate code command: 

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```
    
## Project structure
```
 
│
└───base // contains base (bloc, state, ...) & network config
│    
└───common // contains app theme, config, extensions, common widgets ...
│   
└───di 
│   
└───features 
│   
└───routes // navigation
│   
└───main.dart
```

Feature structure
---
Use CLEAN architecture

![App Screenshot](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?ssl=1)
```
│
└───data
│   └─── model 
│   └─── remote
│            └─── service 
│            └─── source
│   └─── repository (impl)
└───domain
│   └─── repository (abstract)
│   └─── use_case
└───presentation
│   └─── bloc
│   └─── pages
│   └─── widgets
```




## Must use BaseScaffold and BaseAppBar!!!
eg:
```dart
class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(),
      body: Column(),
    );
  }
}

```

## How to use pagination
- in bloc
**Init the paging controller**, add **BaseCommonMethodMixin** mixin to bloc.

```dart
class xxxBloc extends BaseBloc<E, S> with BaseCommonMethodMixin{
    ...
    final PagingController<int, Player> pagingController =
      PagingController(firstPageKey: 0);
    ...


    //on fetch data
    Future onGetData(
      Emitter<ExampleState> emit, List<Player> players, int offset) async {

    final res = await _coreUseCase.getData(offset: offset, limit: 25);

    pagingControllerOnLoad(offset, pagingController, res);
    
  }
}
```

- in view
**addPageRequestListener in initState** then use CustomListViewSeparated or another which match the case. See in paging_list_view.dart
```dart
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
    bloc.pagingController.addPageRequestListener(
      (pageKey) => bloc.add(
        ExampleEvent.getPlayers(
          players: bloc.state.players,
          offset: pageKey,
        ),
      ),
    );
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomListViewSeparated<Player>(
              separatorBuilder: (c, i) => const Divider(),
              controller: bloc.pagingController,
              builder: (c, item, i) => PlayerItem(
                data: item,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```
## Dialog & bottomsheet
- at common/utils/
## Common widgets (button, textfield)
- at common/widgets/



