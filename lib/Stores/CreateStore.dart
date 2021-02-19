import 'package:mobx/mobx.dart';
part 'CreateStore.g.dart';

class CreateStore = _CreateStore with _$CreateStore;

abstract class _CreateStore with Store {
  ObservableList images = ObservableList();
}
