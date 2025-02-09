import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          left: 25.0,
        ),
        width: 265,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // shoe picture
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(shoe.imagePath)),

            // description
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 15.0),
              child: Text(
                shoe.description,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            // detail + price
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name
                      Text(
                        shoe.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      //price
                      Text(
                        '\$' + shoe.price,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  // Add + button
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
            // button add cart
          ],
        ));
  }
}
