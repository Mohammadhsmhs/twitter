import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:twitter/data/dummy_data.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future toast(String text) {
      return Fluttertoast.showToast(
          msg: text,
          // toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.airplanemode_active_outlined),
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              toast('search is not implemented yet');
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              toast('notifications is not implemented yet');
            },
            icon: const Icon(Icons.notification_add_sharp),
          ),
          IconButton(
            onPressed: () {
              toast('mail is not implemented yet');
            },
            icon: const Icon(Icons.mail_outline),
          ),
          const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg')),
          SizedBox(
            width: MediaQuery.of(context).size.width * .015,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit),
        onPressed: () {
          toast('there should be a bird icon on me :(');
        },
      ),
      body: ListView.builder(
        itemCount: feedData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: feedData[index],
          );
        },
      ),
    );
  }
}
