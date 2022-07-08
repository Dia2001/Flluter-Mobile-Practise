import 'dart:math';

import 'package:flutter/material.dart';

void main()=>runApp( MyApp());

class  MyApp  extends StatelessWidget{
  final mainImage=Image.asset(
    'images/image-vandia.png',
    fit: BoxFit.cover,
  );
  @override
  Widget build(BuildContext context) {
    const titleText=Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlona',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
    const subTitle = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
          'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
          'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25,
      ),
    );
    var stars=Row
      (mainAxisSize: MainAxisSize.min,
      children: [
        //google.com/icon
        Icon(Icons.favorite,color: Colors.green[500]),
        Icon(Icons.favorite,color: Colors.green[500]),
        Icon(Icons.favorite,color: Colors.green[500]),
        Icon(Icons.favorite_border,color: Colors.black),
        Icon(Icons.favorite_border,color: Colors.black),

      ],
    );
    var ratings=Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '170 Review',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w800,
              fontFamily:'Rotobo',
              //khoảng cách giữa các ký tự
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
    // syte ho list các icon
    const descTextStyle=TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );
    final iconList=DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.kitchen,color: Colors.green[500]),
                  Text('PREP'),
                  Text('25 min'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.timer,color: Colors.green[500]),
                  Text('COOK:'),
                  Text('1 hr')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.restaurant,color: Colors.green[500],),
                  Text('FEEDS:'),
                  Text('4-6'),
                ],
              ),
            ],
          ),
        )
    );
    final leftColumn=Container(
      padding: EdgeInsets.fromLTRB(20, 30,20,20),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0,30),
            height: 600,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 440,
                    child: leftColumn,
                  ),
                  mainImage,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

// void main() {
//   runApp(const MyApp());
// }
//
class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

//// Tiện ích này là gốc của ứng dụng của bạn.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Đây là chủ đề của ứng dụng của bạn.
        //
        // Thử chạy ứng dụng của bạn với "Flaming run". Bạn sẽ thấy
        // ứng dụng có thanh công cụ màu xanh lam. Sau đó, không thoát ứng dụng, hãy thử
        // thay đổi PrimarySwatch bên dưới thành Colors.green rồi gọi
        // "tải lại nóng" (nhấn "r" trong bảng điều khiển nơi bạn đã chạy "flashing run",
        // hoặc chỉ cần lưu các thay đổi của bạn thành "tải lại nóng" trong Flutter IDE).
        // Chú ý rằng bộ đếm không đặt lại về 0; ứng dụng
        // không được khởi động lại.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
//
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // Tiện ích này là trang chủ của ứng dụng của bạn. Đó là trạng thái, ý nghĩa
  // rằng nó có một đối tượng State (được định nghĩa bên dưới) chứa các trường ảnh hưởng đến
  // trông nó thế nào.

  // Lớp này là cấu hình cho trạng thái. Nó chứa các giá trị (trong này
  // trường hợp tiêu đề) được cung cấp bởi cha mẹ (trong trường hợp này là tiện ích Ứng dụng) và
  // được sử dụng bởi phương thức build của State. Các trường trong lớp con Widget là
  // luôn được đánh dấu là "cuối cùng".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Lời gọi setState này cho khung Flutter biết rằng một cái gì đó có
      // đã thay đổi trong Trạng thái này, khiến nó chạy lại phương thức xây dựng bên dưới
      // để màn hình có thể phản ánh các giá trị đã cập nhật. Nếu chúng tôi thay đổi
      // _counter mà không gọi setState (), thì phương thức xây dựng sẽ không
      // được gọi lại và như vậy sẽ không có gì xảy ra.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Phương thức này được chạy lại mỗi khi setState được gọi, ví dụ như xong
    // bằng phương thức _incrementCounter ở trên.
    //
    // Khung Flutter đã được tối ưu hóa để thực hiện các phương pháp xây dựng chạy lại
    // nhanh, để bạn có thể xây dựng lại bất kỳ thứ gì cần cập nhật
    // so với việc phải thay đổi các phiên bản widget riêng lẻ.
    return Scaffold(
      appBar: AppBar(
        // Ở đây chúng tôi lấy giá trị từ đối tượng MyHomePage được tạo bởi
        // phương thức App.build và sử dụng nó để đặt tiêu đề thanh ứng dụng của chúng tôi.
        title: Text(widget.title),
      ),
      body: Center(
        // Trung tâm là một tiện ích bố cục. Nó có một đứa trẻ duy nhất và định vị nó
        // ở giữa cha mẹ.
        child: Column(
          // Cột cũng là một widget bố cục. Nó có một danh sách trẻ em và
          // sắp xếp chúng theo chiều dọc. Theo mặc định, nó tự kích thước để vừa với
          // con theo chiều ngang và cố gắng cao bằng cha của nó.
          //
          // Gọi "debug paint" (nhấn "p" trong bảng điều khiển, chọn
          // Hành động "Toggle Debug Paint" từ Flutter Inspector trong Android
          // Studio hoặc lệnh "Toggle Debug Paint" trong Visual Studio Code)
          // để xem wireframe cho từng widget.
          //
          // Cột có các thuộc tính khác nhau để kiểm soát kích thước của chính nó và
          // cách nó định vị các con của nó. Ở đây chúng tôi sử dụng mainAxisAlignment để
          // căn giữa các con theo chiều dọc; trục chính ở đây là trục dọc
          // trục vì Các cột là dọc (trục chéo sẽ là
          // nằm ngang).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

