//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.07.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var difinitionLabel: UILabel!
    var questions: [Question]!
    var answers: [Answer]!
    
    
    
    var responseСounter = [
        Animal.dog : 0,
        Animal.cat : 0,
        Animal.rabbit : 0,
        Animal.turtle : 0
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        for answer in answers {
            if answer.animal == .dog {
                responseСounter[Animal.dog]? += 1
            } else if answer.animal == .cat {
                responseСounter[Animal.cat]? += 1
            } else if answer.animal == .rabbit {
                responseСounter[Animal.rabbit]? += 1
            } else if answer.animal == .turtle {
                responseСounter[Animal.turtle]? += 1
            }
        }
        
        let answerSorted = responseСounter.sorted { $0.value > $1.value }
        
        if answerSorted.first?.key == Animal.dog {
            answerLabel.text = "Вы - \(Animal.dog.rawValue)"
            difinitionLabel.text = Animal.dog.definition
        } else if answerSorted.first?.key == Animal.cat {
            answerLabel.text = "Вы - \(Animal.cat.rawValue)"
            difinitionLabel.text = Animal.cat.definition
        } else if answerSorted.first?.key == Animal.rabbit {
            answerLabel.text = "Вы - \(Animal.rabbit.rawValue)"
            difinitionLabel.text = Animal.rabbit.definition
        } else if answerSorted.first?.key == Animal.turtle {
            answerLabel.text = "Вы - \(Animal.turtle.rawValue)"
            difinitionLabel.text = Animal.turtle.definition
            
        }
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}
