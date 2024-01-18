import 'package:equatable/equatable.dart';
import 'package:common/model/base_item_model.dart';

class ImageModel extends BaseItemModel implements Equatable {
  final String name;
  final String url;

  ImageModel({id = "", this.name = "", this.url = "https://picsum.photos/200/300"}) : super(id, name, url);

  @override
  List<Object?> get props => [name, url];

  @override
  bool? get stringify => true;
}
