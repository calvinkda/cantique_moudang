import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Detail extends StatelessWidget{
  //String id;
  String title;
  List description;

  Detail(this.title,this.description);

  //detail(String mot, String mot_fr,String traduction, String traduction_fr,);
  @override
  Widget build(BuildContext context) {
    Future<void> ShareText() async {
      await FlutterShare.share(
        title: 'Decouvre ce chant avec moi',
        text: title  ,
        linkUrl: 'Télécharge le Dictionnaire Moundang et découvre dautre mots sur :  https://koudanbe.herokuapp.com/',
        chooserTitle: title,
      );
    }

    Widget myText2(BuildContext){
      return  ListTile(
        title: Text(
          '$title',
          textScaleFactor: 2.0,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            //fontFamily:'cadela' ,
          ),
        ),
        subtitle: Text("$description",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black87,
            //fontFamily:'cadela' ,
            //fontFamily: 'empire',

          ),),
      );
    }


    // TODO: implement build
    //final mots mot = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green,
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: ShareText)
          ],
          // leading: GestureDetector(
          // onTap: ShareText,
          // child: Icon(Icons.share),
          //)
        ),

        body:Padding(
          padding: EdgeInsets.all(5.0),
          child: Container(
              child:Card(

                child:SingleChildScrollView(
                  padding: EdgeInsets.all(3.0),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //myText(BuildContext),
                      SizedBox(height: 20.0,),
                      myText2(BuildContext)
                    ],
                  ),
                ),
                elevation: 3.0,
              )
          ),
        )
    );
  }
}
