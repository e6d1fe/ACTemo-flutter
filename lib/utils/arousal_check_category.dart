List<String> arousalCheckHeader = [
  'Heart Rate (HR)',
  'Skin Conductance (Electrodermal Activity)',
  'Electromyography (EMG)',
  'Respiration Rate',
  'Blood Pressure 1',
  'Blood Pressure 2',
  'Temperature',
];

List<String> arousalCheckDescription = [
  'Are you experiencing any palpitations or irregular heartbeats?',
  'Do you feel any sensations of warmth or coolness on your skin?',
  'Are you aware of any tension or tightness in your muscles, especially in your shoulders, neck, or jaw?',
  'Are you feeling short of breath or anxious?',
  'Are you experiencing any dizziness or lightheadedness?',
  'Do you feel any sensations of pressure or constriction in your chest or head?',
  'Do you notice any changes in your skin temperature, such as feeling warm or cold?',
];

class ArousalCheckCategory {
  final String header;
  final String description;

  ArousalCheckCategory(this.header, this.description);
}