import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ps5_store/models/controller.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemSelectedEvent, ItemSelectedState> {
  ItemBloc() : super(ItemSelectedState(controllers, 0));

  @override
  Stream<ItemSelectedState> mapEventToState(ItemSelectedEvent event) async* {
    List<Item> items;

    switch (event.index) {
      case 0 :
        items = controllers;
        break;
      case 1 :
        items = gameScreens;
        break;
      case 2 :
        items = mice;
        break;
    }

    yield ItemSelectedState(items, event.index);
  }
}
