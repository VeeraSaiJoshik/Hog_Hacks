import 'package:flutter/material.dart';
import 'package:haghocks/firebase_options.dart';
import 'package:haghocks/pages/authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:googleapis/calendar/v3.dart' as calendar;
import 'package:googleapis_auth/googleapis_auth.dart' as auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Initialize Google API client
  final client = await auth.clientViaApplicationDefaultCredentials(scopes: const [calendar.CalendarApi.calendarScope]);


  // Create event
  final calendarApi = calendar.CalendarApi(client);
  final event = calendar.Event()
    ..summary = 'Event Name'
    ..description = 'Event Description'
    ..start = calendar.EventDateTime(date: DateTime.now())
    
    ..end = calendar.EventDateTime(date: DateTime.now().add(Duration(hours: 1)))


  try {
    final createdEvent = await calendarApi.events.insert(event, 'primary');
    print('Event created: ${createdEvent.summary}');
  } catch (e) {
    print('Error creating event: $e');
  }

  runApp(
    MaterialApp(
      home: AuthenticationPage(),
    ),
  );
}
