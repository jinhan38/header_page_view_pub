import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageViewItem extends StatefulWidget {
  Widget widget;
  bool pageViewItemKeepAlive;
  ScrollController scrollController;
  double topPadding;

  PageViewItem({
    required this.widget,
    required this.pageViewItemKeepAlive,
    required this.scrollController,
    required this.topPadding,
    Key? key,
  }) : super(key: key);

  @override
  _PageViewItemState createState() => _PageViewItemState();
}

class _PageViewItemState extends State<PageViewItem>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
        padding: EdgeInsets.only(top: widget.topPadding),
        controller: widget.scrollController,
        shrinkWrap: true,
        children: [widget.widget]);
  }

  @override
  bool get wantKeepAlive => true;
}
