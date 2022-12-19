import 'package:efundusv2/page/viewcourse.dart';
import 'package:efundusv2/utils/constants.dart';
import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:line_icons/line_icons.dart';

class CardCourse extends StatefulWidget {
  final bool isFullScreen;
  final bool hasDescribe;
  final bool hasleftShopppingIcon;
  final String named;
  bool hasdiscount = true;
  CardCourse(
      {Key? key,
      required this.isFullScreen,
      required this.named,
      required this.hasDescribe,
      required this.hasleftShopppingIcon,
      hasdiscount})
      : super(key: key);

  @override
  State<CardCourse> createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 320,
      width: widget.isFullScreen
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 1.3,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
          onTap: widget.hasDescribe
              ? null
              : () {
                  showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      // elevation: 2,
                      backgroundColor: Utils.lightColor,
                      builder: (BuildContext context) {
                        //TODO get course by id
                        return Container(
                          padding: const EdgeInsets.only(top: 12.0),
                          height: MediaQuery.of(context).size.height - 100,
                          child: Column(
                            children: [
                              Container(
                                child: Visibility(
                                  visible: true,
                                  child: GestureDetector(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "more",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: Utils.primaryColor),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 20.0,
                                            color: Utils.primaryColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ViewCourse()));
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: CardCourse(
                                isFullScreen: true,
                                named: "Full brother",
                                hasDescribe: true,
                                hasleftShopppingIcon: false,
                              )),
                            ],
                          ),
                        );
                      });
                },
          child: SizedBox(
            child: Stack(
              children: [
                GestureDetector(
                  child: Image.asset(
                    "assets/courses/htmlcsscourse.jpg",
                    fit: BoxFit.cover,
                    width: widget.isFullScreen
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width / 1.3,
                  ),
                ),
                Positioned(
                    right: 5.0,
                    top: 5.0,
                    child: Visibility(
                      visible: widget.hasleftShopppingIcon,
                      child: Icon(
                        LineIcons.shoppingBasket,
                        size: widget.isFullScreen ? 30.0 : 24.0,
                        color: Utils.cardsColor,
                      ),
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            " widget.named",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 1.0, bottom: 5.0),
          child: const Text(
            "Michel Karnet ,Cyber carnet formations",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 13.0),
          ),
        ),
        Visibility(
            visible: widget.hasDescribe,
            child: Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                child: const Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quia inventore possimus veniam dignissimos autem delectus in! Expedita doloribus in autem ab! Ratione exercitationem aspernatur voluptatibus, distinctio voluptas laboriosam debitis! Beatae voluptas saepe asperiores voluptates labore quas reiciendis fuga odit voluptate ex, recusandae sapiente, molestias, itaque nam sequi autem voluptatem consequatur atque accusantium delectus incidunt laborum tempore neque? Magni, facere? Vel, quasi. Aliquid consequuntur corporis nisi, quod ad aliquam esse commodi labore repudiandae accusantium blanditiis quam iure magnam earum veritatis pariatur molestias! Quaerat facilis quae, reprehenderit expedita animi et nostrum.",
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis),
              ),
            )),
        Row(
          children: [
            const Text("3,5"),
            RatingBarIndicator(
              rating: 3.5,
              direction: Axis.horizontal,
              itemCount: 5,
              itemSize: 20.0,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Utils.secondaryColor,
              ),
            ),
            const Text("(439)"),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              Text("84.02",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              Text(" HTG",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10.0,
              ),
              widget.hasdiscount
                  ? Row(
                      children: const [
                        Text("135.50",
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.red,
                              decorationStyle: TextDecorationStyle.solid,
                            )),
                        Text(" HTG",
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.red,
                              decorationStyle: TextDecorationStyle.solid,
                            ))
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        Container(
          width: 90.0,
          padding: const EdgeInsets.all(3.0),
          margin: const EdgeInsets.only(top: 3.0),
          color: Utils.primaryColor,
          child: const Text(
            "Nouveau",
            style:
                TextStyle(color: Utils.lightColor, fontWeight: FontWeight.bold),
          ),
        ),
        widget.hasDescribe
            ? const SizedBox(
                height: 10.0,
              )
            : const SizedBox(),
        widget.hasleftShopppingIcon ? const SizedBox() : const Spacer(),
        widget.hasleftShopppingIcon
            ? const SizedBox()
            : SizedBox(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  label: const Text('Add to cart'),
                  icon: const Icon(
                    LineIcons.shoppingBasket,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Utils.primaryColor,
                  ),
                  onPressed: () {
                    Utils.kprint('Pressed add to cart button....');
                  },
                ),
              ),
      ]),
      decoration: BoxDecoration(
        // color: Utils.primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
