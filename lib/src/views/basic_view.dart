import 'package:flutter/material.dart';

class BasicView extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 20.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _createImage(),
          _createTitle(),
          _createActions(),
          _creatrText(),
          _creatrText(),
        ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            height: 200.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Canada Lake campgroud',
                    style: styleTitle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Canada , Canada',
                    style: styleSubTitle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _createAction(Icons.call, "Call"),
          _createAction(Icons.near_me, "Route"),
          _createAction(Icons.share, "Share")
        ],
      ),
    );
  }

  Widget _createAction(IconData icon, String actionDescription) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 30.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          actionDescription,
          style: TextStyle(fontSize: 14.0, color: Colors.blue),
        )
      ],
    );
  }

  _creatrText() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Diam maecenas sed enim ut sem viverra aliquet eget. Habitant morbi tristique senectus et netus et. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Pretium quam vulputate dignissim suspendisse in est ante. Etiam dignissim diam quis enim lobortis scelerisque fermentum. Sed vulputate mi sit amet mauris commodo quis imperdiet. At ultrices mi tempus imperdiet. Amet nisl purus in mollis nunc sed id semper. Dui id ornare arcu odio ut sem nulla. Dictum sit amet justo donec enim diam vulputate ut. Porttitor lacus luctus accumsan tortor posuere ac ut. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Ut pharetra sit amet aliquam id diam. Vitae auctor eu augue ut.
          Risus pretium quam vulputate dignissim suspendisse in. Erat imperdiet sed euismod nisi porta. Integer malesuada nunc vel risus commodo viverra maecenas accumsan. Sed pulvinar proin gravida hendrerit lectus a. Eu lobortis elementum nibh tellus molestie nunc non. Eu volutpat odio facilisis mauris sit amet massa. Enim nec dui nunc mattis enim ut tellus elementum. Curabitur vitae nunc sed velit dignissim. Tristique senectus et netus et malesuada fames ac turpis egestas. Elementum curabitur vitae nunc sed velit dignissim sodales. Vitae elementum curabitur vitae nunc sed velit dignissim sodales ut. Ipsum dolor sit amet consectetur.''',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
