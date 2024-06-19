part of 'menu_bloc.dart';


@immutable
sealed class MenuState {
  final List<Menu>menuItem;

  const MenuState({
    required this.menuItem});

}

final class MenuInitial extends MenuState {
  MenuInitial(): super( menuItem:menu);
}
