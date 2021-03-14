class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}


class _AppState extends State<App> {
  void initState() {
    _loadData();
  }

  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getString("todo") != null){ 
    time = jsonDecode(prefs.getString("time"));
  }}
  Map<String, dynamic> time = {};
Map<String, dynamic> who = {};
Map<String, dynamic> when = {};
Map<String, dynamic> where = {};
