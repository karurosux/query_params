import 'package:test/test.dart';
import 'package:query_params/query_params.dart';

void main() {
  test('should generate url query string', () {
    final query = new URLQueryParams();
    query.append('a', 1.0);
    query.append('b', 'sdf');

    expect(query.toString(), 'a=1.0&b=sdf');
  });

  test('should generate encoded url query string', () {
    final query = new URLQueryParams();
    query.append('a', 'hello world');
    query.append('b', 'hello%world');
    query.append('c', 'hello+world');
    query.append('d', 'hello/world');

    expect(query.toString(),
        'a=hello+world&b=hello%25world&c=hello%2Bworld&d=hello%2Fworld');
  });

  test('should generate encoded unicode chars query string', () {
    final query = new URLQueryParams();
    query.append('a', 'தமிழ் அரிச்சுவடி');
    query.append('b', true);

    expect(query.toString(),
        'a=%E0%AE%A4%E0%AE%AE%E0%AE%BF%E0%AE%B4%E0%AF%8D+%E0%AE%85%E0%AE%B0%E0%AE%BF%E0%AE%9A%E0%AF%8D%E0%AE%9A%E0%AF%81%E0%AE%B5%E0%AE%9F%E0%AE%BF&b=true');
  });
}
