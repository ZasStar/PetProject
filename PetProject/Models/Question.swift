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

enum Diagnosis {
    case okey
    case notBad
    case warning
    case petDied
    
//    var definition: String {
//        switch self {
//            
//        case .okey:
//            <#code#>
//        case .notBad:
//            <#code#>
//        case .warning:
//            <#code#>
//        case .petDied:
//            <#code#>
//        }
    }
//}
