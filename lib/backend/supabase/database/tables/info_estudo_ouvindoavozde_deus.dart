import '../database.dart';

class InfoEstudoOuvindoavozdeDeusTable
    extends SupabaseTable<InfoEstudoOuvindoavozdeDeusRow> {
  @override
  String get tableName => 'info_estudo_ouvindoavozdeDeus';

  @override
  InfoEstudoOuvindoavozdeDeusRow createRow(Map<String, dynamic> data) =>
      InfoEstudoOuvindoavozdeDeusRow(data);
}

class InfoEstudoOuvindoavozdeDeusRow extends SupabaseDataRow {
  InfoEstudoOuvindoavozdeDeusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InfoEstudoOuvindoavozdeDeusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cap => getField<String>('cap');
  set cap(String? value) => setField<String>('cap', value);

  String? get html => getField<String>('html');
  set html(String? value) => setField<String>('html', value);
}
