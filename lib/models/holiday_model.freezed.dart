// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'holiday_model.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$Holiday {
//   String get date => throw _privateConstructorUsedError;
//   String get name => throw _privateConstructorUsedError;
//   String get observed => throw _privateConstructorUsedError;
//   String get region => throw _privateConstructorUsedError;

//   @JsonKey(ignore: true)
//   $HolidayCopyWith<Holiday> get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $HolidayCopyWith<$Res> {
//   factory $HolidayCopyWith(Holiday value, $Res Function(Holiday) then) =
//       _$HolidayCopyWithImpl<$Res, Holiday>;
//   @useResult
//   $Res call({String date, String name, String observed, String region});
// }

// /// @nodoc
// class _$HolidayCopyWithImpl<$Res, $Val extends Holiday>
//     implements $HolidayCopyWith<$Res> {
//   _$HolidayCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? date = null,
//     Object? name = null,
//     Object? observed = null,
//     Object? region = null,
//   }) {
//     return _then(_value.copyWith(
//       date: null == date
//           ? _value.date
//           : date // ignore: cast_nullable_to_non_nullable
//               as String,
//       name: null == name
//           ? _value.name
//           : name // ignore: cast_nullable_to_non_nullable
//               as String,
//       observed: null == observed
//           ? _value.observed
//           : observed // ignore: cast_nullable_to_non_nullable
//               as String,
//       region: null == region
//           ? _value.region
//           : region // ignore: cast_nullable_to_non_nullable
//               as String,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$HolidayImplCopyWith<$Res> implements $HolidayCopyWith<$Res> {
//   factory _$$HolidayImplCopyWith(
//           _$HolidayImpl value, $Res Function(_$HolidayImpl) then) =
//       __$$HolidayImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({String date, String name, String observed, String region});
// }

// /// @nodoc
// class __$$HolidayImplCopyWithImpl<$Res>
//     extends _$HolidayCopyWithImpl<$Res, _$HolidayImpl>
//     implements _$$HolidayImplCopyWith<$Res> {
//   __$$HolidayImplCopyWithImpl(
//       _$HolidayImpl _value, $Res Function(_$HolidayImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? date = null,
//     Object? name = null,
//     Object? observed = null,
//     Object? region = null,
//   }) {
//     return _then(_$HolidayImpl(
//       date: null == date
//           ? _value.date
//           : date // ignore: cast_nullable_to_non_nullable
//               as String,
//       name: null == name
//           ? _value.name
//           : name // ignore: cast_nullable_to_non_nullable
//               as String,
//       observed: null == observed
//           ? _value.observed
//           : observed // ignore: cast_nullable_to_non_nullable
//               as String,
//       region: null == region
//           ? _value.region
//           : region // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$HolidayImpl implements _Holiday {
//   const _$HolidayImpl(
//       {required this.date,
//       required this.name,
//       required this.observed,
//       required this.region});

//   @override
//   final String date;
//   @override
//   final String name;
//   @override
//   final String observed;
//   @override
//   final String region;

//   @override
//   String toString() {
//     return 'Holiday(date: $date, name: $name, observed: $observed, region: $region)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$HolidayImpl &&
//             (identical(other.date, date) || other.date == date) &&
//             (identical(other.name, name) || other.name == name) &&
//             (identical(other.observed, observed) ||
//                 other.observed == observed) &&
//             (identical(other.region, region) || other.region == region));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, date, name, observed, region);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$HolidayImplCopyWith<_$HolidayImpl> get copyWith =>
//       __$$HolidayImplCopyWithImpl<_$HolidayImpl>(this, _$identity);
      
//         @override
//         Map<String, dynamic> toJson() {
//           // TODO: implement toJson
//           throw UnimplementedError();
//         }
// }

// abstract class _Holiday implements Holiday {
//   const factory _Holiday(
//       {required final String date,
//       required final String name,
//       required final String observed,
//       required final String region}) = _$HolidayImpl;

//   @override
//   String get date;
//   @override
//   String get name;
//   @override
//   String get observed;
//   @override
//   String get region;
//   @override
//   @JsonKey(ignore: true)
//   _$$HolidayImplCopyWith<_$HolidayImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
