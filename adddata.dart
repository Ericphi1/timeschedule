class Addinput extends StatefulWidget {
  @override
  _AddinputState createState() => _AddinputState();
}

class _AddinputState extends State<Addinput> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colormode ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Column(
          children: <Widget>[
            Upper(size: size),
            Middle(size: size),
            SizedBox(
              height: 70,
            ),
            TextButton(
                child: Icon(
                  Icons.check_circle_outline_rounded,
                  color: Colors.green,
                  size: 120,
                ),
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  if (myControllertime.text.length > 0)
                    setState(() {
                      time.putIfAbsent(myControllertime.text, () => false);
                      prefs.setString("time", jsonEncode(time));
                      who.putIfAbsent(myControllerwho.text, () => false);
                      when.putIfAbsent(myControllerwhen.text, () => false);
                      where.putIfAbsent(myControllerwhere.text, () => false);
                      myControllertime.clear();
                      myControllerwho.clear();
                      myControllerwhen.clear();
                      myControllerwhere.clear();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => App()));
                    });
                })
          ],
        ));
  }
}
