import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toturials/List/Shopping.dart';
import 'package:flutter_toturials/Layouts.dart';
import 'package:flutter_toturials/ManagingState.dart';
import 'package:flutter_toturials/Navigation/NavigatorArgument.dart';
import 'package:flutter_toturials/Navigation/NavigatorName.dart';
import 'package:flutter_toturials/Navigation/NavigatorData.dart';
import 'package:flutter_toturials/Navigation/NavigatorSendData.dart';
import 'package:flutter_toturials/Network/FetchData.dart';
import 'package:flutter_toturials/Network/FetchPhoto.dart';
import 'package:flutter_toturials/Network/WebSocketServer.dart';

//import 'Persistence/RWFile.dart';
import 'Persistence/SharedPrefs.dart';
import 'Plugins/VideoPlayer.dart';
import 'Plugins/CameraApp.dart';

//void main() => runApp(MyApp());
//void main() => runApp(ShoppingApp());
//void main() => runApp(LayoutsApp());
//void main() => runApp(ManagingStategApp());
//void main() => runApp(NaviArgApp());
//void main() => runApp(NaviArgApp());
//void main() => runApp(NaviNameApp());
//void main() => runApp(NaviDataApp());
//void main() => runApp(NaviSendDataApp());
//void main() => runApp(FetchDataApp(post: fetchPost(),));
//void main() => runApp(FetchPhotoApp());
//void main() => runApp(WebSocketServerApp());
//void main() => runApp(RWFileApp());
//void main() => runApp(SharedPrefsApp());
//void main() => runApp(VideoPlayerApp());
Future<void> main() async {
  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  
  runApp(CameraApp(firstCamera: firstCamera));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Here!'),
      ),
    );
  }
  
}


