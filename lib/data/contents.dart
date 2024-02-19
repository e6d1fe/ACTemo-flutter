class information {
  final String title;
  final String imagepath;
  final String definition;
  final String situation;
  final String letter;
  final String category;
  final String emoji;
  bool isSaved;
  information(this.title, this.imagepath, this.definition, this.situation, this.letter, this.category, this.emoji, this.isSaved);

  information.fromMap(Map)
      : this.title = Map['title'],
        this.imagepath = Map['imagepath'],
        this.definition = Map['definition'],
        this.situation = Map['situation'],
        this.letter = Map['letter'],
        this.category = Map['category'],
        this.emoji = Map['emoji'],
        this.isSaved = Map['isSaved'];
}

information surprised = information.fromMap({
  'title' : 'Surprised',
  'letter' : 'S',
  'emoji' : '😲',
  'isSaved' : false,
  'category' : 'Activation',
  'imagepath' : 'assets/images/dic/surprised.png',
  'definition' : 'A sudden feeling of astonishment or disbelief, often accompanied by a sense of wonder.',
  'situation' : 'Unexpectedly running into an old friend, Receiving an unexpected gift, Witnessing a surprising plot twist in a movie.',}
);

information excited = information.fromMap({
  'title' : 'Excited',
  'letter' : 'E',
  'emoji' : '🤪',
  'isSaved' : false,
  'category' : 'Activation',
  'imagepath' : 'assets/images/dic/excited.png',
  'definition' : 'A heightened state of enthusiasm and anticipation, often linked to positive expectations.',
  'situation' : 'Receiving good news, Planning a long-awaited vacation, Achieving a personal milestone.',}
);

information joyous = information.fromMap({
  'title' : 'Joyous',
  'letter' : 'J',
  'emoji' : '🤣',
  'isSaved' : false,
  'category' : 'Activation',
  'imagepath' : 'assets/images/dic/joyous.png',
  'definition' : 'Receiving good news, Planning a long-awaited vacation, Achieving a personal milestone.',
  'situation' : 'Celebrating a major life achievement, Being surrounded by loved ones during special occasions, Experiencing overwhelming pride and accomplishment.',}
);

information happy = information.fromMap({
  'title' : 'Happy',
  'letter' : 'H',
  'emoji' : '😊',
  'isSaved' : false,
  'category' : 'Activation',
  'imagepath' : 'assets/images/dic/happy.png',
  'definition' : 'A general sense of contentment and satisfaction with life.',
  'situation' : ' Enjoying a peaceful day outdoors, Achieving work-life balance, Accomplishing small daily goals.',}
);

information content = information.fromMap({
  'title' : 'Content',
  'letter' : 'C',
  'emoji' : '🙂',
  'isSaved' : false,
  'category' : 'Pleasant',
  'imagepath' : 'assets/images/dic/content.png',
  'definition' : 'A state of peaceful satisfaction and fulfillment.',
  'situation' : 'Relaxing with a good book, Reflecting on personal accomplishments, Finding solace in moments of quiet.',}
);

information relaxed = information.fromMap({
  'title' : 'Relaxed',
  'letter' : 'R',
  'emoji' : '😌',
  'category' : 'Pleasant',
  'isSaved' : false,
  'imagepath' : 'assets/images/dic/relaxed.png',
  'definition' : 'A calm and untroubled state of mind and body.',
  'situation' : 'Listening to calming music, Taking a leisurely walk in nature, Engaging in meditation or mindfulness practices.',}
);

information calm = information.fromMap({
  'title' : 'Calm',
  'letter' : 'C',
  'emoji' : '😶‍🌫',
  'category' : 'Pleasant',
  'isSaved' : false,
  'imagepath' : 'assets/images/dic/calm.png',
  'definition' : 'A serene and composed state of being, free from agitation.',
  'situation' : 'Watching a sunset, Engaging in deep breathing exercises, Enjoying a quiet moment of solitude.',}
);

information sleepy = information.fromMap({
  'title' : 'Sleepy',
  'letter' : 'S',
  'emoji' : '🥱',
  'isSaved' : false,
  'category' : 'Deactivation',
  'imagepath' : 'assets/images/dic/sleepy.png',
  'definition' : 'A state of drowsiness and the desire for rest or sleep.',
  'situation' : 'Nearing bedtime after a long day, Listening to the soothing sound of rain, Feeling a sense of relaxation after a warm shower.',}
);

information bored = information.fromMap({
  'title' : 'Bored',
  'letter' : 'B',
  'emoji' : '😑',
  'isSaved' : false,
  'category' : 'Deactivation',
  'imagepath' : 'assets/images/dic/bored.png',
  'definition' : 'A feeling of weariness and dissatisfaction due to lack of interest or stimulation.',
  'situation' : 'Waiting in a long queue, Having nothing to do during a slow day, Experiencing monotony in routine.',}
);

information sad = information.fromMap({
  'title' : 'Sad',
  'letter' : 'S',
  'emoji' : '😢',
  'isSaved' : false,
  'category' : 'Deactivation',
  'imagepath' : 'assets/images/dic/sad.png',
  'definition' : 'A state of emotional pain or sorrow.',
  'situation' : 'Dealing with a personal loss, Facing disappointment in relationships, Reflecting on challenging life circumstances.',}
);

information depressed = information.fromMap({
  'title' : 'Depressed',
  'letter' : 'D',
  'emoji' : '😔',
  'isSaved' : false,
  'category' : 'Deactivation',
  'imagepath' : 'assets/images/dic/depressed.png',
  'definition' : 'A persistent and profound feeling of sadness, often accompanied by a sense of hopelessness.',
  'situation' : 'Coping with long-term stress, Experiencing a major life setback, Feeling disconnected from others.',}
);

information distressed = information.fromMap({
  'title' : 'Distressed',
  'letter' : 'D',
  'emoji' : '😟',
  'isSaved' : false,
  'category' : 'Unpleasant',
  'imagepath' : 'assets/images/dic/sad.png',
  'definition' : 'A state of extreme anxiety or emotional suffering.',
  'situation' : 'Facing a sudden crisis, Dealing with overwhelming pressure, Coping with a traumatic event.',}
);

information angry = information.fromMap({
  'title' : 'Angry',
  'letter' : 'A',
  'emoji' : '😡',
  'isSaved' : false,
  'category' : 'Unpleasant',
  'imagepath' : 'assets/images/dic/angry.png',
  'definition' : 'A strong feeling of displeasure or resentment often triggered by perceived injustice.',
  'situation' : 'Confronting unfair treatment, Dealing with betrayal, Experiencing frustration with external circumstances.',}
);

information afraid = information.fromMap({
  'title' : 'Afraid',
  'letter' : 'A',
  'emoji' : '😨',
  'isSaved' : false,
  'category' : 'Unpleasant',
  'imagepath' : 'assets/images/dic/afraid.png',
  'definition' : 'A feeling of distress or apprehension caused by the presence or anticipation of danger.',
  'situation' : 'Walking alone at night in a sketchy neighborhood, Being confronted by a potentially aggressive individual, Hearing a sudden, loud noise in a quiet house.',}
);

final List<information> EmotionList = [
  afraid,
  angry,
  bored,
  calm,
  content,
  depressed,
  distressed,
  excited,
  happy,
  joyous,
  relaxed,
  sad,
  sleepy,
  surprised
];

final List<String> EmotionTitle = [
  afraid.title,
  angry.title,
  bored.title,
  calm.title,
  content.title,
  depressed.title,
  distressed.title,
  excited.title,
  happy.title,
  joyous.title,
  relaxed.title,
  sad.title,
  sleepy.title,
  surprised.title,
];

final List<String> EmotionPath = [
  afraid.imagepath,
  angry.imagepath,
  bored.imagepath,
  calm.imagepath,
  content.imagepath,
  depressed.imagepath,
  distressed.imagepath,
  excited.imagepath,
  happy.imagepath,
  joyous.imagepath,
  relaxed.imagepath,
  sad.imagepath,
  sleepy.imagepath,
  surprised.imagepath,
];

final List<String> EmotionDefinition = [
  afraid.definition,
  angry.definition,
  bored.definition,
  calm.definition,
  content.definition,
  depressed.definition,
  distressed.definition,
  excited.definition,
  happy.definition,
  joyous.definition,
  relaxed.definition,
  sad.definition,
  sleepy.definition,
  surprised.definition,
];

final List<String> EmotionSituation = [
  afraid.situation,
  angry.situation,
  bored.situation,
  calm.situation,
  content.situation,
  depressed.situation,
  distressed.situation,
  excited.situation,
  happy.situation,
  joyous.situation,
  relaxed.situation,
  sad.situation,
  sleepy.situation,
  surprised.situation,
];

final List<String> EmotionLetter = [
  afraid.letter,
  angry.letter,
  bored.letter,
  calm.letter,
  content.letter,
  depressed.letter,
  distressed.letter,
  excited.letter,
  happy.letter,
  joyous.letter,
  relaxed.letter,
  sad.letter,
  sleepy.letter,
  surprised.letter,
];

final List<String> EmotionCategory = [
  afraid.category,
  angry.category,
  bored.category,
  calm.category,
  content.category,
  depressed.category,
  distressed.category,
  excited.category,
  happy.category,
  joyous.category,
  relaxed.category,
  sad.category,
  sleepy.category,
  surprised.category
];

final List<bool> EmotionSaved = [
  afraid.isSaved,
  angry.isSaved,
  bored.isSaved,
  calm.isSaved,
  content.isSaved,
  depressed.isSaved,
  distressed.isSaved,
  excited.isSaved,
  happy.isSaved,
  joyous.isSaved,
  relaxed.isSaved,
  sad.isSaved,
  sleepy.isSaved,
  surprised.isSaved
];

final List<String> EmotionEmoji = [
  afraid.emoji,
  angry.emoji,
  bored.emoji,
  calm.emoji,
  content.emoji,
  depressed.emoji,
  distressed.emoji,
  excited.emoji,
  happy.emoji,
  joyous.emoji,
  relaxed.emoji,
  sad.emoji,
  sleepy.emoji,
  surprised.emoji
];
