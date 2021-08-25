/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the Todo type in your schema. */
@immutable
class Todo extends Model {
  static const classType = const _TodoModelType();
  final String id;
  final bool? _isComplete;
  final String? _description;
  final String? _name;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  bool get isComplete {
    try {
      return _isComplete!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String? get description {
    return _description;
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const Todo._internal(
      {required this.id, required isComplete, description, required name})
      : _isComplete = isComplete,
        _description = description,
        _name = name;

  factory Todo(
      {String? id,
      required bool isComplete,
      String? description,
      required String name}) {
    return Todo._internal(
        id: id == null ? UUID.getUUID() : id,
        isComplete: isComplete,
        description: description,
        name: name);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        id == other.id &&
        _isComplete == other._isComplete &&
        _description == other._description &&
        _name == other._name;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Todo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("isComplete=" +
        (_isComplete != null ? _isComplete!.toString() : "null") +
        ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("name=" + "$_name");
    buffer.write("}");

    return buffer.toString();
  }

  Todo copyWith(
      {String? id, bool? isComplete, String? description, String? name}) {
    return Todo(
        id: id ?? this.id,
        isComplete: isComplete ?? this.isComplete,
        description: description ?? this.description,
        name: name ?? this.name);
  }

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _isComplete = json['isComplete'],
        _description = json['description'],
        _name = json['name'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'isComplete': _isComplete,
        'description': _description,
        'name': _name
      };

  // ignore: non_constant_identifier_names
  static final QueryField ID = QueryField(fieldName: "todo.id");
  // ignore: non_constant_identifier_names
  static final QueryField ISCOMPLETE = QueryField(fieldName: "isComplete");
  // ignore: non_constant_identifier_names
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  // ignore: non_constant_identifier_names
  static final QueryField NAME = QueryField(fieldName: "name");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Todo";
    modelSchemaDefinition.pluralName = "Todos";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Todo.ISCOMPLETE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Todo.DESCRIPTION,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Todo.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _TodoModelType extends ModelType<Todo> {
  const _TodoModelType();

  @override
  Todo fromJson(Map<String, dynamic> jsonData) {
    return Todo.fromJson(jsonData);
  }
}
