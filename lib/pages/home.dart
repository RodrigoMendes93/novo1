import 'package:flutter/material.dart';
import 'package:projeto1/components/image_header_default.dart';
import 'package:projeto1/components/subtitle_widget.dart';
import 'package:projeto1/routes/routes_generator.dart';
import 'package:projeto1/shared/constants.dart';
import 'package:projeto1/shared/styles.dart';
import '../components/title_widget.dart';
import '../components/tasks/list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String userName})
      : _userName = userName;

  final String _userName;
  get name => _userName;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppStyle.primaryColor,
                image: DecorationImage(
                  //Image: AssetImage
                  image: NetworkImage('https://picsum.photos/seed/picsum/200/300',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox.shrink(),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text('Categorias'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Calendário'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.toc_outlined),
              title: const Text('Sobre'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const ImageHeaderDefault(),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SubtitleDefault(title: AppConstants.welcome),
              TitleDefault(title: widget.name),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top:16.0),
                  child: ListTasks(),
                )
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //chamar a página de cadastro
          Navigator.of(context).pushNamed(RoutesGenerator.addPage);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}