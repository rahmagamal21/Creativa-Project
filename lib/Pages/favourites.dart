import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        bottom: size.height * 0.1,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Favourites',
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
                itemCount: favourites.length,
                itemBuilder: (BuildContext context, int index) {
                  return favourites[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
