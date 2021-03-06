import 'package:flutter/material.dart';

class BibleBody extends StatefulWidget {
  @override
  _BibleBodyState createState() => _BibleBodyState();
}

class _BibleBodyState extends State<BibleBody> {
  String testString = """
7 사랑하는 자들아 우리가 서로 사랑하자 사랑은 하나님께 속한 것이니 사랑하는 자마다 하나님으로부터 나서 하나님을 알고
8 사랑하지 아니하는 자는 하나님을 알지 못하나니 이는 하나님은 사랑이심이라
9 하나님의 사랑이 우리에게 이렇게 나타난 바 되었으니 하나님이 자기의 독생자를 세상에 보내심은 그로 말미암아 우리를 살리려 하심이라
10 사랑은 여기 있으니 우리가 하나님을 사랑한 것이 아니요 하나님이 우리를 사랑하사 우리 죄를 속하기 위하여 화목제물로 그 아들을 보내셨음이라
11 사랑하는 자들아 하나님이 이같이 우리를 사랑하셨은즉 우리도 서로 사랑하는 것이 마땅하도다
12 어느 때나 하나님을 본 사람이 없으되 만일 우리가 서로 사랑하면 하나님이 우리 안에 거하시고 그의 사랑이 우리 안에 온전히 이루어지느니라
13 그의 성령을 우리에게 주시므로 우리가 그 안에 거하고 그가 우리 안에 거하시는 줄을 아느니라
14 아버지가 아들을 세상의 구주로 보내신 것을 우리가 보았고 또 증언하노니
15 누구든지 예수를 하나님의 아들이라 시인하면 하나님이 그의 안에 거하시고 그도 하나님 안에 거하느니라
16 하나님이 우리를 사랑하시는 사랑을 우리가 알고 믿었노니 하나님은 사랑이시라 사랑 안에 거하는 자는 하나님 안에 거하고 하나님도 그의 안에 거하시느니라
17 이로써 사랑이 우리에게 온전히 이루어진 것은 우리로 심판 날에 담대함을 가지게 하려 함이니 주께서 그러하심과 같이 우리도 이 세상에서 그러하니라
18 사랑 안에 두려움이 없고 온전한 사랑이 두려움을 내쫓나니 두려움에는 형벌이 있음이라 두려워하는 자는 사랑 안에서 온전히 이루지 못하였느니라
19 우리가 사랑함은 그가 먼저 우리를 사랑하셨음이라
20 누구든지 하나님을 사랑하노라 하고 그 형제를 미워하면 이는 거짓말하는 자니 보는 바 그 형제를 사랑하지 아니하는 자는 보지 못하는 바 하나님을 사랑할 수 없느니라
21 우리가 이 계명을 주께 받았나니 하나님을 사랑하는 자는 또한 그 형제를 사랑할지니라
  """;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(testString),
        ],
      ),
    );
  }
}