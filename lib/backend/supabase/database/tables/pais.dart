import '../database.dart';

class PaisTable extends SupabaseTable<PaisRow> {
  @override
  String get tableName => 'pais';

  @override
  PaisRow createRow(Map<String, dynamic> data) => PaisRow(data);
}

class PaisRow extends SupabaseDataRow {
  PaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomePais => getField<String>('nome_pais');
  set nomePais(String? value) => setField<String>('nome_pais', value);
}
