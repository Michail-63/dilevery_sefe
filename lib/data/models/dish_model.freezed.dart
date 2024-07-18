// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DishModel _$DishModelFromJson(Map<String, dynamic> json) {
  return _DishModel.fromJson(json);
}

/// @nodoc
mixin _$DishModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String get image => throw _privateConstructorUsedError;
  @HiveField(4)
  int get price => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get oldPrice => throw _privateConstructorUsedError;
  @HiveField(6)
  int get rating => throw _privateConstructorUsedError;
  @HiveField(7)
  int get likes => throw _privateConstructorUsedError;
  @HiveField(8)
  String get category => throw _privateConstructorUsedError;
  @HiveField(9)
  int get commentsCount => throw _privateConstructorUsedError;
  @HiveField(10)
  bool get active => throw _privateConstructorUsedError;
  @HiveField(11)
  int get createdAt => throw _privateConstructorUsedError;
  @HiveField(12)
  int get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DishModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DishModelCopyWith<DishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishModelCopyWith<$Res> {
  factory $DishModelCopyWith(DishModel value, $Res Function(DishModel) then) =
      _$DishModelCopyWithImpl<$Res, DishModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String? description,
      @HiveField(3) String image,
      @HiveField(4) int price,
      @HiveField(5) String? oldPrice,
      @HiveField(6) int rating,
      @HiveField(7) int likes,
      @HiveField(8) String category,
      @HiveField(9) int commentsCount,
      @HiveField(10) bool active,
      @HiveField(11) int createdAt,
      @HiveField(12) int updatedAt});
}

/// @nodoc
class _$DishModelCopyWithImpl<$Res, $Val extends DishModel>
    implements $DishModelCopyWith<$Res> {
  _$DishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? image = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? rating = null,
    Object? likes = null,
    Object? category = null,
    Object? commentsCount = null,
    Object? active = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DishModelImplCopyWith<$Res>
    implements $DishModelCopyWith<$Res> {
  factory _$$DishModelImplCopyWith(
          _$DishModelImpl value, $Res Function(_$DishModelImpl) then) =
      __$$DishModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String? description,
      @HiveField(3) String image,
      @HiveField(4) int price,
      @HiveField(5) String? oldPrice,
      @HiveField(6) int rating,
      @HiveField(7) int likes,
      @HiveField(8) String category,
      @HiveField(9) int commentsCount,
      @HiveField(10) bool active,
      @HiveField(11) int createdAt,
      @HiveField(12) int updatedAt});
}

/// @nodoc
class __$$DishModelImplCopyWithImpl<$Res>
    extends _$DishModelCopyWithImpl<$Res, _$DishModelImpl>
    implements _$$DishModelImplCopyWith<$Res> {
  __$$DishModelImplCopyWithImpl(
      _$DishModelImpl _value, $Res Function(_$DishModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? image = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? rating = null,
    Object? likes = null,
    Object? category = null,
    Object? commentsCount = null,
    Object? active = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DishModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5, adapterName: 'DishModelAdapter')
class _$DishModelImpl implements _DishModel {
  const _$DishModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.description,
      @HiveField(3) required this.image,
      @HiveField(4) required this.price,
      @HiveField(5) required this.oldPrice,
      @HiveField(6) required this.rating,
      @HiveField(7) required this.likes,
      @HiveField(8) required this.category,
      @HiveField(9) required this.commentsCount,
      @HiveField(10) required this.active,
      @HiveField(11) required this.createdAt,
      @HiveField(12) required this.updatedAt});

  factory _$DishModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DishModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final String image;
  @override
  @HiveField(4)
  final int price;
  @override
  @HiveField(5)
  final String? oldPrice;
  @override
  @HiveField(6)
  final int rating;
  @override
  @HiveField(7)
  final int likes;
  @override
  @HiveField(8)
  final String category;
  @override
  @HiveField(9)
  final int commentsCount;
  @override
  @HiveField(10)
  final bool active;
  @override
  @HiveField(11)
  final int createdAt;
  @override
  @HiveField(12)
  final int updatedAt;

  @override
  String toString() {
    return 'DishModel(id: $id, name: $name, description: $description, image: $image, price: $price, oldPrice: $oldPrice, rating: $rating, likes: $likes, category: $category, commentsCount: $commentsCount, active: $active, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DishModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      image,
      price,
      oldPrice,
      rating,
      likes,
      category,
      commentsCount,
      active,
      createdAt,
      updatedAt);

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DishModelImplCopyWith<_$DishModelImpl> get copyWith =>
      __$$DishModelImplCopyWithImpl<_$DishModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DishModelImplToJson(
      this,
    );
  }
}

abstract class _DishModel implements DishModel {
  const factory _DishModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String? description,
      @HiveField(3) required final String image,
      @HiveField(4) required final int price,
      @HiveField(5) required final String? oldPrice,
      @HiveField(6) required final int rating,
      @HiveField(7) required final int likes,
      @HiveField(8) required final String category,
      @HiveField(9) required final int commentsCount,
      @HiveField(10) required final bool active,
      @HiveField(11) required final int createdAt,
      @HiveField(12) required final int updatedAt}) = _$DishModelImpl;

  factory _DishModel.fromJson(Map<String, dynamic> json) =
      _$DishModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  String get image;
  @override
  @HiveField(4)
  int get price;
  @override
  @HiveField(5)
  String? get oldPrice;
  @override
  @HiveField(6)
  int get rating;
  @override
  @HiveField(7)
  int get likes;
  @override
  @HiveField(8)
  String get category;
  @override
  @HiveField(9)
  int get commentsCount;
  @override
  @HiveField(10)
  bool get active;
  @override
  @HiveField(11)
  int get createdAt;
  @override
  @HiveField(12)
  int get updatedAt;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DishModelImplCopyWith<_$DishModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
