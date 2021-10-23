import 'package:e_commerce/data.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fdac5-2.fna.fbcdn.net/v/t1.0-9/141199633_705439713449767_3213540676443333643_o.jpg?_nc_cat=107&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeGUT8MrwO1mGrXOBNjLj-7yq98XS3oNI1Kr3xdLeg0jUnuEOi_KkHxSYciIJYafKx6jip2AIpG5QzOSNrw6yC2c&_nc_ohc=tVbHnA25Mz8AX_GRAbS&_nc_ht=scontent.fdac5-2.fna&oh=31aaf704e5bbc461cce0158ba8d443ab&oe=606229E1'),
                  )),
                  Container(
                    child: Icon(Icons.card_giftcard),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Fashion Shop',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('Get populor fashion from home'),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10),
              //   child: Container(
              //     height: 30,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       color: Colors.yellow,
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 50),
              //       child: Row(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.only(right: 8),
              //             child: Icon(Icons.search),
              //           ),
              //           Text('Search the dress you need')
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Color(0xffc5c7cc),
                    ),
                    prefixIcon: Icon(EvaIcons.searchOutline),
                    hintText: "Search the clothes you need",
                    fillColor: Colors.white,
                    filled: true),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                    Container(
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                height: 100,
                child: ListView.builder(
                  itemCount: datacat.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 110,
                      width: 110,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image(
                                image: AssetImage(datacat[index].img),
                              ),
                            ),
                            Container(
                              child: Text(datacat[index].title),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text(
                      "Popular Fashiuon",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                    Container(
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),

              

              
            ]),
          ),
        ),
      ),
    );
  }

  catagoris() {
    return Expanded(
      child: Container(
        height: 110,
        width: 110,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                child: Image(
                  image: AssetImage('assets/images/jacket.jpg'),
                ),
              ),
              Container(
                child: Text('jocket'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
