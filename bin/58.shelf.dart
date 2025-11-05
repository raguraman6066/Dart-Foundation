import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';

void main(List<String> args) async {
  //like node js server
  final staticHandler = createStaticHandler(
    "web",
    defaultDocument: "index.html",
  );
  final server = await io.serve(staticHandler, "localhost", 8080);
  print("web server ${server.address.host} at ${server.port}");
}
