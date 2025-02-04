import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:styled_widget/styled_widget.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('놀이 관리'),
        ),
        body: <Widget>[
          InkWell(
            child: <Widget>[
              const Icon(Icons.star_border_outlined),
              Text('주요 일정'),
              const Spacer(), // 오른쪽 끝 공간 확보
              const Icon(Icons.arrow_forward_ios_sharp),
            ].toRow().padding(all: 8),
            onTap: () {},
          ).constrained(height: 60).card(),
          <Widget>[
            Text('자녀목록'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2, // 아이템 개수
              itemBuilder: (context, index) {
                // 더미 데이터
                final items = [
                  {
                    'name': 'John Doe',
                    'image': 'https://randomuser.me/api/portraits/men/1.jpg',
                  },
                  {
                    'name': 'Alis Doe',
                    'image': 'https://randomuser.me/api/portraits/women/1.jpg',
                  },
                ];

                final item = items[index];

                return ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Image.network(
                    item['image']!,
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ).clipOval(),
                  title: Text(item['name']!),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                  onTap: (){},
                );
              },
            ),
            InkWell(
              child: <Widget>[
                const Icon(Icons.add),
                const Text('자녀 추가'),
              ].toRow(),
              onTap: () {},
            )
          ]
              .toColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  separator: const SizedBox(
                    height: 8,
                  ))
              .padding(all: 8)
              .card(),
          <Widget>[
            Text('열람 목록'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2, // 아이템 개수
              itemBuilder: (context, index) {
                // 더미 데이터
                final items = [
                  {
                    'name': '아빠',
                    'image': 'https://randomuser.me/api/portraits/men/1.jpg',
                  },
                  {
                    'name': '엄마',
                    'image': 'https://randomuser.me/api/portraits/women/1.jpg',
                  },
                ];

                final item = items[index];

                return ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(item['name']!),
                  trailing: <Widget>[
                    Image.network(
                      item['image']!,
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                    ).clipOval(),
                    Image.network(
                      item['image']!,
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                    ).clipOval(),
                    const Icon(Icons.arrow_forward_ios_sharp)
                  ]
                      .toRow(
                          separator: SizedBox(
                        width: 8,
                      ))
                      .constrained(width: 136),
                  onTap: (){

                  },
                );
              },
            ),
            InkWell(
              child: <Widget>[
                const Icon(Icons.add),
                const Text('열람자 추가'),
              ].toRow(),
              onTap: () {},
            )
          ]
              .toColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  separator: const SizedBox(
                    height: 8,
                  ))
              .padding(all: 8)
              .card(),
        ]
            .toColumn(
                separator: const SizedBox(
              height: 16,
            ))
            .scrollable()
            .padding(
              horizontal: 16,
            )
            .safeArea(),
        bottomNavigationBar: FilledButton.icon(
          onPressed: () {},
          label: const Text('놀이 추가'),
          icon: const Icon(Icons.add),
        ).padding(horizontal: 16).safeArea());
  }
}
