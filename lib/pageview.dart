import 'package:flutter/material.dart';
import 'package:fronted_project/models/pageviewmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({super.key});

  @override
  State<PageviewDemo> createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  PageController pageController = PageController();
  List<Pageviewmodel> PageviewmodelList = [
    Pageviewmodel(image: "assets/images/first.jpg",
      title: "Career Development",
      text: "Your journey, Your Growth, Your Success From passion to Profession",
    ),
    Pageviewmodel(image: "assets/images/second.jpg",
      title: "Support at Every Step",
      text: "Guiding You Toward a Brighter Tomorrow, Navigate Your Career with Confidence",
    ),
    Pageviewmodel(image: "assets/images/fourth.jpg",
        title: "Your Future Awaits.Let's Find It Together",
        text: "Unlock Your Potential,Define Your Future",
    ),
    Pageviewmodel(image: "assets/images/fifth.png",
        title: "Empowerment Through Guidance",
      text: "Explore Possibilities, Embrace Potential",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: PageviewmodelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    Image.asset(PageviewmodelList[index].image.toString(),width: 400,height: 200,),
                    SizedBox(height: 20,),
                    Text(PageviewmodelList[index].title.toString(),style: TextStyle(fontSize: 30,color: Colors.blue),),
                    SizedBox(height: 30,),
                    Text(PageviewmodelList[index].text.toString(),style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                  ],);
                },),
            ),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count: PageviewmodelList.length,
                effect:  WormEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            ),
            TextButton(onPressed: (){}, child: Text("Skip")),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}