import '../database.dart';

class ListEstudoOuvindoavozdeDeusTable
    extends SupabaseTable<ListEstudoOuvindoavozdeDeusRow> {
  @override
  String get tableName => 'list_estudo_ouvindoavozdeDeus';

  @override
  ListEstudoOuvindoavozdeDeusRow createRow(Map<String, dynamic> data) =>
      ListEstudoOuvindoavozdeDeusRow(data);
}

class ListEstudoOuvindoavozdeDeusRow extends SupabaseDataRow {
  ListEstudoOuvindoavozdeDeusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListEstudoOuvindoavozdeDeusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cap => getField<String>('Cap');
  set cap(String? value) => setField<String>('Cap', value);

  String? get numero => getField<String>('Numero');
  set numero(String? value) => setField<String>('Numero', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);
}
