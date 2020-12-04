import 'package:flutter/material.dart';

class HomePge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        post1,
      ],
    );
  }
}

// color favorite

// isFavorite() {
//   RxBool _isFavorite = false.obs;

//   if (_isFavorite == null) {
//     return IconButton(
//       onPressed: _isFavorite,
//       icon: Icon(
//         Icons.favorite,
//         color: Colors.pink,
//       ),
//     );
//   } else {
//     return IconButton(
//       onPressed: null,
//       icon: Icon(
//         Icons.favorite_border,
//         color: Colors.pink,
//       ),
//     );
//   }
// }

Widget post1 = Container(
  margin: EdgeInsets.only(top: 10, left: 15, right: 15),
  padding: EdgeInsets.only(top: 10),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.grey,
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black,
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(3, 3),
      )
    ],
  ),
  child: Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2020/11/14/07/38/goat-5740949__480.jpg',
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Elon Musk',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Floride'),
            ],
          )
        ],
      ),
      Image.network(
          'https://t3.ftcdn.net/jpg/03/88/71/30/240_F_388713063_z7fRCq0xvWjBCppZJE25NNWyK0eBAw9z.jpg'),
      FavoriteWidget(),
    ],
  ),
);

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: (_isFavorited
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
      ],
    );
  }
}
