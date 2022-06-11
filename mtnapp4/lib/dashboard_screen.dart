import 'package:flutter/material.dart';
import 'package:mtnapp4/other_screen.dart';
import 'package:mtnapp4/gallery_screen.dart';
import 'package:mtnapp4/user_profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: const MyStatefulWidget(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OtherScreen()));
        },
        label: const Text('Other'),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Hi Welcome to your Dashboard',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                )),
            Container(
                height: 200,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: ElevatedButton(
                  child: const Text('Gallery'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GalleryScreen()));
                  },
                )),
            Container(
                height: 200,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ElevatedButton(
                  child: const Text('Edit'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EditScreen()));
                  },
                )),
          ],
        ));
  }
}
