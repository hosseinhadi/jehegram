import 'enums/file_type_enum.dart';

class FileModel {
  FileModel(
      {this.fileType,
      this.dateTimeAdded,
      this.dateTimeDeleted,
      this.extension,
      this.name,
      this.pk,
      this.size});

  int? pk;
  String? name;
  FileType? fileType;
  DateTime? dateTimeAdded;
  DateTime? dateTimeDeleted;
  int? size;
  String? extension;
}
