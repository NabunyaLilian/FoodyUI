import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    super.key,
    required this.imagePath,
    required this.foodName,
    required this.cost,
  });

  final String imagePath;
  final String foodName;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PhysicalModel(
                color: Colors.transparent,
                shape: BoxShape.circle,
                shadowColor: Colors.grey.shade200,
                elevation: 10.0,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    imagePath,
                  ),
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    cost,
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                  )
                ],
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'lib/images/plus.png',
                width: 15,
                height: 15,
              ))
        ],
      ),
    );
  }
}
