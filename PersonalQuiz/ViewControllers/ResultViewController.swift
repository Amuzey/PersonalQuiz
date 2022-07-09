//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.07.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var questions: [Question]!
    var answers: [Answer]!
    
    
    
    var answersCollection = ["dog" : 0, "cat" : 0, "rabbit" : 0, "turtle" : 0]
    
    
    
    
    // 1. Передать массив с ответами на экран с результатами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соответствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for answer in answers {
            if answer.animal == .dog {
                answersCollection["dog"]! += 1
            } else if answer.animal == .cat {
                answersCollection["cat"]! += 1
            } else if answer.animal == .rabbit {
                answersCollection["rabbit"]! += 1
            } else if answer.animal == .turtle {
                answersCollection["turtle"]! += 1
            }
        }
        
        let answerSorted = answersCollection.sorted { $0.value > $1.value }
        if answerSorted.first?.key == "dog" {
            
        }
       
        
    }
    
    
    
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    deinit {
        print("ResultViewController has been deallocated")
    }
}
