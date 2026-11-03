// Week 1 Dart exercises — variables, operators, control flow, functions,
// collections. Replace each `throw UnimplementedError()` with a working
// implementation. Run the tests with:
//
//   flutter test test/exercises
//
// The worked examples from the lecture are in lecture_examples.dart. Each
// exercise below is similar to one of them, but not the same: read the
// example, close the file, then write the exercise yourself.
//
// You can also paste a function into https://dartpad.dev to experiment.

/// Returns 'Fizz' if [n] is divisible by 3, 'Buzz' if divisible by 5,
/// 'FizzBuzz' if divisible by both, otherwise [n] as a string.
//String fizzBuzz(int n) {
// TODO(lab): Exercise 1
//throw UnimplementedError();
//}
String fizzBuzz(int n) {
  if (n % 15 == 0) {
    return 'FizzBuzz';
  } else if (n % 3 == 0) {
    return 'Fizz';
  } else if (n % 5 == 0) {
    return 'Buzz';
  } else {
    return n.toString();
  }
}

/// Returns the average of the numbers in [numbers] that are greater than
/// zero. If there are none, returns 0.
/// [1.0, -2.0, 3.0] → 2.0
//double averageOfPositives(List<double> numbers) {
// TODO(lab): Exercise 2 — similar example: sumOfEvens.
//throw UnimplementedError();
//}
double averageOfPositives(List<double> numbers) {
  double sum = 0;
  int count = 0;

  for (double number in numbers) {
    if (number > 0) {
      sum += number;
      count++;
    }
  }

  if (count == 0) {
    return 0;
  }

  return sum / count;
}

/// Returns the body-mass-index category: below 18.5 'Underweight',
/// below 25 'Normal', below 30 'Overweight', otherwise 'Obese'.
/// Throws [ArgumentError] if [bmi] is zero or negative.
//String bmiCategory(double bmi) {
// TODO(lab): Exercise 3 — similar example: gradeLetter. A `switch`
// expression with relational patterns (`< 18.5 => ...`) reads well; see
// the notes, section "Control flow". Write your own boundary test first
// (see the TODO in test/exercises/dart_basics_test.dart).
//throw UnimplementedError();
//}
String bmiCategory(double bmi) {
  if (bmi <= 0) {
    throw ArgumentError('BMI must be greater than zero');
  }

  if (bmi < 18.5) {
    return 'Underweight';
  } else if (bmi < 25) {
    return 'Normal';
  } else if (bmi < 30) {
    return 'Overweight';
  } else {
    return 'Obese';
  }
}

/// Returns true when [text] reads the same forwards and backwards,
/// ignoring case and any character that is not a letter or digit.
/// 'A man, a plan, a canal: Panama' → true.
//bool isPalindrome(String text) {
// TODO(lab): Exercise 4 — to keep only letters and digits, use
// text.toLowerCase().replaceAll(RegExp('[^a-z0-9]'), '').
// `[^a-z0-9]` means "any character that is not a lower-case letter or a
// digit". Then compare the string with its reverse:
// split('').reversed.join().
//throw UnimplementedError();
//}
bool isPalindrome(String text) {
  final String cleaned = text.toLowerCase().replaceAll(RegExp('[^a-z0-9]'), '');

  final String reversed = cleaned.split('').reversed.join();

  return cleaned == reversed;
}

/// Counts how many times each letter a–z occurs in [text], ignoring case.
/// Spaces, digits and punctuation are not counted.
/// 'Hello, World!' → {'h': 1, 'e': 1, 'l': 3, 'o': 2, 'w': 1, 'r': 1, 'd': 1}
//Map<String, int> letterCount(String text) {
// TODO(lab): Exercise 5 — similar example: wordCount.
//throw UnimplementedError();
//}
Map<String, int> letterCount(String text) {
  final Map<String, int> counts = {};

  final String cleaned = text.toLowerCase();

  for (int i = 0; i < cleaned.length; i++) {
    final String letter = cleaned[i];

    if (RegExp('[a-z]').hasMatch(letter)) {
      if (counts.containsKey(letter)) {
        counts[letter] = counts[letter]! + 1;
      } else {
        counts[letter] = 1;
      }
    }
  }

  return counts;
}

/// Converts a distance. [value] is in kilometres by default and the result
/// is in miles; pass `toKilometres: true` to convert miles to kilometres
/// instead. 1 km = 0.621371 miles. Round the result to one decimal place.
//double convertDistance(double value, {bool toKilometres = false}) {
// TODO(lab): Exercise 6 — similar example: convertTemperature.
//throw UnimplementedError();
//}

double convertDistance(double value, {bool toKilometres = false}) {
  final double result;

  if (toKilometres) {
    result = value / 0.621371;
  } else {
    result = value * 0.621371;
  }

  return (result * 10).round() / 10;
}

/// Returns the first [count] Fibonacci numbers starting 0, 1, 1, 2, ...
/// count ≤ 0 → empty list.
//List<int> fibonacci(int count) {
// TODO(lab): Exercise 7
//throw UnimplementedError();
//}
List<int> fibonacci(int count) {
  final List<int> numbers = [];

  if (count <= 0) {
    return numbers;
  }

  numbers.add(0);

  if (count == 1) {
    return numbers;
  }

  numbers.add(1);

  for (int i = 2; i < count; i++) {
    final int next = numbers[i - 1] + numbers[i - 2];
    numbers.add(next);
  }

  return numbers;
}

/// Summarises a value that may be null or of any type:
/// null → 'no value', true → 'yes', false → 'no',
/// a double → 'a decimal number', a String → '"hi" has 2 characters',
/// a Map → 'a map with 3 entries', anything else → 'unknown'.
//String summarise(Object? value) {
// TODO(lab): Exercise 8 — similar example: describe. Use a `switch`
// with type patterns.
//throw UnimplementedError();
//}
String summarise(Object? value) {
  switch (value) {
    case null:
      return 'no value';

    case true:
      return 'yes';

    case false:
      return 'no';

    case double _:
      return 'a decimal number';

    case String text:
      return '"$text" has ${text.length} characters';

    case Map map:
      return 'a map with ${map.length} entries';

    default:
      return 'unknown';
  }
}
