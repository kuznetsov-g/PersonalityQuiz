//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Alexey Efimov on 30.08.2021.
//

import UIKit

class ResultViewController: UIViewController {

    var answers: [Answer]!
    @IBOutlet weak var youAreLabel: UILabel!
    @IBOutlet weak var aboutYouLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        getResult()
        
    }
}

extension ResultViewController {
    func getResult() {
        var resultPet : Animal = .turtle
        var dogs = 0
        var cats = 0
        var rabbits = 0
        var turtles = 0
        var allPetsCount: [Int] = []
        
    for pet in answers {
        switch pet.animal {
        case .dog: dogs += 1
        case .cat: cats += 1
        case .rabbit: rabbits += 1
        case .turtle: turtles += 1
        }
    }
    //здесь можно было бы организовать вторую функцию, но как-то постеснялся я
    allPetsCount = [dogs, cats, rabbits, turtles]
        if dogs == allPetsCount.max() { resultPet = .dog }
        if cats == allPetsCount.max() { resultPet = .cat }
        if rabbits == allPetsCount.max() { resultPet = .rabbit }
        if turtles == allPetsCount.max() { resultPet = .turtle }
        youAreLabel.text = "Похоже вы \(resultPet.rawValue)"
        aboutYouLabel.text = resultPet.definition
        }
    }


//кажется, есть более оптимальный способ, и как будто он где-то рядом, буквально крутится на языке. Но пока он не пришел мне в голову.
// обычно оптимальные решения приходят с повторением работы)
