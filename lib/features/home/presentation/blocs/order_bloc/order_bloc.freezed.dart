// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrders value) getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrders value)? getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrders value)? getOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrdersCopyWith<$Res> {
  factory _$$GetOrdersCopyWith(
          _$GetOrders value, $Res Function(_$GetOrders) then) =
      __$$GetOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrders>
    implements _$$GetOrdersCopyWith<$Res> {
  __$$GetOrdersCopyWithImpl(
      _$GetOrders _value, $Res Function(_$GetOrders) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrders implements GetOrders {
  const _$GetOrders();

  @override
  String toString() {
    return 'OrderEvent.getOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrders value) getOrders,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrders value)? getOrders,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrders value)? getOrders,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class GetOrders implements OrderEvent {
  const factory GetOrders() = _$GetOrders;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<OrderProductEntity> orders) loaded,
    required TResult Function(String message) loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<OrderProductEntity> orders)? loaded,
    TResult? Function(String message)? loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<OrderProductEntity> orders)? loaded,
    TResult Function(String message)? loadInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(Loaded value) loaded,
    required TResult Function(LoadInFailure value) loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(LoadInFailure value)? loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(Loaded value)? loaded,
    TResult Function(LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<OrderProductEntity> orders) loaded,
    required TResult Function(String message) loadInFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<OrderProductEntity> orders)? loaded,
    TResult? Function(String message)? loadInFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<OrderProductEntity> orders)? loaded,
    TResult Function(String message)? loadInFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(Loaded value) loaded,
    required TResult Function(LoadInFailure value) loadInFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(LoadInFailure value)? loadInFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(Loaded value)? loaded,
    TResult Function(LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoadInProgressCopyWith<$Res> {
  factory _$$LoadInProgressCopyWith(
          _$LoadInProgress value, $Res Function(_$LoadInProgress) then) =
      __$$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadInProgress>
    implements _$$LoadInProgressCopyWith<$Res> {
  __$$LoadInProgressCopyWithImpl(
      _$LoadInProgress _value, $Res Function(_$LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'OrderState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<OrderProductEntity> orders) loaded,
    required TResult Function(String message) loadInFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<OrderProductEntity> orders)? loaded,
    TResult? Function(String message)? loadInFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<OrderProductEntity> orders)? loaded,
    TResult Function(String message)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(Loaded value) loaded,
    required TResult Function(LoadInFailure value) loadInFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(LoadInFailure value)? loadInFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(Loaded value)? loaded,
    TResult Function(LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements OrderState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderProductEntity> orders});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$Loaded(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderProductEntity>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(final List<OrderProductEntity> orders) : _orders = orders;

  final List<OrderProductEntity> _orders;
  @override
  List<OrderProductEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrderState.loaded(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<OrderProductEntity> orders) loaded,
    required TResult Function(String message) loadInFailure,
  }) {
    return loaded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<OrderProductEntity> orders)? loaded,
    TResult? Function(String message)? loadInFailure,
  }) {
    return loaded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<OrderProductEntity> orders)? loaded,
    TResult Function(String message)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(Loaded value) loaded,
    required TResult Function(LoadInFailure value) loadInFailure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(LoadInFailure value)? loadInFailure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(Loaded value)? loaded,
    TResult Function(LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements OrderState {
  const factory Loaded(final List<OrderProductEntity> orders) = _$Loaded;

  List<OrderProductEntity> get orders;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInFailureCopyWith<$Res> {
  factory _$$LoadInFailureCopyWith(
          _$LoadInFailure value, $Res Function(_$LoadInFailure) then) =
      __$$LoadInFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadInFailureCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadInFailure>
    implements _$$LoadInFailureCopyWith<$Res> {
  __$$LoadInFailureCopyWithImpl(
      _$LoadInFailure _value, $Res Function(_$LoadInFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadInFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadInFailure implements LoadInFailure {
  const _$LoadInFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.loadInFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInFailureCopyWith<_$LoadInFailure> get copyWith =>
      __$$LoadInFailureCopyWithImpl<_$LoadInFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<OrderProductEntity> orders) loaded,
    required TResult Function(String message) loadInFailure,
  }) {
    return loadInFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<OrderProductEntity> orders)? loaded,
    TResult? Function(String message)? loadInFailure,
  }) {
    return loadInFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<OrderProductEntity> orders)? loaded,
    TResult Function(String message)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInFailure != null) {
      return loadInFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(Loaded value) loaded,
    required TResult Function(LoadInFailure value) loadInFailure,
  }) {
    return loadInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(LoadInFailure value)? loadInFailure,
  }) {
    return loadInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(Loaded value)? loaded,
    TResult Function(LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInFailure != null) {
      return loadInFailure(this);
    }
    return orElse();
  }
}

abstract class LoadInFailure implements OrderState {
  const factory LoadInFailure(final String message) = _$LoadInFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadInFailureCopyWith<_$LoadInFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
