
import 'package:equatable/equatable.dart';

class MtgSet extends Equatable {
  final String id;
  final String code;
  final String name;
  final String releaseDate;
  final String iconSvgUri;
  final String type;

  MtgSet(this.id, this.code, this.name, this.releaseDate, this.iconSvgUri, this.type);

  MtgSet.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      code = json['code'],
      name = json['name'],
      releaseDate = json['released_at'],
      iconSvgUri = json['icon_svg_uri'],
      type = json['set_type'];
}