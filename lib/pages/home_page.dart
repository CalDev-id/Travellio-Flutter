part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  int selectedIndex = 0;
  int selectedIndex2 = 0;
  List<String> menus = [
    'All',
    'Recommended',
    'Popular',
    'Newest',
  ];
  List<String> menus2 = [
    'Sea',
    'Mountain',
    'Forest',
    'Beach',
    'River',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: defaultMargin, right: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 30, color: primaryColor),
                    Icon(Icons.notifications_active_outlined,
                        size: 30, color: primaryColor),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Text('Discover the beautiful\nplace in the world',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: primaryColor)),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 270,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: 'Search place',
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black38),
                          prefixIcon: Icon(Icons.search, color: Colors.black38),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.filter_list,
                          size: 30, color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: defaultMargin),
                child: CustomMenu(
                  menus: menus,
                  selectedIndex: selectedIndex,
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30),
              // Container(
              //   padding: const EdgeInsets.only(left: defaultMargin),
              //   width: double.infinity,
              //   height: 270,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       mockDestination
              //           .map((e) => GestureDetector(
              //                 onTap: () {
              //                   Get.to(() => DetailPage(
              //                         destination: Destination(
              //                             description: e.description,
              //                             duration: e.duration,
              //                             id: e.id,
              //                             image: e.image,
              //                             price: e.price,
              //                             title: e.title),
              //                       ));
              //                 },
              //                 child: DestinationCard(e, destination: e),
              //               ))
              //           .toList(),
              //     ],
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.only(left: defaultMargin),
                height: 240,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      // meski children tapi cuma 1, ga berupa list
                      children: mockDestination
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                Get.to(() => DetailPage(
                                      destination: Destination(
                                          description: e.description,
                                          duration: e.duration,
                                          id: e.id,
                                          image: e.image,
                                          price: e.price,
                                          title: e.title),
                                    ));
                              },
                              child: DestinationCard(e, destination: e),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    Text('See All',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: secondaryColor)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: defaultMargin),
                child: CustomMenu(
                  menus: menus2,
                  selectedIndex: selectedIndex2,
                  onTap: (index) {
                    setState(() {
                      selectedIndex2 = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(left: defaultMargin),
                height: 240,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      // meski children tapi cuma 1, ga berupa list
                      children: mockDestination
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                Get.to(() => DetailPage(
                                      destination: Destination(
                                          description: e.description,
                                          duration: e.duration,
                                          id: e.id,
                                          image: e.image,
                                          price: e.price,
                                          title: e.title),
                                    ));
                              },
                              child: DestinationCard(e, destination: e),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
