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
      body: Stack(
        children: [
          Column(
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

                  Listimga("assets/images/maybe.jpg",context),
                  Listimga("assets/images/pexels-stephan-seeber-1054218.jpg",context),
                  Listimga("assets/images/nsplsh_59386c436f545267485045~mv2_d_6000_4000_s_4_2.webp",context),
                  Listimga("assets/images/3rd.jpg",context),
                  Listimga("assets/images/colorful-mountains-night-minimal-4k_1630531611.jpg.webp",context)


                ],),
              ),

            ],
          ),
          bottomButton(),
        ],
      ),
    );
  }

  Container bottomButton() {
    return Container(alignment: Alignment.center,margin: const EdgeInsets.only(bottom: 30),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0)),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(const IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                      color: Colors.purpleAccent.shade200),
                ),
              ),
            ],
          ),
        );
  }

  GestureDetector Listimga(String img,BuildContext context) {
    return GestureDetector(onTap: (){},
      child: Container(margin: const EdgeInsets.fromLTRB(25, 25, 23, 10),
                child: Stack(
                  children: [
                    Container(
                        clipBehavior: Clip.antiAlias,
                         decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(19) // Adjust the radius as needed
                    ),
                        child: Image.asset(img,
                          fit: BoxFit.cover,height: 130,width: MediaQuery.of(context).size.width,)),



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
              ),
    );
  }
}
