import "package:built_collection/built_collection.dart";
import "package:code_builder/code_builder.dart";
import "package:gql/ast.dart";
import "package:gql_code_gen/src/common.dart";

Class buildOperationArgsClass(
  OperationDefinitionNode node,
) =>
    Class(
      (b) => b
        ..name = "${node.name.value}Args"
        ..extend = Reference("ArgumentBuilder", "package:gql/execution")
        ..methods = _buildSetters(node.variableDefinitions),
    );

ListBuilder<Method> _buildSetters(
  List<VariableDefinitionNode> nodes,
) =>
    ListBuilder<Method>(
      nodes.map<Method>(_buildSetter),
    );

Method _buildSetter(
  VariableDefinitionNode node,
) =>
    Method(
      (b) => b
        ..name = node.variable.name.value
        ..type = MethodType.setter
        ..requiredParameters = ListBuilder<Parameter>(<Parameter>[
          Parameter(
            (b) => b
              ..type = typeRef(node.type)
              ..name = "value",
          )
        ])
        ..lambda = true
        ..body = Code("set(\"${node.variable.name.value}\", value)"),
    );
