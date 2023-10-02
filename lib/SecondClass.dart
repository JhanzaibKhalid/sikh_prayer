import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sikh_prayer/main.dart';
import 'package:sikh_prayer/practice.dart';

class SecondClass extends StatelessWidget {
  late int index;
  late bool a;
  SecondClass(this.index, this.a);
  @override
  Widget build(BuildContext context) {



    List details = [
      "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath",
      "When we wake in the morning, the first thing we have to do is to clean our outer body. We call this ishnaan. Then we are to sit and meditate to clean our inner self, the soul and mind. Guru says, if you do this, the mind and the body will not suffer from diseases and if there are any challenges in our way, Guru will remove them for us. Guru Jee loves us, and wants to help us always.",
      "Bhagat Kabir was a deeply religious muslim  saint. He recognised that there is one God who had many names. He recognised the universal path of love and brotherhood. His hymns were included into the Sikh holy scriptures. In this hymn (shabad) Bhagat Jee is referencing all the places that God lives. He talks about our hair and how even within the tiniest of hairs, God is there. That's why it is important to not cut, dye, pluck, burn or harm our hair. We call our hair Kesh and love them with our heart.",
      "Guru Arjun Dev Jee is talking to us about being thankful for what we have (even if it's just simple bread to eat). Whatever Guru Jee gives us, we should be happy to recieve it and remember those less fortunate than us (those that have nothing to eat). Read this shabad before and after you eat or recieve something. You can also recite it when you want something that you do not get. This will help you to be thankful for what you have."
          "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath",
      "When we wake in the morning, the first thing we have to do is to clean our outer body. We call this ishnaan. Then we are to sit and meditate to clean our inner self, the soul and mind. Guru says, if you do this, the mind and the body will not suffer from diseases and if there are any challenges in our way, Guru will remove them for us. Guru Jee loves us, and wants to help us always.",
      "Bhagat Kabir was a deeply religious muslim  saint. He recognised that there is one God who had many names. He recognised the universal path of love and brotherhood. His hymns were included into the Sikh holy scriptures. In this hymn (shabad) Bhagat Jee is referencing all the places that God lives. He talks about our hair and how even within the tiniest of hairs, God is there. That's why it is important to not cut, dye, pluck, burn or harm our hair. We call our hair Kesh and love them with our heart.",
      "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath",

    ];
    List details2 = [
      "Guru Arjun Dev Jee is talking to us about being thankful for what we have (even if it's just simple bread to eat). Whatever Guru Jee gives us, we should be happy to recieve it and remember those less fortunate than us (those that have nothing to eat). Read this shabad before and after you eat or recieve something. You can also recite it when you want something that you do not get. This will help you to be thankful for what you have."
          "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath",
      "When we wake in the morning, the first thing we have to do is to clean our outer body. We call this ishnaan. Then we are to sit and meditate to clean our inner self, the soul and mind. Guru says, if you do this, the mind and the body will not suffer from diseases and if there are any challenges in our way, Guru will remove them for us. Guru Jee loves us, and wants to help us always.",
      "Bhagat Kabir was a deeply religious muslim  saint. He recognised that there is one God who had many names. He recognised the universal path of love and brotherhood. His hymns were included into the Sikh holy scriptures. In this hymn (shabad) Bhagat Jee is referencing all the places that God lives. He talks about our hair and how even within the tiniest of hairs, God is there. That's why it is important to not cut, dye, pluck, burn or harm our hair. We call our hair Kesh and love them with our heart.",
      "Guru Arjun Dev Jee is talking to us about being thankful for what we have (even if it's just simple bread to eat). Whatever Guru Jee gives us, we should be happy to recieve it and remember those less fortunate than us (those that have nothing to eat). Read this shabad before and after you eat or recieve something. You can also recite it when you want something that you do not get. This will help you to be thankful for what you have."
          "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath",
      "When we wake in the morning, the first thing we have to do is to clean our outer body. We call this ishnaan. Then we are to sit and meditate to clean our inner self, the soul and mind. Guru says, if you do this, the mind and the body will not suffer from diseases and if there are any challenges in our way, Guru will remove them for us. Guru Jee loves us, and wants to help us always.",
      "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath",
      "Waking up early at Amrit Vela is very important for Sikhs. Its when the whole world is sleeping. When you wake up early and meditate / pray, you have complete peace. Also it is very hard to do this, so those that try get many rewards from Guru Jee. Guru Jee says, in the early hours of the morning wake up and recite shabads then all day do simran with your breath",

    ];
    List refrences = [
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1340,Raag (medley to create the mood): Prabhati (seriousness mood),Author: Guru Arjun Dev Jee – the fifth Guru",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 343,Raag (medley to create the mood): Gauri (Serious mood),Author: Bhagat Kabir",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1096,Raag (medley to create the mood): Maaroo (Bravery, profound mood),Author: Guru Arjun Dev Jee - the fifth Guru]",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1340,Raag (medley to create the mood): Prabhati (seriousness mood),Author: Guru Arjun Dev Jee – the fifth Guru",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 343,Raag (medley to create the mood): Gauri (Serious mood),Author: Bhagat Kabir",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1096,Raag (medley to create the mood): Maaroo (Bravery, profound mood),Author: Guru Arjun Dev Jee - the fifth Guru]",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1340,Raag (medley to create the mood): Prabhati (seriousness mood),Author: Guru Arjun Dev Jee – the fifth Guru",

    ];
    List refrences2 = [
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 343,Raag (medley to create the mood): Gauri (Serious mood),Author: Bhagat Kabir",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1096,Raag (medley to create the mood): Maaroo (Bravery, profound mood),Author: Guru Arjun Dev Jee - the fifth Guru]",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1340,Raag (medley to create the mood): Prabhati (seriousness mood),Author: Guru Arjun Dev Jee – the fifth Guru",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 343,Raag (medley to create the mood): Gauri (Serious mood),Author: Bhagat Kabir",
      "This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1096,Raag (medley to create the mood): Maaroo (Bravery, profound mood),Author: Guru Arjun Dev Jee - the fifth Guru]",
      " This pangti (line is from Sri Guru Granth Sahib Jee:Ang (limb/page): 1096,Raag (medley to create the mood): Soohee (Being away from home, The soul being separated from Vaheguru and meeting Vaheguru again mood),Author: Guru Nanak Dev Jee - the first Guru",
      "This pangti (line is from Sri Guru Granth Sahib Jee:'Ang (limb/page): 757,Raag (medley to create the mood):  Soohee (Being away from home, The soul being separated from Vaheguru and meeting Vaheguru again mood),Author: Guru Ram Das Jee - the fourth Guru",

    ];
    List share=["Share to :","Facebook","Twitter","Google +","Email","Cancel"];
    List shareColors=[Colors.grey,Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue,];
    print(details.length);
    print(details2.length);
    print(refrences.length);
    print(refrences2.length);
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
            child: Text(details[index]),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.bookmark,
                ),
                Text("  "),
                IconButton(onPressed:(){
                  double mWidth = MediaQuery.of(context).size.width;
                  double mHeight = MediaQuery.of(context).size.height;

                  getData(){
                    return Container(
                        width: mWidth,
                        height: mHeight  * 0.5,
                        child: ListView.separated(
                          itemCount: 6,
                          separatorBuilder: (BuildContext context, int index) => const Divider(),
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: TextButton(onPressed: (){},
                                child:Text(share[index],textAlign:TextAlign.center ,style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 20,color:shareColors[index] ),) ,),

                            );
                          },
                        )
                    );
                  }
                  showModalBottomSheet(context: context, builder: (builder){
                    return getData();
                  },);

                }, icon:Icon(Icons.share),)
              ],
            ),
          ),
        ]),
      ),
      body: Material(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(28.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(19.0))),
              elevation: 10.0,
              child: Container(
                alignment: Alignment.center,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(11.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: a
                      ? Text(
                          refrences[index],
                          maxLines: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        )
                      : Text(
                          refrences2[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                ),
              ),
            ),

//2nd child

            Card(
              margin: EdgeInsets.all(28.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(19.0))),
              elevation: 10.0,
              child: Container(
                alignment: Alignment.center,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(11.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: a
                      ? Text(
                          details[index],
                          maxLines: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        )
                      : Text(
                          details2[index],
                          textAlign: TextAlign.center,
                          maxLines: 5,
                          style: TextStyle(fontSize: 24),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
