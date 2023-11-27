typedef RecordValues = Map<String, dynamic>;

class CreateRecordDTO {
  String? id;
  RecordValues values;

  CreateRecordDTO(this.values, {this.id});
}
