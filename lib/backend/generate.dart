import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<String> getCompletion(String prompt) async {
  var apiKey = Platform.environment['OPENAI_API_KEY'];
  var instructions = await File('openai_prompts.txt').readAsString();
  var completion = await _getCompletionFromOpenAI(apiKey!, instructions, prompt);
  var message = cleanString(completion['choices'][0]['message']['content']);
  return message;
}

String cleanString(String string) {
  return string.replaceAll('\n', '').replaceAll('  ', '');
}

Future<Map<String, dynamic>> _getCompletionFromOpenAI(String apiKey, String instructions, String prompt) async {
  var url = 'https://api.openai.com/v1/engines/davinci-codex/completions';
  var headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $apiKey',
  };
  var body = jsonEncode({
    "model": "gpt-3.5-turbo",
    "messages": [
      {"role": "system", "content": instructions},
      {"role": "user", "content": prompt}
    ]
  });
  var response = await http.post(Uri.parse(url), headers: headers, body: body);
  return jsonDecode(response.body);
}