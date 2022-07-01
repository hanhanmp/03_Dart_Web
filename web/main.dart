import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'type': '学习用品','cost': 100.64,'a': '1'},
    {'type': '医疗用品','cost': 200.64,'a': '1'},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}