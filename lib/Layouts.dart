import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  static final _useGridView = false;
  static final _bodyIndex = 5;

  static final titleText = Container(
    padding: EdgeInsets.all(16),
    child: Text(
      'Strawberry Pavlova',
      style: TextStyle(
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    ),
  );

  static final subTitle = Text(
    'Pavlova is a meringue-based dessert named after the Russian ballerina '
    'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
    'topped with fruit and whipped cream.',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'Georgia',
      fontSize: 15,
    ),
  );

  static final stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.star,
        color: Colors.blue[500],
      ),
      Icon(
        Icons.star,
        color: Colors.blue[500],
      ),
      Icon(
        Icons.star,
        color: Colors.blue[500],
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      ),
    ],
  );

  static final ratings = Container(
    padding: EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );

  static final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 12,
    height: 2,
  );

  static final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('PREP:'),
              Text('25 min'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.green[500]),
              Text('COOK:'),
              Text('1 hr'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              Text('FEEDS:'),
              Text('4-6'),
            ],
          ),
        ],
      ),
    ),
  );

  final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
    child: Column(
      children: [
        titleText,
        subTitle,
        ratings,
        iconList,
      ],
    ),
  );

  final mainImage = Image.asset(
    'images/pavlova.jpg',
    fit: BoxFit.fill,
  );

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  static Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }

  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(Colors.blue[500], Icons.call, "CALL"),
        _buildButtonColumn(Colors.blue[500], Icons.near_me, "NEAR ME"),
        _buildButtonColumn(Colors.blue[500], Icons.share, "SHARE"),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  Widget _buildBody() {
    switch (_bodyIndex) {
      case 0:
        return Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
            height: 600,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 380,
                    child: leftColumn,
                  ),
                  Container(
                    width: 280,
                    height: 320,
                    child: mainImage,
                  ),
                ],
              ),
            ),
          ),
        );
      case 1:
        return Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
            height: 600,
            child: Card(
              child: _buildImageColumn(),
            ),
          ),
        );
      case 2:
        return Center(
          child: _useGridView ? _buildGrid() : _buildList(),
        );
      case 3:
        return Center(
          child: _buildStack(),
        );
      case 4:
        return Center(
          child: _buildCard(),
        );
      case 5:
        return ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts example"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/pic1.jpg'),
          Image.asset('images/pic2.jpg'),
          Image.asset('images/pic3.jpg')
        ],
      );

  Widget _buildRowExpand() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/pic1.jpg'),
          ),
          Expanded(
            child: Image.asset('images/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('images/pic3.jpg'),
          ),
        ],
      );
  Widget _buildRowExpandFlex() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/pic1.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('images/pic3.jpg'),
          ),
        ],
      );

  Widget _buildRowPacking() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.blue[500],
          ),
          Icon(
            Icons.star,
            color: Colors.blue[500],
          ),
          Icon(
            Icons.star,
            color: Colors.blue[500],
          ),
          Icon(
            Icons.star,
            color: Colors.black,
          ),
          Icon(
            Icons.star,
            color: Colors.black,
          ),
        ],
      );

  Widget _buildColumn() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/pic1.jpg'),
          Image.asset('images/pic2.jpg'),
          Image.asset('images/pic3.jpg')
        ],
      );

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
          child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('images/pic$imageIndex.jpg'),
      ));

  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );

  Widget _buildImageColumn() => Container(
        decoration: BoxDecoration(
          color: Colors.black26,
        ),
        child: Column(
          children: [
            _buildImageRow(1),
            _buildImageRow(3),
          ],
        ),
      );

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30));

  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('images/pic$i.jpg')));

  Widget _buildList() => ListView(
        children: [
          _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
          _tile('The Castro Theater', '429 Castro St', Icons.theaters),
          _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
          _tile('Roxie Theater', '3117 16th St', Icons.theaters),
          _tile('United Artists Stonestown Twin', '501 Buckingham Way',
              Icons.theaters),
          _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
          Divider(),
          _tile('Kescaped_code#39;s Kitchen', '757 Monterey Blvd',
              Icons.restaurant),
          _tile('Emmyescaped_code#39;s Restaurant', '1923 Ocean Ave',
              Icons.restaurant),
          _tile(
              'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
          _tile('La Ciccia', '291 30th St', Icons.restaurant),
        ],
      );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );

  Widget _buildStack() => Stack(
        alignment: const Alignment(0.6, 0.6),
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('images/pic0.jpg'),
            radius: 100,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black45),
            child: Text(
              "About me",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );

  Widget _buildCard() => SizedBox(
        height: 210,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text('1625 Main Street',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('My City, CA 99984'),
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue[500],
                ),
              ),
              Divider(),
              ListTile(
                title: Text('(408) 555-1212',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.blue[500],
                ),
              ),
              ListTile(
                title: Text('costa@example.com'),
                leading: Icon(
                  Icons.contact_mail,
                  color: Colors.blue[500],
                ),
              ),
            ],
          ),
        ),
      );
}
