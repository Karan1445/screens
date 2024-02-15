import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [],
        title: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Image.asset(
                "assets/images/8373748.png",
                width: 35,
              ),
              Expanded(child: Container()),
              const CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage("assets/images/user_img.jpg"),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(25, 20, 25, 0),
              alignment: Alignment.center,
              child: const Text(
                "Pick Destination With Me.",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple,
                    fontSize: 24),
              )),
          Expanded(
            child: ListView(children: [

              Listimga("assets/images/maybe.jpg"),
              Listimga("assets/images/1st.jpg"),
              Listimga("assets/images/nsplsh_59386c436f545267485045~mv2_d_6000_4000_s_4_2.webp"),
              Listimga("assets/images/3rd.jpg"),
              Listimga("assets/images/night_mon.jpg")


            ],),
          )
        ],
      ),
    );
  }

  Container Listimga(String img) {
    return Container(margin: const EdgeInsets.fromLTRB(25, 25, 23, 10),
              child: Stack(
                children: [
                  Container(
                      clipBehavior: Clip.antiAlias,
                       decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(19) // Adjust the radius as needed
                  ),
                      child: Image.asset(img,
                        fit: BoxFit.cover,height: 130,width: 500,)),



                  Container(margin: const EdgeInsets.fromLTRB(18, 72, 10,0),alignment: Alignment.center,

                    child: const Column(

                      children: [

                        Row(
                          children: [
                            Text("Enjoy The Lake Sunset View\nIn The Boat",
                                style:TextStyle(color: Colors.white70,fontSize: 12),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                                color: Colors.redAccent,size: 11),
                            Text(
                              "Lugano ,Switzerland",
                              style: TextStyle(
                                  color: Colors.redAccent, fontWeight: FontWeight.w500,fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}
