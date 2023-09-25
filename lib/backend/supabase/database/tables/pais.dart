import '../database.dart';

class PaisTable extends SupabaseTable<PaisRow> {
  @override
  String get tableName => 'PAIS';

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

  String? get pais => getField<String>('PAIS');
  set pais(String? value) => setField<String>('PAIS', value);
}
