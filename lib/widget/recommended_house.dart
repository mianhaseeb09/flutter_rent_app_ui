import 'package:flutter/material.dart';
import 'package:flutter_rent_app_ui/model/house.dart';
import 'package:flutter_rent_app_ui/screens/Detail/detail.dart';
import 'package:flutter_rent_app_ui/widget/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  const RecommendedHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recommendedList = House.generateRecommended();
    return Container(
        padding: const EdgeInsets.all(15),
        height: 340,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: recommendedList.length,
            separatorBuilder: (_, index) => const SizedBox(
                  width: 20,
                ),
            itemBuilder: (context, index) => GestureDetector(
             onTap: (){
               Navigator.of(context)
                   .push(MaterialPageRoute(builder: (context) {
                 return DetailPage(house: recommendedList[index]);
               }));

             },
              child: Container(
                  height: 300,
                  width: 230,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  recommendedList[index].imageUrl,
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.white54,
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recommendedList[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      recommendedList[index].address,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                                CircleIconButton(
                                    iconUrl: 'assets/icons/mark.svg',
                                    color: Theme.of(context).accentColor)
                              ],
                            ),
                          )),
                      Positioned(
                          right: 15,
                          top: 15,
                          child: CircleIconButton(
                            iconUrl: 'assets/icons/mark.svg',
                            color: Theme.of(context).accentColor,
                          ))
                    ],
                  )),
            )));
  }
}
