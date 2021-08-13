
import 'package:redis/redis.dart';

class Redis1 {
  void light1() async {


    final conn = RedisConnection();
    conn.connect('100.24.253.180',6379).then((Command command) {
      command.send_object(["PUBLISH", "foo", "light1"]);
    });

  }
  void light2() async {


    final conn = RedisConnection();
    conn.connect('100.24.253.180',6379).then((Command command) {
      command.send_object(["PUBLISH", "foo", "light2"]);
    });

  }
  void door() async {


    final conn = RedisConnection();
    conn.connect('100.24.253.180',6379).then((Command command) {
      command.send_object(["PUBLISH", "foo", "door"]);
    });

  }
}
