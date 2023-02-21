part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final Destination destination;

  const DetailPage({Key? key, required this.destination}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Detail Page'),
      ),
    );
  }
}
