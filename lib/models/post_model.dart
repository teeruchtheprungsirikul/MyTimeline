
import 'package:timeago/timeago.dart' as timeago;
class Post {
  String message;
  DateTime createdDate;

  Post({this.message,this.createdDate});

  String get timeagoMessage{
    var now = DateTime.now();
    var duration = now.difference(this.createdDate);
    var ago = now.subtract(duration);
    var message = timeago.format(ago, locale: 'th_short');

    return message;
  }
}