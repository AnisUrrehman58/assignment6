void main() {
// Q.1: Create a list of names and print all names using list.

  List StudentName = ['khalil', 'Anis', 'Arham', 'azlan'];

  print(StudentName);

// Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

  List days = [];

  days.addAll([
    'monday',
    "thosday",
    'wednesday',
    "thusday",
    'Friday',
    "saturday",
    "sunday"
  ]);
  print(days);

// Q.3: Create a list of Days and remove one by one from the end of list.

  List Rdays = ['saturday', 'sunday', 'monday', 'thousday'];

  String RemoveDays = Rdays.removeLast();
  print(RemoveDays);

// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List numbers = [1, 5, 8, 10, 12, 18, 22];

  int smallest =
      numbers.reduce((current, next) => current < next ? current : next);
  int greatest =
      numbers.reduce((current, next) => current > next ? current : next);
  print(smallest);
  print(greatest);

// Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

  Map<String, String> contacts = {
    'Anis': '1234',
    'Khalil': '56789',
    'Arham': '456',
    'Azlan': '987654',
    'Iqbal': '123'
  };

  List keysWithLengthFour =
      contacts.keys.where((key) => key.length == 4).toList();

  print(keysWithLengthFour);

// Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country
//  value will have another map having capitalCity, currency and language to it. by using any country
//  key print all the value of Capital & Currency.

  // Create a world map
  Map<String, Map<String, String>> world = {
    'USA': {
      'capitalCity': 'Washington D.C.',
      'currency': 'US Dollar',
      'language': 'English',
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Japanese Yen',
      'language': 'Japanese',
    },
    // Add more countries as needed
  };

  // Print capital city and currency of a specific country

  void printCountryInfo(
      String country, Map<String, Map<String, String>> world) {
    if (world.containsKey(country)) {
      String capitalCity = world[country]['capitalCity']!;
      String currency = world[country]['currency']!;
      print(
          "Country: $country, Capital City: $capitalCity, Currency: $currency");
    } else {
      print("Country '$country' not found in the world map.");
    }
  }




}
