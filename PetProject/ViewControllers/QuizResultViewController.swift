//
//  QuizResultViewController.swift
//  PetProject
//
//  Created by Александр Захлыпа on 30.04.2023.
//

import UIKit

final class QuizResultViewController: UIViewController {
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var discriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        updateResult()
    }
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
extension QuizResultViewController  {
    private func updateResult() {
        var frequencyOfAnswer: [Diagnosis: Int] = [:]
        let diagnoses = answers.map { $0.diagnosis }
        
        for diagnosis in diagnoses {
            frequencyOfAnswer[diagnosis, default: 0] += 1
        }
        let sortedFrequentOfAnimals = frequencyOfAnswer.sorted { $0.value > $1.value }
        guard let mostFrequentAnswer = sortedFrequentOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequentAnswer)
    }
    private func updateUI(with diagnoses: Diagnosis) {
        infoLabel.text = "\(diagnoses.rawValue)"
        discriptionLabel.text = diagnoses.definition
    }
}
