part of 'widget.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  const CustomBottomNavbar(
      {Key? key, required this.selectedIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          color: primaryColor,
          child: Row(children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(0);
                }
              },
              icon: const Icon(
                Icons.widgets,
                size: 25,
              ),
              color: Colors.white,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(1);
                }
              },
              icon: const Icon(
                Icons.sell,
                size: 25,
              ),
              color: Colors.white,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(2);
                }
              },
              icon: const Icon(
                Icons.bookmark_sharp,
                size: 25,
              ),
              color: Colors.white,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                if (onTap != null) {
                  onTap(3);
                }
              },
              icon: const Icon(
                Icons.person,
                size: 25,
              ),
              color: Colors.white,
            ),
            const Spacer(),
          ]),
        ),
      ],
    );
  }
}
