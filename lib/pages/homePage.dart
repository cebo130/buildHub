import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> rooms = [
    4.0,3.5,4.5,4.0,3.5,6.0,3.0,3.0,4.0,5.5,6.5,5.5,1.5,4.5,3.5,5.0,3.0,2.5,3.5,1.5,2.5,2.5,3.5,1.5,3.5,
  ];
  List<int> num = [
    45,43,63,54,26,71,36,
  ];
  List<String> roles = [
    "Contractors","Electricians","Plumbers","Painters","Carpenters","Garden boy","Garden girl"
  ];
  List<String> names = [
    "Vusumuzi Xulu","Sabelo Sbiya","Sandile Sthole","Nhlanhla Nxele","Lucky Mbhele","Vusi Xaba","Ayanda Mbatha","Zama Zulu","Syanda Ntuli","Gift Jali","shakes Ndlela","Bheki Shozi",
    "Scelo Mdletshe", "Thoba Mncube","Mnqobi Mvubu","Zibuse Msweli","Lifa Ngidi","Mfana Hlubi","Smanga Zondi","Mhlengi Langa","Smiso Gamede", "Nkosi Biyela","Mandla Cele","Fezile Ngwenya","Brian Mchunu"
  ];
  //double result = double.parse(input.replaceAll(" ", ""));
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    int n = 4;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.blueGrey[900]!,
        title: Row(
          children: [
            Text('build'),
            SizedBox(width: 2,),
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Colors.orange,
              ),
                child: Text('hub'),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              // CircleAvatar(
              //   backgroundImage: AssetImage("assets/ryza.png",),
              // ),
              Icon( Icons.search,color:Colors.white,size: 26,),
              SizedBox(width: 10,),
              Container(
                width:50,
                height:50,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(190)),
                  //color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage("assets/ryza.png",),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: 10,)
            ],
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 7,),
          Row(
            children: [
              Spacer(),
              Container(
                width: 100,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black12)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 6,),
                    Text(
                      "Durban",
                      style: TextStyle(color: Colors.green,fontSize: 18),
                    ),
                    Icon( Icons.arrow_drop_down_outlined,color:Colors.blueGrey[900]!,size: 30,),
                  ],
                ),
              ),
              SizedBox(width: 6,),
              Container(
                width: 100,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black12)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 8,),
                    Text(
                      "20 km",
                      style: TextStyle(color: Colors.green,fontSize: 18),
                    ),
                    Icon( Icons.arrow_drop_down_outlined,color:Colors.blueGrey[900]!,size: 30,),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 7,),
          //Divider(indent: 100,endIndent: 100,),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      width:220,
                      height:100,
                      margin: EdgeInsets.all(3),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width:100,
                            height:100,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              //color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("assets/roleImages/${index}.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            padding:EdgeInsets.all(4),
                            // child: Image(
                            //   image: AssetImage("assets/images/1.jpg"),
                            // ),
                          ),
                          Expanded(
                            child: Container(
                              width: 100,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(0),topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(0)),
                                gradient: LinearGradient(
                              colors: [Colors.white60,Colors.blueGrey,Colors.blueGrey[900]!,],
                                  end: Alignment.bottomLeft,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  Text(
                                    "${num[index]}+",
                                    style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon( Icons.location_on,color:Colors.red),
                                      Text(
                                        "Nearby",
                                        style: TextStyle(color: Colors.green,fontSize: 15,),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "${roles[index]}",
                                    style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(indent: 20,endIndent: 20,),
                  ],
                );
              },
            ),
          ),
          Divider(indent: 20,endIndent: 20,),
          Expanded(
            child: Container(
              //height: 500,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 25,
                itemBuilder: (context, index) {
                  return buildQuotation(n,index,rooms[index],);
                },
              ),
            ),
          ),
          Container(height: 8,color: Colors.white,),
          Container(
            width: 100,
            height: 5,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blueGrey[900]!,
              border: Border.all(color:Colors.black12),
            ),
          ),
          //Divider(indent: 120,endIndent: 120,thickness: 3,color: Colors.blueGrey[900]!,),
          SizedBox(height: 7,)
        ],
      ),
    );
  }
  Widget buildQuotation(int n,int index,double roomSize){
    return Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        //color: Colors.red,
        border: Border.all(color:Colors.black12),
      ),
      width: 15,
      height: 166,
      margin: EdgeInsets.all(3),
      child: Row(
        children: [
          Container(
            width:180,
            height:166,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              //color: Colors.red,
              image: DecorationImage(
                image: AssetImage("assets/images/${index+1}.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            padding:EdgeInsets.all(4),
            // child: Image(
            //   image: AssetImage("assets/images/1.jpg"),
            // ),
          ),
          SizedBox(width: 3,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.all(2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/userImages/${index+1}.png"),radius: 24,),
                    SizedBox(width: 3,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${names[index]}",
                              style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                            ),
                            (roomSize).round()+1>5 ? Icon(Icons.verified,color: Colors.lightBlue,size: 15,):SizedBox.shrink(),
                          ],
                        ),
                        Text(
                          "${(roomSize).round()+1}+ years experience",
                          style: TextStyle(color: Colors.red,fontSize: 11,),
                        ),
                        Row(
                          children: [
                            for(int i=0;i<(roomSize).round()-2;i++)
                              Icon(Icons.star,color: Colors.orange,size: 20,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon( Icons.location_on,color:Colors.red),
                  Text(
                    "${(roomSize*2.2).round()} km from you",
                    style: TextStyle(color: Colors.green,fontSize: 15,),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.house,size: 12.5,color: Colors.blueGrey ,),
                  SizedBox(width: 2),
                  Text(
                    "Room:",
                    style: TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "$roomSize",
                    style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.cubesStacked,size: 12.5,color: Colors.blueGrey ,),
                  SizedBox(width: 2),
                  Text(
                    "Material:",
                    style: TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "R${formatNumber((roomSize + 1.0) * 10000)}",
                    style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.personDigging,size: 12.5,color: Colors.blueGrey ,),
                  SizedBox(width: 2),
                  Text(
                    "Labour:",
                    style: TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "R${formatNumber(((roomSize + 1.0) * 10000)/2)}",
                    style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.clock,size: 12.5,color: Colors.blueGrey ,),
                  SizedBox(width: 2),
                  Text(
                    "Duration:",
                    style: TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "${roomSize.round()+1} Months",
                    style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  String formatNumber(double number) {
    String formatted = number.toStringAsFixed(0);
    final RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    return formatted.replaceAllMapped(reg, (Match match) => '${match[1]} ');
  }
}
