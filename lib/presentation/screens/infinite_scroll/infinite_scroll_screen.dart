import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const name = "infinite_scroll_screen";

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesId = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesId.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              image: NetworkImage(
                  "https://picsum.photos/id/${imagesId[index]}/500/300"),
              placeholder: const AssetImage("assets/Images/jar-loading.gif"),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => context.pop()),
        elevation: 5,
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }

  void addFiveImages() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() => Void);
    await Future.delayed(const Duration(seconds: 1));

    addFiveImages();
    isLoading = false;
    if (!isMounted) return;
    setState(() => Void);
  }
}
