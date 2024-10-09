import 'package:flutter/material.dart';
import 'package:foody_ui/models/healthy_food.dart';
import 'package:foody_ui/utils/common_widgets/custom_clip_path.dart';
import 'package:foody_ui/utils/constants/colors.dart';

import '../../utils/common_widgets/food_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HealthyFood> healthyFoods = [
    HealthyFood(
        imagePath: "lib/images/chicken_bowl.png",
        foodName: "Chicken Dish",
        cost: "\$30.0"),
    HealthyFood(
        imagePath: "lib/images/buddha_bowl.png",
        foodName: "Buddha Dish",
        cost: "\$28.0"),
    HealthyFood(
        imagePath: "lib/images/salmon_poke_bowl.png",
        foodName: "Salmon Poke Dish",
        cost: "\$28.0"),
    HealthyFood(
        imagePath: "lib/images/vegetables_bowl.png",
        foodName: "Vegetable Dish",
        cost: "\$28.0"),
    HealthyFood(
        imagePath: "lib/images/smoothies_healthy_bowl.png",
        foodName: "Healthy Bowl",
        cost: "\$18.0"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: green,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "lib/images/arrow_back.png",
                width: 30,
                height: 30,
                color: Colors.white,
              )),
          actions: [
            //filter
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "lib/images/filters.png",
                  width: 25,
                  height: 25,
                  color: Colors.white,
                )),
            //menu
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "lib/images/more.png",
                  width: 30,
                  height: 30,
                  color: Colors.white,
                )),
          ],
        ),
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                //Header part
                ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    alignment: Alignment.bottomLeft,
                    width: double.infinity,
                    padding:
                        const EdgeInsets.only(left: 6, right: 16, bottom: 100),
                    color: green,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 20),
                      child: RichText(
                          text: const TextSpan(
                        text: "Healthy",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w800),
                        children: <TextSpan>[
                          TextSpan(
                              text: " Food",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white))
                        ],
                      )),
                    ),
                  ),
                ),
                //Foods
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.18,
                  left: 20,
                  right: 20,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: healthyFoods.length,
                        itemBuilder: (context, index) {
                          return FoodTile(
                            imagePath: healthyFoods[index].imagePath,
                            foodName: healthyFoods[index].foodName,
                            cost: healthyFoods[index].cost,
                          );
                        }),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 50,
                  right: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        label: Container(),
                        icon: Image.asset(
                          'lib/images/search.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        label: Container(),
                        icon: Image.asset(
                          'lib/images/shopping_cart.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xFF2E2E2E)),
                          onPressed: () {},
                          child: const Text('Checkout'))
                    ],
                  ),
                )
                //Action buttons
              ],
            ),
          ),
        ));
  }
}
