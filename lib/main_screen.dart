import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Image.asset(
                    Assets.images.logo.path,
                    height: size.height / 13.6,
                  ),
                  const Icon(Icons.search)
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Stack(
                children: [
                  Container(
                      width: size.width / 1.25,
                      height: size.height / 4.2,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: Image.asset(Assets.images.posterTest.path,
                                    height: 64)
                                .image,
                            fit: BoxFit.cover),
                      ),
                      foregroundDecoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gradient: LinearGradient(
                              colors: GradiantColors.homePosterCoverGradiant,
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter))),
                  Positioned(
                      bottom: 8,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("ملیکا عزیزی - یک روز پیش",
                                  style: textTheme.subtitle1),
                              Text("Like 253", style: textTheme.subtitle1)
                            ],
                          ),
                          Text("دوازده قدم برنامه نویسی یک دوره ی ...س",
                              style: textTheme.subtitle1)
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
