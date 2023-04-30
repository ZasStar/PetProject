//
//  Question.swift
//  PetProject
//
//  Created by Александр Захлыпа on 29.04.2023.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "Какой возраст у вашего питомца?",
                type: .single,
                answers: [
                    Answer(title: "1 - 3 года", diagnosis: .okey),
                    Answer(title: "4 - 5 лет", diagnosis: .notBad),
                    Answer(title: "6 - 9 лет", diagnosis: .warning),
                    Answer(title: "старше 10 лет", diagnosis: .petDied)
                ]
            ),
            Question(
                title: "Какой рацион у вашего питомца?",
                type: .multiple,
                answers: [
                    Answer(title: "Влажный корм", diagnosis: .okey),
                    Answer(title: "Молочные продукты", diagnosis: .notBad),
                    Answer(title: "Крупы, сухой корм", diagnosis: .warning),
                    Answer(title: "Овощи, фрукты", diagnosis: .petDied)
                ]
            ),
            Question(
                title: "Насколько активен ваш питомец в данный момент?",
                type: .ranged,
                answers: [
                    Answer(title: "Не активен", diagnosis: .petDied),
                    Answer(title: "Активность ниже средней", diagnosis: .notBad),
                    Answer(title: "Активность в средняя", diagnosis: .okey),
                    Answer(title: "Гипер активен", diagnosis: .warning)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let diagnosis: Diagnosis
}

enum Diagnosis: Character {
    case okey = "🐸"
    case notBad = "🐵"
    case warning = "🏥"
    case petDied = "🚑"
    
  var definition: String {
      switch self {

      case .okey:
          return "Не волнуйтесь, ваш питомец в полном порядке"
      case .notBad:
          return "Вашему питомцу нужны любовь и ласка, добавьте их в рацион"
      case .warning:
          return "Возможно вашему питомцу нужна помощь специалиста, посетите клинику в ближайшее время"
      case .petDied:
          return "Вашему питомцу срочно нужна помощь доктора! Мы выезжаем!"
      }
   }
}
