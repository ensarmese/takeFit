// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/drawer.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  instagram() {
    final Uri uri = Uri.parse("https://www.instagram.com/ensar.mese/");
    launchUrl(uri);
  }

  mail() {
    final Uri uri = Uri.parse(
        "mailto:ensarmese1@gmail.com?subject=Destek Talebi&body=Merhaba uygulamayla ilgili problemim var.");
    launchUrl(uri);
  }

  linkedin() {
    final Uri uri = Uri.parse("https://www.linkedin.com/in/ensar-me%C5%9Fe-095676268/");
    launchUrl(uri);
  }

  call() {
    final Uri uri = Uri.parse("tel:+905458838941");
    launchUrl(uri);
  }

  whatsapp() {
    final Uri uri = Uri.parse(
        "https://wa.me/+905458839841?text=merhaba yardımıcı olurmusunuz?");
    launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
      ),
      drawer: drawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,30,10,0),
                child: Column(
                  children: [
                    RichText(text: TextSpan(text: "Bu uygulama Ensar Meşe ve Ahmet Hakan Biradlı tarafından, okumakta bulunduğumuz İstinye Üniversitesi Bilgisayar Programcılığı bölümünden Mobil Uygulama Temelleri ve Bitirme Projesi dersleri için hazırlanmıştır. Üstümüzde emeği geçen Keyvan Araasteh, Ahmet Selim Över hocalarımıza ve sıkıştığımız yerde bu nasıl yapılıyordu ya ? Diye sorduğumuz tüm arkadaşlarımıza teşekkür ederiz.")),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                
                    InkWell(
                      onTap: call,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/telephone-symbol-button.svg", height: 45, color: Colors.black45,),
                      ),
                    ),
                    InkWell(
                      onTap: linkedin,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/linkedin.svg", height: 45, color: Colors.blue,),
                      ),
                    ),
                    InkWell(
                      onTap: whatsapp,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/whatssapp-big-logo.svg", height: 45, color: Colors.green,),
                      ),
                    ),
                    InkWell(
                      onTap: mail,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/icons/gmail.png'),height: 45,),
                      ),
                    ),
                    InkWell(
                      onTap: instagram,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/icons/instagram.png'),height: 45,),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
