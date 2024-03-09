import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _titleList = [
    'Tümü',
    'Teknoloji',
    'Siyaset',
    'Bilim',
    'Çocuk',
    'Yaşam'
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEEEFF0),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _titleList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        _titleList[index],
                        style: TextStyle(
                            color: index == _selectedIndex
                                ? Colors.black
                                : Colors.black45),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListView(
            children: [
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
              _buildContainer(),
            ],
          ),
        ));
  }

  Padding _buildContainer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://static.bundle.app/news/jzeezwrx.s3d.jpg',
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GDSC KOU'),
                    Text(
                      'GDSC KOU nün size bir haberi var...',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('1 saat önce'),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
