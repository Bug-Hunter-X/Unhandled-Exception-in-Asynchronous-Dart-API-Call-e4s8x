```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      final data = jsonDecode(response.body);
      print(data);
    } else {
      // Handle the error scenario
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error: $e');
    // Rethrow the exception to be handled by the caller if needed
    rethrow;
  }
}
```