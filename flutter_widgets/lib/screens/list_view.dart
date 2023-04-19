import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/data.dart';
import 'package:flutter_widgets/screens/detail_screen.dart';
import 'package:flutter_widgets/utils/cupertino_theme.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>(debugLabel: 'myFormKey');

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
    return SingleChildScrollView(
      key: _formKey,
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            headers[index].isExpanded = !isExpanded;
          });
        },
        children: headers.map<ExpansionPanel>((Header header) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(header.title),
              );
            },
            body: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: header.items == null ? 0 : (header.items!.length / itemCountPerRow).ceil(),
              itemBuilder: (BuildContext context, int index) {
                final startIndex = index * itemCountPerRow;
                final endIndex = startIndex + itemCountPerRow;
                final rowItems = header.items!.sublist(startIndex, endIndex < header.items!.length ? endIndex : header.items!.length);
                return Row(
                  children: rowItems
                      .map((item) => Expanded(
                              child: CupertinoThemeWidget(

                                  child: CupertinoListTile(
                            title: Text(item.title),
                            subtitle: Text(item.description),
                            trailing: Icon(CupertinoIcons.right_chevron),
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(item: item))),
                          ))))
                      .toList(),
                );
              },
            ),
            isExpanded: header.isExpanded,
          );
        }).toList(),
      ),
    );
    // return SingleChildScrollView(
    //   child: ExpansionPanelList(
    //     expansionCallback: (int index, bool isExpanded) {
    //       setState(() {
    //         headers[index].isExpanded = !isExpanded;
    //       });
    //     },
    //     children: headers.map<ExpansionPanel>((Header header) {
    //       header.items!.sort((a, b) => a.title.compareTo(b.title));
    //
    //       return ExpansionPanel(
    //         headerBuilder: (BuildContext context, bool isExpanded) {
    //           return ListTile(
    //             title: Text(header.title),
    //           );
    //         },
    //         body: ListView.separated(
    //           physics: NeverScrollableScrollPhysics(),
    //           shrinkWrap: true,
    //           itemCount: (header.items!.length / itemCountPerRow).ceil(),
    //           itemBuilder: (BuildContext context, int index) {
    //             final startIndex = index * itemCountPerRow;
    //             final endIndex = startIndex + itemCountPerRow;
    //             final rowItems = header.items!.sublist(startIndex, endIndex < header.items!.length ? endIndex : header.items!.length);
    //             return Row(
    //               children: rowItems
    //                   .map((item) => Expanded(
    //                           child: CupertinoThemeWidget(
    //                               child: CupertinoListTile(
    //                         title: Text(item.title),
    //                         subtitle: Text(item.description),
    //                         trailing: Icon(CupertinoIcons.right_chevron),
    //                         onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(item.title))),
    //                       ))))
    //                   .toList(),
    //             );
    //           },
    //           separatorBuilder: (BuildContext context, int index) {
    //             return Divider();
    //           },
    //         ),
    //         isExpanded: header.isExpanded,
    //       );
    //     }).toList(),
    //   ),
    // );
  }
}
