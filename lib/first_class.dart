import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:sikh_prayer/SecondClass.dart';
import 'package:sikh_prayer/main.dart';


class FirstClass extends StatelessWidget {
  late int index;
  late bool a; //a,b,index is used for chhosing between languages and some internal if-elase functions
  late int b;
  FirstClass(this.index, this.a, this.b);

  @override
  Widget build(BuildContext context) {
    late List text;
    late List text2;
    List lst2 = [
      "assets/images/option_2_single.png",
      "assets/images/option_4_single.png",
      "assets/images/option_6_single.png",
      "assets/images/option_8_single.png",
      "assets/images/option_10_single.png",
      "assets/images/option_12_single.png",
      "assets/images/option_14_single.png"
    ];
    List lst = [
      "assets/images/option_1_single.png",
      "assets/images/option_3_single.png",
      "assets/images/option_5_single.png",
      "assets/images/option_7_single.png",
      "assets/images/option_9_single.png",
      "assets/images/option_11_single.png",
      "assets/images/option_13_single.png"
    ];
    List english = [
      "Wake up early in the morning and sing the beautiful words of God's bani. Twenty-four hours a day, remember Vaheguru (God).",
      "After taking your bath, remember your God in meditation, and your mind and body shall be free of disease. Millions of difficulties are removed when you remember Vaheguru (God), and you are blessed with good fortune.",
      "In the whole universe and on each and every hair, Vaheguru (God) exists. Focus your mind on truth and contentment. Speak the words of God's spiritual wisdom.",
      "O Nanak, the loaves of bread are baked and placed on the plate.  Those who listen to the Guru, eat and are totally satisfied.",
      "Those that do not frighten anyone, and who are not afraid of anyone else. Says Nanak, listen mind: call him spiritually wise.",
      "Wherever I look, there the Guru has shown me that Vaheguru (God) is always with me.  Searching inside myself and outside, I came to see Him, through the word of the Shabad.",
      "My dear Lord of the Universe, please bless (me) your humble servant with glory.",
    ];
    List english2 = [
      "Anger, you are the root of fights; compassion never rises up in you.  You take the weak, sinful beings in your power, and make them dance like monkeys (make them do whatever you want them to do). Letting anger in, I will be punished in so many ways. Dearest Vaheguru, the destroyer of pains of the poor, Nanak prays that you protect everyone from this anger.",
      "With my palms pressed together, I offer my prayer, meditating on my Lord and Master.  Giving me His hand, the Vaheguru (God) has saved me, and erased all my sins.",
      "Night and day, they enjoy enjoyments, and they sleep in peace; they remain lovingly absorbed in the Word of the Shabad.  By great good fortune, one obtains the perfect Guru. Night and day, meditate on the Naam, the Name of the Lord (Vaheguru).",
      "When your soul is feeling sad, offer your prayers to the Guru.  Let go of all your cleverness, and dedicate your mind and body to Him.",
      "My Guru is always with me, near at hand.  Meditating, meditating in remembrance on Him, I love Him forever.",
      "Even in storms and heavy rain, I go out to catch a glimpse of my Guru. Even though the oceans and the seas are very vast, the Gursikh will cross over it to get to his Guru",
      "Even in the cold, the frost and the snow, the Gursikh still goes out to see his Guru. All day and night, I gaze upon my Guru, I install the Guru's Feet in my eyes.",
    ];
    List spanish = [
      "Aunque haya viento de temporal, el buscador seguirá yendo a ver a su Guru. Noche y día busco a mi Guru; enaltezco Sus Pies en mis ojos.",
      "Limpia tu mente y habita sólo en Tu Señor para que tu cuerpo y tu mente luzcan saludables. Pues en el Refugio del Señor millones de faltas son lavadas y la Puerta del Auspicio se abre para ti.",
      "En el décimo cuarto día, velo en las catorce dimensiones,  porque el Señor prevalece en cada partícula, en cada cabello tuyo. Entonces fija tu mente en la Verdad y en el Contentamiento, y recita nada más que la Sabiduría del Señor.",
      "Dice Nanak, el pan es cocinado y puesto frente a nosotros en platón, pero sólo podremos comer hasta llenarnos, si la Gracia de Dios reside en nosotros.",
      "Aunque haya viento de temporal, el buscador seguirá yendo a ver a su Guru. Noche y día busco a mi Guru; enaltezco Sus Pies en mis ojos.",
      "Limpia tu mente y habita sólo en Tu Señor para que tu cuerpo y tu mente luzcan saludables. Pues en el Refugio del Señor millones de faltas son lavadas y la Puerta del Auspicio se abre para ti.",
      "En el décimo cuarto día, velo en las catorce dimensiones,  porque el Señor prevalece en cada partícula, en cada cabello tuyo. Entonces fija tu mente en la Verdad y en el Contentamiento, y recita nada más que la Sabiduría del Señor.",
    ];
    List spanish2 = [
      "Dice Nanak, el pan es cocinado y puesto frente a nosotros en platón, pero sólo podremos comer hasta llenarnos, si la Gracia de Dios reside en nosotros.",
      "Aunque haya viento de temporal, el buscador seguirá yendo a ver a su Guru. Noche y día busco a mi Guru; enaltezco Sus Pies en mis ojos.",
      "Limpia tu mente y habita sólo en Tu Señor para que tu cuerpo y tu mente luzcan saludables. Pues en el Refugio del Señor millones de faltas son lavadas y la Puerta del Auspicio se abre para ti.",
      "En el décimo cuarto día, velo en las catorce dimensiones,  porque el Señor prevalece en cada partícula, en cada cabello tuyo. Entonces fija tu mente en la Verdad y en el Contentamiento, y recita nada más que la Sabiduría del Señor.",
      "Dice Nanak, el pan es cocinado y puesto frente a nosotros en platón, pero sólo podremos comer hasta llenarnos, si la Gracia de Dios reside en nosotros.",
      "En el décimo cuarto día, velo en las catorce dimensiones,  porque el Señor prevalece en cada partícula, en cada cabello tuyo. Entonces fija tu mente en la Verdad y en el Contentamiento, y recita nada más que la Sabiduría del Señor.",
      "Dice Nanak, el pan es cocinado y puesto frente a nosotros en platón, pero sólo podremos comer hasta llenarnos, si la Gracia de Dios reside en nosotros.",
    ];
    List text3 = [
      "When we Wake Up",
      "When we comb our hair",
      "Feeling Scared",
      "Sneezing",
      "Praying",
      "When we feel sad",
      "When it rains "
    ];
    List text4 = [
      "When we take a bath",
      "Before we eat",
      "When we are about to travel",
      "Feeling angry",
      "Going to Bed",
      "Feeling Lonely",
      "When it snows"
    ];
    List share=["Share to :","Facebook","Twitter","Google +","Email","Cancel"];
    List shareColors=[Colors.grey,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,];
    if (b == true) {
      text = english;
      text2 = english2;
    } else {
      text = spanish;
      text2 = spanish2;
    }
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            )),
        title: Row(children: [
          Expanded(
            child: Text(text3[index]),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.bookmark,
                ),
                Text("  "),

                IconButton(onPressed: (){},
            // onPressed:(){
                //   double mWidth = MediaQuery.of(context).size.width;
                //   double mHeight = MediaQuery.of(context).size.height;
                //
                //   getData(){
                //     return Container(
                //       width: mWidth,
                //     height: mHeight  * 0.5,
                //       child: ListView.separated(
                //         itemCount: 6,
                //         separatorBuilder: (BuildContext context, int index) => const Divider(),
                //         itemBuilder: (BuildContext context, int index) {
                //           return ListTile(
                //    title: TextButton(onPressed: (){},
                //    child:Text(share[index],textAlign:TextAlign.center ,style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 20,color:shareColors[index] ),) ,),
                //
                //           );
                //         },
                //       )
                //     );
                //   }
                //   showModalBottomSheet(context: context, builder: (builder){
                //  return getData();
                //   },);
                //
                // },
                icon:Icon(Icons.share),)
              ],
            ),
          ),
        ]),
      ),
      body: Material(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Card(
                margin: EdgeInsets.all(18.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(19.0))),
                elevation: 10.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "हेलो आप कैसा महसूस कर रहे हैं उम्मीद है आप ठीक होंगे",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Icon(
                          Icons.play_circle,
                          size: 40,
                          color: Colors.blue,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: a
                  ? Image.asset(
                      lst[index],
                      // width: 250,
                      // height: 250,
                    )
                  : Image.asset(
                      lst2[index],
                      // width: 250,
                      // height: 250,
                    ),
            ),
            Expanded(
              flex: 3,
              child: Card(
                margin: EdgeInsets.all(28.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(19.0))),
                elevation: 10.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: a
                          ? Text(
                              text[index],
                              style: TextStyle(fontSize: 20),
                              maxLines: 4,
                            )
                          : Text(
                              text2[index],
                              style: TextStyle(fontSize: 20),
                              maxLines: 4,
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: TextButton(
                        onPressed: () {},
                        child: TextButton(
                          child: Text(
                            "Full Text Here",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            print(index);
                            print(a);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondClass(index, a),
                                ));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
