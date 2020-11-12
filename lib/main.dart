import 'package:flutter/material.dart';
import 'package:ui_app_test/travelcard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

class TravelApp extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    "./assets/images/caraiva_igreja.jpg",
    "./assets/images/passeio_em_trancoso.jpg",
    "./assets/images/igreja_de_nossa_senhora_dajuda.jpg",
    "./assets/images/praia_do_espelho.jpg",
    "./assets/images/mergulho.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 24.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bem-vindo à Porto Seguro',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Aton Guia - Tudo sobre Porto',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    hintText: "Busca ainda não disponível",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Color(0xFFFE8C68),
                    unselectedLabelColor: Color(0xFF555555),
                    labelColor: Color(0xFFFE8C68),
                    labelPadding: EdgeInsets.symmetric(horizontal: 8.8),
                    tabs: [
                      Tab(text: "Descubra"),
                      Tab(text: "Caminhe"),
                      Tab(text: "Viva"),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 300.0,
                    child: TabBarView(
                      children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(urls[0], "Caraíva", "", 5),
                              travelCard(urls[1], "Trancoso", "", 5),
                              travelCard(urls[2], "Arraial", "", 5),
                            
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(urls[0], "Caraíva", "", 5),
                              travelCard(urls[1], "Trancoso", "", 5),
                              travelCard(urls[2], "Arraial", "", 5),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(urls[0], "Caraíva", "", 5),
                              travelCard(urls[1], "Trancoso", "", 5),
                              travelCard(urls[2], "Arraial", "", 5),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
