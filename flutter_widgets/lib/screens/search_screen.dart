import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/data.dart';
import 'package:flutter_widgets/screens/detail_screen.dart';
import 'package:flutter_widgets/utils/cupertino_theme.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("Search"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoSearchTextField(
              onChanged: (text) => setState(() => _searchText = text),
              onSubmitted: (text) => setState(() => _searchText = text),
              placeholder: 'Search',
            ),
          ),
          Expanded(
            child: ListViewSearchScreen(
              search: _searchText,
            ),
          ),
        ],
      ),
    );
  }
}


class ListViewSearchScreen extends StatefulWidget {
  const ListViewSearchScreen({Key? key, this.search = ""}) : super(key: key);
  final String? search;

  @override
  State<ListViewSearchScreen> createState() => _ListViewSearchScreenState();
}

class _ListViewSearchScreenState extends State<ListViewSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          // For small screens (mobile)
          return _buildListView(context, 1);
        } else if (constraints.maxWidth <= 1200) {
          // For medium screens (tablet)
          return _buildListView(context, 2);
        } else {
          // For large screens (desktop)
          return _buildListView(context, 3);
        }
      },
    );
  }

  Widget _buildListView(BuildContext context, int itemCountPerRow) {
    // Sort the items list by title
    if (widget.search!.isNotEmpty) {
      items.where((element) => element.title.contains(widget.search!));
    }
    items.sort((a, b) => a.title.compareTo(b.title));

    return ListView.separated(
      itemCount: (items.length / itemCountPerRow).ceil(),
      itemBuilder: (BuildContext context, int index) {
        final startIndex = index * itemCountPerRow;
        final endIndex = startIndex + itemCountPerRow;
        final rowItems = items.sublist(startIndex, endIndex < items.length ? endIndex : items.length);
        return Row(
          children: rowItems
              .map((item) => Expanded(
              child: CupertinoThemeWidget(child: CupertinoListTile(
                title: Text(item.title),
                subtitle: Text(item.description),
                trailing: Icon(CupertinoIcons.right_chevron),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(item: item))),
              ))))
              .toList(),
        );
      }, separatorBuilder: (BuildContext context, int index) { return Divider(); },
    );

  }
}
