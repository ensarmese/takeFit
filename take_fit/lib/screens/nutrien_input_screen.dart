
import 'package:flutter/material.dart';

import 'package:take_fit/screens/responsive.dart';

class NutrientScreen extends StatefulWidget {
  const NutrientScreen({Key? key}) : super(key: key);

  @override
  State<NutrientScreen> createState() => _NutrientScreenState();
}

class _NutrientScreenState extends State<NutrientScreen> {
  Screen device = Screen.mobile;

  Widget drawScreen() {
    switch (device) {
      case Screen.mobile:
        return Mobile();
      case Screen.tablet:
        return Row(
          children: [
            SizedBox(width: 500, height: double.infinity, child: Mobile()),
            Expanded(child: ConversationsFrame()),
          ],
        );
      case Screen.desktop:
        return Row(
          children: [
            SizedBox(width: 500, child: Mobile()),
            Expanded(child: ConversationsFrame()),
            SizedBox(width: 350, child: Desktop()),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      device = detectScreen(MediaQuery.of(context).size);
    });
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(111, 215, 172, 1),
        title: Text("Besinler"),
      ),
      body: drawScreen(),
    );
  }

  SingleChildScrollView Mobile() {
    return SingleChildScrollView(
       child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/deger.jpg",width: 500,)
          ],),
          SizedBox(height: 20,),
          Image.asset("assets/images/su.jpg",width: 400,),
          SizedBox(height: 20,),
          Image.asset("assets/images/besin1.jpg",width: 400,),
          SizedBox(height: 20,),
          Image.asset("assets/images/besin2.jpg",width: 400,),
          SizedBox(height: 20,),
          Image.asset("assets/images/besin3.jpg",width: 400,),
        ],
             ),
     );
  }
}


  ListView ConversationsFrame() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                Text("Bugün Neler Yedin?", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(111, 215, 172, 1),fontSize: 25),)
                ],
                ),
            ),
          ),
        ),
        SizedBox(height: 30,),
        Image.asset("assets/images/be.jpg",width: 100,),
        SizedBox(height: 20,),
        Container(
          width: 400,
            height: 500,
            color: Color.fromARGB(206, 242, 242, 242),
            child: Column(
              children: [
                Text("Yediğim Besin Türleri",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromARGB(156, 243, 142, 35)),),
                SizedBox(height: 20,),
                Column(
                      children: [
                        CheckboxListTile(
                          title: Text("Meyve"),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        CheckboxListTile(
                          title: Text("Sebze"),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        CheckboxListTile(
                          title: Text("Baklagil"),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        CheckboxListTile(
                          title: Text("Et Ürünleri"),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        CheckboxListTile(
                          title: Text("Süt Ürünleri"),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                      ],
                    ),
              ],
            ),
        )
          ],
    );
  }

  Padding Desktop() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: 400,
          height: 1100,
          color: Color.fromARGB(206, 242, 242, 242),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sağlıklı Yaşam Rehberi",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Image.asset("assets/images/elma.jpeg",width: 400,)
                  ],
                ),
                Divider(),
                
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/koc.jpeg",width: 400,),
                Divider(),
                
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/kadin2.jpeg",width: 400,),
                Divider(),
                Image.asset("assets/images/kadin.jpeg",width: 400,),
                Divider(),
                Image.asset("assets/images/adam.jpeg",width: 400,),
              ],
            ),
          ),
        ),
      ),
    );
  }


