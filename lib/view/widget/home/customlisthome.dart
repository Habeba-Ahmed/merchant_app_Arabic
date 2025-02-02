import 'package:flutter/material.dart';

// import '../../../core/constant/imageassets.dart';

class CustomListHome extends StatelessWidget {
  final String name;
  final String imagename;
  final Function()? ontap;
    const CustomListHome({
    super.key,
    required this.name,
    required this.imagename, 
    required this.ontap,   
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(imagename),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(name, style: const TextStyle(color: Colors.black))),
          ],
        ),
      ),
    );
  }
}