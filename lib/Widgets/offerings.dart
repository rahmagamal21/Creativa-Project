import 'package:flutter/material.dart';

import '../../constants.dart';
class Offerings extends StatelessWidget {
  const Offerings({Key? key, required this.title, required this.subTitle, required this.icon}) : super(key: key);
final String title ;
final String subTitle ;
final IconData icon ;
  @override
  Widget build(BuildContext context) {
    List icons=[Icons.supervisor_account,Icons.featured_play_list,Icons.computer,
      Icons.lightbulb];
    List titles=["Career consultation services","Technical & applied training programs",
     "Job based training","Entrepreneurship"];
    List subTitles=["Career consultation services","Technical & applied training programs",
      "Job based training","Entrepreneurship"];
    return Column(
      children: [
        Icon(icon),
        Text(title,style: TextStyle(color:amber,fontSize:13)),
        Text(subTitle,style: TextStyle(fontSize:10))
      ],
    );
  }
}
/* Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20 , left: 8 , bottom:8),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        VerticalDivider(
                          color:blue,
                          thickness:3,
                        ),
                        Text("WHAT \nWE  OFFER",style: TextStyle(color:blue,fontSize:15))
                      ],
                    ),
                  ),),
                GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing:8,
                      mainAxisSpacing:8
                  ),
                  itemBuilder: (BuildContext context, int index)=>
                  Offerings(
                    icon: ,
                  ),
                    )
              ],
            ) */