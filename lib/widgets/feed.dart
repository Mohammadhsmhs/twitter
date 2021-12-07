import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Feed extends StatelessWidget {
  const Feed({
    Key? key,
    required this.title,
    required this.feedText,
    required this.profilePic,
    required this.hasPic,
    this.pic,
  }) : super(key: key);

  final String title;
  final String feedText;
  final String profilePic;
  final bool hasPic;
  final String? pic;

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
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

    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(feedText),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profilePic),
            ),
          ),
          if (hasPic)
            Container(
              margin: EdgeInsets.only(
                  left: devSize.width * .18, right: devSize.width * .03),
              width: devSize.width,
              height: devSize.height * .3,
              child: Image(image: NetworkImage((pic!))),
            ),
          Container(
            margin: EdgeInsets.only(
                left: devSize.width * .18, right: devSize.width * .03),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    toast('messages');
                  },
                  icon: const Icon(Icons.message),
                ),
                const Text('12'),
                IconButton(
                  onPressed: () {
                    toast('im not sure what this is');
                  },
                  icon: const Icon(Icons.refresh),
                ),
                const Text('12'),
                IconButton(
                  onPressed: () {
                    toast('this was suppose to be heart shaped');
                  },
                  icon: const Icon(Icons.local_mall_sharp),
                ),
                const Text('12'),
                IconButton(
                  onPressed: () {
                    toast('share');
                  },
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
