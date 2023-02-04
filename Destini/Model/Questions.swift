//
//  Questions.swift
//  Destini
//
//  Created by Meddor on 27.01.2023.
//

import Foundation

struct StoryBrain {
    
    let example = [Quetions(story: "Вы видите развилку на дороге.", one: "Поверните налево.", two: "Поверните направо."),
                   Quetions(story: "Ты увидел тигра", one: "Кричать о помощи,", two: "Притвориться мертвым"),
                   Quetions(story: "Ты нашел сундук с сокровищами", one: "Открыть его", two: "Проверить на ловушки"),
                   Quetions(story: "Ты кричал, тигр тебя услышал и сожрал", one: "Спасибо", two: "Лучшая игра в моей жизни!"),
                   Quetions(story: "Ты умер от взрыва сундука", one: "Спасибо", two: "Лучшая игра в моей жизни!")
                   ]
    var quationNumber = 1
    var correctQuation = 0
}
