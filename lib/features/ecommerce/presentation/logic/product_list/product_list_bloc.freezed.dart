// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(int productId) toggleFavorite,
    required TResult Function(String query) searchProducts,
    required TResult Function(String? category) filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(int productId)? toggleFavorite,
    TResult? Function(String query)? searchProducts,
    TResult? Function(String? category)? filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(int productId)? toggleFavorite,
    TResult Function(String query)? searchProducts,
    TResult Function(String? category)? filterByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) loadInitial,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitial value)? loadInitial,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? loadInitial,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListEventCopyWith<$Res> {
  factory $ProductListEventCopyWith(
          ProductListEvent value, $Res Function(ProductListEvent) then) =
      _$ProductListEventCopyWithImpl<$Res, ProductListEvent>;
}

/// @nodoc
class _$ProductListEventCopyWithImpl<$Res, $Val extends ProductListEvent>
    implements $ProductListEventCopyWith<$Res> {
  _$ProductListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadInitialImplCopyWith<$Res> {
  factory _$$LoadInitialImplCopyWith(
          _$LoadInitialImpl value, $Res Function(_$LoadInitialImpl) then) =
      __$$LoadInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInitialImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$LoadInitialImpl>
    implements _$$LoadInitialImplCopyWith<$Res> {
  __$$LoadInitialImplCopyWithImpl(
      _$LoadInitialImpl _value, $Res Function(_$LoadInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInitialImpl implements _LoadInitial {
  const _$LoadInitialImpl();

  @override
  String toString() {
    return 'ProductListEvent.loadInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(int productId) toggleFavorite,
    required TResult Function(String query) searchProducts,
    required TResult Function(String? category) filterByCategory,
  }) {
    return loadInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(int productId)? toggleFavorite,
    TResult? Function(String query)? searchProducts,
    TResult? Function(String? category)? filterByCategory,
  }) {
    return loadInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(int productId)? toggleFavorite,
    TResult Function(String query)? searchProducts,
    TResult Function(String? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) loadInitial,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return loadInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitial value)? loadInitial,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return loadInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? loadInitial,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial(this);
    }
    return orElse();
  }
}

abstract class _LoadInitial implements ProductListEvent {
  const factory _LoadInitial() = _$LoadInitialImpl;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
          _$LoadMoreImpl value, $Res Function(_$LoadMoreImpl) then) =
      __$$LoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$LoadMoreImpl>
    implements _$$LoadMoreImplCopyWith<$Res> {
  __$$LoadMoreImplCopyWithImpl(
      _$LoadMoreImpl _value, $Res Function(_$LoadMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreImpl implements _LoadMore {
  const _$LoadMoreImpl();

  @override
  String toString() {
    return 'ProductListEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(int productId) toggleFavorite,
    required TResult Function(String query) searchProducts,
    required TResult Function(String? category) filterByCategory,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(int productId)? toggleFavorite,
    TResult? Function(String query)? searchProducts,
    TResult? Function(String? category)? filterByCategory,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(int productId)? toggleFavorite,
    TResult Function(String query)? searchProducts,
    TResult Function(String? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) loadInitial,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitial value)? loadInitial,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? loadInitial,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements ProductListEvent {
  const factory _LoadMore() = _$LoadMoreImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'ProductListEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(int productId) toggleFavorite,
    required TResult Function(String query) searchProducts,
    required TResult Function(String? category) filterByCategory,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(int productId)? toggleFavorite,
    TResult? Function(String query)? searchProducts,
    TResult? Function(String? category)? filterByCategory,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(int productId)? toggleFavorite,
    TResult Function(String query)? searchProducts,
    TResult Function(String? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) loadInitial,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitial value)? loadInitial,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? loadInitial,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements ProductListEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$ToggleFavoriteImplCopyWith<$Res> {
  factory _$$ToggleFavoriteImplCopyWith(_$ToggleFavoriteImpl value,
          $Res Function(_$ToggleFavoriteImpl) then) =
      __$$ToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$ToggleFavoriteImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
      _$ToggleFavoriteImpl _value, $Res Function(_$ToggleFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$ToggleFavoriteImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleFavoriteImpl implements _ToggleFavorite {
  const _$ToggleFavoriteImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductListEvent.toggleFavorite(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      __$$ToggleFavoriteImplCopyWithImpl<_$ToggleFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(int productId) toggleFavorite,
    required TResult Function(String query) searchProducts,
    required TResult Function(String? category) filterByCategory,
  }) {
    return toggleFavorite(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(int productId)? toggleFavorite,
    TResult? Function(String query)? searchProducts,
    TResult? Function(String? category)? filterByCategory,
  }) {
    return toggleFavorite?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(int productId)? toggleFavorite,
    TResult Function(String query)? searchProducts,
    TResult Function(String? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) loadInitial,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitial value)? loadInitial,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? loadInitial,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorite implements ProductListEvent {
  const factory _ToggleFavorite(final int productId) = _$ToggleFavoriteImpl;

  int get productId;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductsImplCopyWith<$Res> {
  factory _$$SearchProductsImplCopyWith(_$SearchProductsImpl value,
          $Res Function(_$SearchProductsImpl) then) =
      __$$SearchProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductsImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$SearchProductsImpl>
    implements _$$SearchProductsImplCopyWith<$Res> {
  __$$SearchProductsImplCopyWithImpl(
      _$SearchProductsImpl _value, $Res Function(_$SearchProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchProductsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsImpl implements _SearchProducts {
  const _$SearchProductsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductListEvent.searchProducts(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      __$$SearchProductsImplCopyWithImpl<_$SearchProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(int productId) toggleFavorite,
    required TResult Function(String query) searchProducts,
    required TResult Function(String? category) filterByCategory,
  }) {
    return searchProducts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(int productId)? toggleFavorite,
    TResult? Function(String query)? searchProducts,
    TResult? Function(String? category)? filterByCategory,
  }) {
    return searchProducts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(int productId)? toggleFavorite,
    TResult Function(String query)? searchProducts,
    TResult Function(String? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) loadInitial,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitial value)? loadInitial,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return searchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? loadInitial,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class _SearchProducts implements ProductListEvent {
  const factory _SearchProducts(final String query) = _$SearchProductsImpl;

  String get query;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByCategoryImplCopyWith<$Res> {
  factory _$$FilterByCategoryImplCopyWith(_$FilterByCategoryImpl value,
          $Res Function(_$FilterByCategoryImpl) then) =
      __$$FilterByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category});
}

/// @nodoc
class __$$FilterByCategoryImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$FilterByCategoryImpl>
    implements _$$FilterByCategoryImplCopyWith<$Res> {
  __$$FilterByCategoryImplCopyWithImpl(_$FilterByCategoryImpl _value,
      $Res Function(_$FilterByCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$FilterByCategoryImpl(
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterByCategoryImpl implements _FilterByCategory {
  const _$FilterByCategoryImpl(this.category);

  @override
  final String? category;

  @override
  String toString() {
    return 'ProductListEvent.filterByCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByCategoryImplCopyWith<_$FilterByCategoryImpl> get copyWith =>
      __$$FilterByCategoryImplCopyWithImpl<_$FilterByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitial,
    required TResult Function() loadMore,
    required TResult Function() refresh,
    required TResult Function(int productId) toggleFavorite,
    required TResult Function(String query) searchProducts,
    required TResult Function(String? category) filterByCategory,
  }) {
    return filterByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitial,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
    TResult? Function(int productId)? toggleFavorite,
    TResult? Function(String query)? searchProducts,
    TResult? Function(String? category)? filterByCategory,
  }) {
    return filterByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitial,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    TResult Function(int productId)? toggleFavorite,
    TResult Function(String query)? searchProducts,
    TResult Function(String? category)? filterByCategory,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) loadInitial,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_SearchProducts value) searchProducts,
    required TResult Function(_FilterByCategory value) filterByCategory,
  }) {
    return filterByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInitial value)? loadInitial,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_SearchProducts value)? searchProducts,
    TResult? Function(_FilterByCategory value)? filterByCategory,
  }) {
    return filterByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? loadInitial,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_SearchProducts value)? searchProducts,
    TResult Function(_FilterByCategory value)? filterByCategory,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(this);
    }
    return orElse();
  }
}

abstract class _FilterByCategory implements ProductListEvent {
  const factory _FilterByCategory(final String? category) =
      _$FilterByCategoryImpl;

  String? get category;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByCategoryImplCopyWith<_$FilterByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductListState {
  List<ProductEntity> get products => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ProductListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListStateCopyWith<ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
  @useResult
  $Res call(
      {List<ProductEntity> products,
      List<String> categories,
      bool isLoading,
      bool hasError,
      bool hasReachedEnd,
      int currentPage,
      String? selectedCategory,
      String? searchQuery,
      String? errorMessage});
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? categories = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? hasReachedEnd = null,
    Object? currentPage = null,
    Object? selectedCategory = freezed,
    Object? searchQuery = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListStateImplCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$$ProductListStateImplCopyWith(_$ProductListStateImpl value,
          $Res Function(_$ProductListStateImpl) then) =
      __$$ProductListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductEntity> products,
      List<String> categories,
      bool isLoading,
      bool hasError,
      bool hasReachedEnd,
      int currentPage,
      String? selectedCategory,
      String? searchQuery,
      String? errorMessage});
}

/// @nodoc
class __$$ProductListStateImplCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListStateImpl>
    implements _$$ProductListStateImplCopyWith<$Res> {
  __$$ProductListStateImplCopyWithImpl(_$ProductListStateImpl _value,
      $Res Function(_$ProductListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? categories = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? hasReachedEnd = null,
    Object? currentPage = null,
    Object? selectedCategory = freezed,
    Object? searchQuery = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ProductListStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductListStateImpl implements _ProductListState {
  const _$ProductListStateImpl(
      {final List<ProductEntity> products = const [],
      final List<String> categories = const [],
      this.isLoading = false,
      this.hasError = false,
      this.hasReachedEnd = false,
      this.currentPage = 1,
      this.selectedCategory,
      this.searchQuery,
      this.errorMessage})
      : _products = products,
        _categories = categories;

  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final String? selectedCategory;
  @override
  final String? searchQuery;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ProductListState(products: $products, categories: $categories, isLoading: $isLoading, hasError: $hasError, hasReachedEnd: $hasReachedEnd, currentPage: $currentPage, selectedCategory: $selectedCategory, searchQuery: $searchQuery, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_categories),
      isLoading,
      hasError,
      hasReachedEnd,
      currentPage,
      selectedCategory,
      searchQuery,
      errorMessage);

  /// Create a copy of ProductListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListStateImplCopyWith<_$ProductListStateImpl> get copyWith =>
      __$$ProductListStateImplCopyWithImpl<_$ProductListStateImpl>(
          this, _$identity);
}

abstract class _ProductListState implements ProductListState {
  const factory _ProductListState(
      {final List<ProductEntity> products,
      final List<String> categories,
      final bool isLoading,
      final bool hasError,
      final bool hasReachedEnd,
      final int currentPage,
      final String? selectedCategory,
      final String? searchQuery,
      final String? errorMessage}) = _$ProductListStateImpl;

  @override
  List<ProductEntity> get products;
  @override
  List<String> get categories;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get hasReachedEnd;
  @override
  int get currentPage;
  @override
  String? get selectedCategory;
  @override
  String? get searchQuery;
  @override
  String? get errorMessage;

  /// Create a copy of ProductListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListStateImplCopyWith<_$ProductListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
