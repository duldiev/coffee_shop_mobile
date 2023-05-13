// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddToCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) addToCart,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function() resetCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? addToCart,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function()? resetCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? addToCart,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function()? resetCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseCount value) increaseCount,
    required TResult Function(DecreaseCount value) decreaseCount,
    required TResult Function(ResetCount value) resetCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(IncreaseCount value)? increaseCount,
    TResult? Function(DecreaseCount value)? decreaseCount,
    TResult? Function(ResetCount value)? resetCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseCount value)? increaseCount,
    TResult Function(DecreaseCount value)? decreaseCount,
    TResult Function(ResetCount value)? resetCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartEventCopyWith<$Res> {
  factory $AddToCartEventCopyWith(
          AddToCartEvent value, $Res Function(AddToCartEvent) then) =
      _$AddToCartEventCopyWithImpl<$Res, AddToCartEvent>;
}

/// @nodoc
class _$AddToCartEventCopyWithImpl<$Res, $Val extends AddToCartEvent>
    implements $AddToCartEventCopyWith<$Res> {
  _$AddToCartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddToCartCopyWith<$Res> {
  factory _$$AddToCartCopyWith(
          _$AddToCart value, $Res Function(_$AddToCart) then) =
      __$$AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$AddToCartCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res, _$AddToCart>
    implements _$$AddToCartCopyWith<$Res> {
  __$$AddToCartCopyWithImpl(
      _$AddToCart _value, $Res Function(_$AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddToCart(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'AddToCartEvent.addToCart(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCart &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      __$$AddToCartCopyWithImpl<_$AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) addToCart,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function() resetCount,
  }) {
    return addToCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? addToCart,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function()? resetCount,
  }) {
    return addToCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? addToCart,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function()? resetCount,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseCount value) increaseCount,
    required TResult Function(DecreaseCount value) decreaseCount,
    required TResult Function(ResetCount value) resetCount,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(IncreaseCount value)? increaseCount,
    TResult? Function(DecreaseCount value)? decreaseCount,
    TResult? Function(ResetCount value)? resetCount,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseCount value)? increaseCount,
    TResult Function(DecreaseCount value)? decreaseCount,
    TResult Function(ResetCount value)? resetCount,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements AddToCartEvent {
  const factory AddToCart(final int productId) = _$AddToCart;

  int get productId;
  @JsonKey(ignore: true)
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncreaseCountCopyWith<$Res> {
  factory _$$IncreaseCountCopyWith(
          _$IncreaseCount value, $Res Function(_$IncreaseCount) then) =
      __$$IncreaseCountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncreaseCountCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res, _$IncreaseCount>
    implements _$$IncreaseCountCopyWith<$Res> {
  __$$IncreaseCountCopyWithImpl(
      _$IncreaseCount _value, $Res Function(_$IncreaseCount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncreaseCount implements IncreaseCount {
  const _$IncreaseCount();

  @override
  String toString() {
    return 'AddToCartEvent.increaseCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncreaseCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) addToCart,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function() resetCount,
  }) {
    return increaseCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? addToCart,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function()? resetCount,
  }) {
    return increaseCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? addToCart,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function()? resetCount,
    required TResult orElse(),
  }) {
    if (increaseCount != null) {
      return increaseCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseCount value) increaseCount,
    required TResult Function(DecreaseCount value) decreaseCount,
    required TResult Function(ResetCount value) resetCount,
  }) {
    return increaseCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(IncreaseCount value)? increaseCount,
    TResult? Function(DecreaseCount value)? decreaseCount,
    TResult? Function(ResetCount value)? resetCount,
  }) {
    return increaseCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseCount value)? increaseCount,
    TResult Function(DecreaseCount value)? decreaseCount,
    TResult Function(ResetCount value)? resetCount,
    required TResult orElse(),
  }) {
    if (increaseCount != null) {
      return increaseCount(this);
    }
    return orElse();
  }
}

abstract class IncreaseCount implements AddToCartEvent {
  const factory IncreaseCount() = _$IncreaseCount;
}

/// @nodoc
abstract class _$$DecreaseCountCopyWith<$Res> {
  factory _$$DecreaseCountCopyWith(
          _$DecreaseCount value, $Res Function(_$DecreaseCount) then) =
      __$$DecreaseCountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecreaseCountCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res, _$DecreaseCount>
    implements _$$DecreaseCountCopyWith<$Res> {
  __$$DecreaseCountCopyWithImpl(
      _$DecreaseCount _value, $Res Function(_$DecreaseCount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecreaseCount implements DecreaseCount {
  const _$DecreaseCount();

  @override
  String toString() {
    return 'AddToCartEvent.decreaseCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecreaseCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) addToCart,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function() resetCount,
  }) {
    return decreaseCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? addToCart,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function()? resetCount,
  }) {
    return decreaseCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? addToCart,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function()? resetCount,
    required TResult orElse(),
  }) {
    if (decreaseCount != null) {
      return decreaseCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseCount value) increaseCount,
    required TResult Function(DecreaseCount value) decreaseCount,
    required TResult Function(ResetCount value) resetCount,
  }) {
    return decreaseCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(IncreaseCount value)? increaseCount,
    TResult? Function(DecreaseCount value)? decreaseCount,
    TResult? Function(ResetCount value)? resetCount,
  }) {
    return decreaseCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseCount value)? increaseCount,
    TResult Function(DecreaseCount value)? decreaseCount,
    TResult Function(ResetCount value)? resetCount,
    required TResult orElse(),
  }) {
    if (decreaseCount != null) {
      return decreaseCount(this);
    }
    return orElse();
  }
}

abstract class DecreaseCount implements AddToCartEvent {
  const factory DecreaseCount() = _$DecreaseCount;
}

/// @nodoc
abstract class _$$ResetCountCopyWith<$Res> {
  factory _$$ResetCountCopyWith(
          _$ResetCount value, $Res Function(_$ResetCount) then) =
      __$$ResetCountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetCountCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res, _$ResetCount>
    implements _$$ResetCountCopyWith<$Res> {
  __$$ResetCountCopyWithImpl(
      _$ResetCount _value, $Res Function(_$ResetCount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetCount implements ResetCount {
  const _$ResetCount();

  @override
  String toString() {
    return 'AddToCartEvent.resetCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) addToCart,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function() resetCount,
  }) {
    return resetCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? addToCart,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function()? resetCount,
  }) {
    return resetCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? addToCart,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function()? resetCount,
    required TResult orElse(),
  }) {
    if (resetCount != null) {
      return resetCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(IncreaseCount value) increaseCount,
    required TResult Function(DecreaseCount value) decreaseCount,
    required TResult Function(ResetCount value) resetCount,
  }) {
    return resetCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(IncreaseCount value)? increaseCount,
    TResult? Function(DecreaseCount value)? decreaseCount,
    TResult? Function(ResetCount value)? resetCount,
  }) {
    return resetCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(IncreaseCount value)? increaseCount,
    TResult Function(DecreaseCount value)? decreaseCount,
    TResult Function(ResetCount value)? resetCount,
    required TResult orElse(),
  }) {
    if (resetCount != null) {
      return resetCount(this);
    }
    return orElse();
  }
}

abstract class ResetCount implements AddToCartEvent {
  const factory ResetCount() = _$ResetCount;
}

/// @nodoc
mixin _$AddToCartState {
  int get count => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToCartStateCopyWith<AddToCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartStateCopyWith<$Res> {
  factory $AddToCartStateCopyWith(
          AddToCartState value, $Res Function(AddToCartState) then) =
      _$AddToCartStateCopyWithImpl<$Res, AddToCartState>;
  @useResult
  $Res call({int count, bool loading, bool loaded});
}

/// @nodoc
class _$AddToCartStateCopyWithImpl<$Res, $Val extends AddToCartState>
    implements $AddToCartStateCopyWith<$Res> {
  _$AddToCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? loading = null,
    Object? loaded = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddToCartStateCopyWith<$Res>
    implements $AddToCartStateCopyWith<$Res> {
  factory _$$_AddToCartStateCopyWith(
          _$_AddToCartState value, $Res Function(_$_AddToCartState) then) =
      __$$_AddToCartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, bool loading, bool loaded});
}

/// @nodoc
class __$$_AddToCartStateCopyWithImpl<$Res>
    extends _$AddToCartStateCopyWithImpl<$Res, _$_AddToCartState>
    implements _$$_AddToCartStateCopyWith<$Res> {
  __$$_AddToCartStateCopyWithImpl(
      _$_AddToCartState _value, $Res Function(_$_AddToCartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? loading = null,
    Object? loaded = null,
  }) {
    return _then(_$_AddToCartState(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddToCartState extends _AddToCartState {
  _$_AddToCartState(
      {required this.count, required this.loading, required this.loaded})
      : super._();

  @override
  final int count;
  @override
  final bool loading;
  @override
  final bool loaded;

  @override
  String toString() {
    return 'AddToCartState(count: $count, loading: $loading, loaded: $loaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCartState &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, loading, loaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartStateCopyWith<_$_AddToCartState> get copyWith =>
      __$$_AddToCartStateCopyWithImpl<_$_AddToCartState>(this, _$identity);
}

abstract class _AddToCartState extends AddToCartState {
  factory _AddToCartState(
      {required final int count,
      required final bool loading,
      required final bool loaded}) = _$_AddToCartState;
  _AddToCartState._() : super._();

  @override
  int get count;
  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  @JsonKey(ignore: true)
  _$$_AddToCartStateCopyWith<_$_AddToCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
