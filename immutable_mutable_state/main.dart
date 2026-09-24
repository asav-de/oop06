import 'teilnehmer.dart';

void main() {
  Teilnehmer teilnehmer_1 = Teilnehmer(
    name: 'Andrii',
    age: 40,
    email: 'andre.sav@edge.com',
  );

  print(teilnehmer_1);

  teilnehmer_1 = teilnehmer_1.copyWith(email: () => 'neuemail@neue.com');

  print(teilnehmer_1);

  teilnehmer_1 = teilnehmer_1.copyWith(email: () => null);

  print(teilnehmer_1);
}
