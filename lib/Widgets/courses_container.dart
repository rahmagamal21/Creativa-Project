import 'package:flutter/material.dart';

import '../../constants.dart';

class CoursesContainer extends StatefulWidget {
  const CoursesContainer({super.key});

  @override
  State<CoursesContainer> createState() => _CoursesContainerState();
}

class _CoursesContainerState extends State<CoursesContainer> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var icon = Icons.favorite_outline;
    bool fav = false;
    return Container(
      width: size.width * 0.9,
      height: 300,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/course.jpg',
                  fit: BoxFit.fill,
                  height: 200,
                  width: size.width * 0.9,
                ),
              ),
              IconButton(
                icon: Icon(
                  icon,
                  color: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    icon == Icons.favorite_outline
                        ? icon = Icons.favorite_rounded
                        : icon = Icons.favorite_outline;
                    fav == false ? fav = true : fav = false;
                    fav == false
                        ? favourites.add(const CoursesContainer())
                        : favourites.contains(const CoursesContainer())
                            ? favourites.remove(const CoursesContainer())
                            : null;
                  });
                },
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Text(
                'Digital Marketing',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 5,
              )
              /*SizedBox(
                width: size.width * 0.43,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      icon = icon == Icons.star_border_outlined
                          ? Icons.star
                          : Icons.star_border_outlined;
                    });
                  },
                  icon: Icon(
                    icon,
                    color: Colors.yellow,
                  ),),*/
            ],
          ),
          const Text(
            'العقلية الإبداعية هي نقطة بدايتك كرائد أعمال لأنها بتساعدك تطلع أفكار وحلول لأي مشاكل بتواجهك وبالتالي هتقدر تفكر بشكل مبدع وريادي علشان تبني مشروعك!دورنا في كريتيفا اننا نوفرلك بيئة تدعم الإبداع ورواد الأعمال ودا اللي هنقدمه في برنامج "Minds Training Program"هتتعلم فيه:.....',
          ),
          /*const SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.grey,
              ),
            ),
            child: const Text('Learn More'),
          ),*/
        ],
      ),
    );
  }
}
