import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:youtube_dl/youtube_dl.dart';

void main() {
  const MethodChannel channel = MethodChannel('youtube_dl');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await YoutubeDl.platformVersion, '42');
  });
}
