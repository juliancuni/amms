import 'package:amms/views/screens/home.screen.dart';
import 'package:get/get.dart';

class HomePage extends GetPage {
  HomePage({required GetView view})
      : super(
          name: "/",
          page: () => view,
        );
}
