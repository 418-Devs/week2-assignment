//
//  Challenge3.swift
//  Week2Assignment
//
//  Created by 이태윤 on 6/5/25.
//

class Challenge3 {
    var figures: [Introducible] = []
    
    var robot = Robot()
    var cat = Cat()
    var dog = Dog()
        
    init() {
        figures.append(robot)
        figures.append(cat)
        figures.append(dog)
    }
}


extension Introducible {
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
}
