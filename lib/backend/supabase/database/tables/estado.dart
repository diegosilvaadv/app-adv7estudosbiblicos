import '../database.dart';

class EstadoTable extends SupabaseTable<EstadoRow> {
  @override
  String get tableName => 'ESTADO';

  @override
  EstadoRow createRow(Map<String, dynamic> data) => EstadoRow(data);
}

class EstadoRow extends SupabaseDataRow {
  EstadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstadoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get estado => getField<String>('ESTADO');
  set estado(String? value) => setField<String>('ESTADO', value);

  String? get pais => getField<String>('PAIS');
  set pais(String? value) => setField<String>('PAIS', value);
}
