typedef RecordValues = Map<String, dynamic>;

class CreateRecordDTO {
  String? id;
  RecordValues values;

  CreateRecordDTO(this.values, {this.id});
}

class UpdateRecordDTO {
  String id;
  RecordValues values;

  UpdateRecordDTO(this.id, this.values);
}
