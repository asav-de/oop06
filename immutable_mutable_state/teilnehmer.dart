/// An immutable course participant.
class Teilnehmer {
  const Teilnehmer({required this.name, required this.age, this.email = null});
  final String name;
  final int age;
  final String? email;

  /// Pass [email] as a function, e.g. `() => null`, to reset it to null.
  Teilnehmer copyWith({String? name, int? age, String? Function()? email}) {
    return Teilnehmer(
      name: name ?? this.name,
      age: age ?? this.age,
      email: email != null ? email() : this.email,
    );
  }

  @override
  String toString() => 'Teilnehmer(name: $name, age: $age, email: $email)';
}
