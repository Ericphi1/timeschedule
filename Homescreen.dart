body: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(children: [
                      Upperscreen(size: size),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: where.length,
                          itemBuilder: (BuildContext context, int index) {
                            time.keys.elementAt(index);
                            return Column(children: [
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                  child: GestureDetector(
                                      onDoubleTap: () => deleteDate(index),
                                      child: FadeAnimation(
                                          2,
                                          Container(
                                              width: size.width * 0.9,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(70)),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.orange,
                                                    Colors.purple,
                                                  ],
                                                ),
                                              ),
                                              child: Column(children: <Widget>[
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(20),
                                                  child: Column(
                                                    children: <Widget>[
                                                      FadeAnimation(
                                                        2.1,
                                                        Text(
                                                          time.keys
                                                              .elementAt(index),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 40,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      FadeAnimation(
                                                        2.2,
                                                        Text(
                                                          who.keys
                                                              .elementAt(index),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      FadeAnimation(
                                                        2.3,
                                                        Text(
                                                          when.keys
                                                              .elementAt(index),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      FadeAnimation(
                                                        2.4,
                                                        Text(
                                                          where.keys
                                                              .elementAt(index),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
