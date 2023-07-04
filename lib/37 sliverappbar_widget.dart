import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);

  @override
  State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 150,
            // title: Text('SliverAppBar'),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              centerTitle: true,
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('SliverFillRemaining...'),
            ),
          ),
        ],
      ),
    );
  }
}
