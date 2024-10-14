// @generated
// This file was automatically generated and should not be edited.

import Apollo

public protocol WorkFlowTest_SelectionSet: Apollo.SelectionSet & Apollo.RootSelectionSet
where Schema == WorkFlowTest.SchemaMetadata {}

public protocol WorkFlowTest_InlineFragment: Apollo.SelectionSet & Apollo.InlineFragment
where Schema == WorkFlowTest.SchemaMetadata {}

public protocol WorkFlowTest_MutableSelectionSet: Apollo.MutableRootSelectionSet
where Schema == WorkFlowTest.SchemaMetadata {}

public protocol WorkFlowTest_MutableInlineFragment: Apollo.MutableSelectionSet & Apollo.InlineFragment
where Schema == WorkFlowTest.SchemaMetadata {}

public extension WorkFlowTest {
  typealias ID = String

  typealias SelectionSet = WorkFlowTest_SelectionSet

  typealias InlineFragment = WorkFlowTest_InlineFragment

  typealias MutableSelectionSet = WorkFlowTest_MutableSelectionSet

  typealias MutableInlineFragment = WorkFlowTest_MutableInlineFragment

  enum SchemaMetadata: Apollo.SchemaMetadata {
    public static let configuration: Apollo.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return WorkFlowTest.Objects.Query
      case "History": return WorkFlowTest.Objects.History
      case "Score": return WorkFlowTest.Objects.Score
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}