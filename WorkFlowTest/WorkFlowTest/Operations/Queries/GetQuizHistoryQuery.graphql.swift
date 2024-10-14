// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo

public extension History_PPI {
  class GetQuizHistoryQuery: GraphQLQuery {
    public static let operationName: String = "GetQuizHistory"
    public static let document: Apollo.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query GetQuizHistory($productGroupId: ID, $recipeTypes: [String], $status: Status) {
          history(
            productGroupId: $productGroupId
            recipeTypes: $recipeTypes
            status: $status
          ) {
            __typename
            id
            enrollmentId
            title
            recipeType
            isTimerMode
            isTutorMode
            isReviewed
            tags
            countQuestions
            completeDate
            startDate
            score {
              __typename
              total
              percentageCorrect
              scaledScore
              mastery
              correct
              incorrect
              unseen
              omitted
            }
            isComplete
            recipeName
          }
        }
        """#
      ))

    public var productGroupId: GraphQLNullable<ID>
    public var recipeTypes: GraphQLNullable<[String?]>
    public var status: GraphQLNullable<GraphQLEnum<Status>>

    public init(
      productGroupId: GraphQLNullable<ID>,
      recipeTypes: GraphQLNullable<[String?]>,
      status: GraphQLNullable<GraphQLEnum<Status>>
    ) {
      self.productGroupId = productGroupId
      self.recipeTypes = recipeTypes
      self.status = status
    }

    public var __variables: Variables? { [
      "productGroupId": productGroupId,
      "recipeTypes": recipeTypes,
      "status": status
    ] }

    public struct Data: History_PPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: Apollo.ParentType { History_PPI.Objects.Query }
      public static var __selections: [Apollo.Selection] { [
        .field("history", [History?]?.self, arguments: [
          "productGroupId": .variable("productGroupId"),
          "recipeTypes": .variable("recipeTypes"),
          "status": .variable("status")
        ]),
      ] }

      public var history: [History?]? { __data["history"] }

      /// History
      ///
      /// Parent Type: `History`
      public struct History: History_PPI.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: Apollo.ParentType { History_PPI.Objects.History }
        public static var __selections: [Apollo.Selection] { [
          .field("id", String?.self),
          .field("enrollmentId", String?.self),
          .field("title", String?.self),
          .field("recipeType", String?.self),
          .field("isTimerMode", Bool?.self),
          .field("isTutorMode", Bool?.self),
          .field("isReviewed", Bool?.self),
          .field("tags", [String?]?.self),
          .field("countQuestions", Int?.self),
          .field("completeDate", String?.self),
          .field("startDate", String?.self),
          .field("score", Score?.self),
          .field("isComplete", Bool?.self),
          .field("recipeName", String?.self),
        ] }

        public var id: String? { __data["id"] }
        public var enrollmentId: String? { __data["enrollmentId"] }
        public var title: String? { __data["title"] }
        public var recipeType: String? { __data["recipeType"] }
        public var isTimerMode: Bool? { __data["isTimerMode"] }
        public var isTutorMode: Bool? { __data["isTutorMode"] }
        /// isReviewed (and countPendingReview) is applicable only to completed sequences
        public var isReviewed: Bool? { __data["isReviewed"] }
        /// TBD: this may be changed to return topics/subtopics instead of tags
        ///
        /// Leaving tags for backwards-compatibility
        public var tags: [String?]? { __data["tags"] }
        /// number of questions in sequence;
        /// this may be differ between in_progress and completed sequences, especially for adaptive
        /// qbanks or those in_progress qbanks with passage-based questions
        public var countQuestions: Int? { __data["countQuestions"] }
        public var completeDate: String? { __data["completeDate"] }
        public var startDate: String? { __data["startDate"] }
        /// Non-points-based scoring fields
        public var score: Score? { __data["score"] }
        public var isComplete: Bool? { __data["isComplete"] }
        public var recipeName: String? { __data["recipeName"] }

        /// History.Score
        ///
        /// Parent Type: `Score`
        public struct Score: History_PPI.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: Apollo.ParentType { History_PPI.Objects.Score }
          public static var __selections: [Apollo.Selection] { [
            .field("total", Int?.self),
            .field("percentageCorrect", Double?.self),
            .field("scaledScore", Int?.self),
            .field("mastery", Bool?.self),
            .field("correct", Int?.self),
            .field("incorrect", Int?.self),
            .field("unseen", Int?.self),
            .field("omitted", Int?.self),
          ] }

          /// total = count of scorable items
          public var total: Int? { __data["total"] }
          public var percentageCorrect: Double? { __data["percentageCorrect"] }
          public var scaledScore: Int? { __data["scaledScore"] }
          public var mastery: Bool? { __data["mastery"] }
          public var correct: Int? { __data["correct"] }
          public var incorrect: Int? { __data["incorrect"] }
          public var unseen: Int? { __data["unseen"] }
          public var omitted: Int? { __data["omitted"] }
        }
      }
    }
  }

}
