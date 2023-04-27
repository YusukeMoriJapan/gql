// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:end_to_end_test/fragments/__generated__/hero_inline_fragment.ast.gql.dart'
    as _i2;
import 'package:end_to_end_test/fragments/__generated__/hero_inline_fragment.var.gql.dart'
    as _i3;
import 'package:end_to_end_test/graphql/__generated__/serializers.gql.dart'
    as _i4;
import 'package:gql_exec/gql_exec.dart' as _i1;

part 'hero_inline_fragment.req.gql.g.dart';

abstract class GHeroWithInlineFragments
    implements
        Built<GHeroWithInlineFragments, GHeroWithInlineFragmentsBuilder> {
  GHeroWithInlineFragments._();

  factory GHeroWithInlineFragments(
          [Function(GHeroWithInlineFragmentsBuilder b) updates]) =
      _$GHeroWithInlineFragments;

  static void _initializeBuilder(GHeroWithInlineFragmentsBuilder b) => b
    ..operation = _i1.Operation(
      document: _i2.document,
      operationName: 'HeroWithInlineFragments',
    );
  _i3.GHeroWithInlineFragmentsVars get vars;
  _i1.Operation get operation;
  static Serializer<GHeroWithInlineFragments> get serializer =>
      _$gHeroWithInlineFragmentsSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GHeroWithInlineFragments.serializer,
        this,
      ) as Map<String, dynamic>);
  static GHeroWithInlineFragments? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GHeroWithInlineFragments.serializer,
        json,
      );
}
