//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.07.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answers: [Answer] = []
    
    var dog = 0
    var cat = 0
    var rabbit = 0
    var turtle = 0
    
    
    
    // 1. Передать массив с ответами на экран с результатами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соответствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for answer in answers {
            if answer.animal == .dog {
                dog += 1
            } else if answer.animal == .cat {
                cat += 1
            } else if answer.animal == .rabbit {
                rabbit += 1
            } else if answer.animal == .turtle {
                turtle += 1
            }
        }
        
        let arrayAnsswers = [dog, cat, rabbit, turtle]
        let answerSorted = arrayAnsswers.sorted { $0 > $1 }
       
        
        print(dog, cat, rabbit, turtle)
        print(answerSorted)
    }
    
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    deinit {
        print("ResultViewController has been deallocated")
    }
}
