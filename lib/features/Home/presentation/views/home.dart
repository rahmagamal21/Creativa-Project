import 'package:creativa_courses_app/features/Home/presentation/views/widgets/category_item.dart';
import 'package:creativa_courses_app/features/Home/presentation/views/widgets/courses_container.dart';
import 'package:creativa_courses_app/features/Home/presentation/views/widgets/page_starting.dart';
import 'package:creativa_courses_app/features/Home/presentation/views/widgets/search_field.dart';
import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexing = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            //bottom: size.height * 0.1,
            top: 50,
            right: 30,
            left: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PageStarting(),
                SizedBox(
                  height: size.height * 0.03,
                ),
                const SearchField(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            indexing = index;
                          });
                        },
                        child: CategoryItem(indexing: indexing, index: index),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                const Text(
                  'Recent Courses',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                SizedBox(
                  height: size.height * 0.43,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: courseinfo.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: CoursesContainer(
                          index: index,
                        ),
                      );
                    }),
                  ),
                ),
                /*const Text(
                  'Courses',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * 75,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const CoursesContainer();
                    },
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
