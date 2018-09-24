//
//  Box.swift
//  MVVM
//
//  Created by Konstantin on 24/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

//класс дженерик
class Box<T> {
    
    //принимает значение Т и выполняет какой-то блок
    typealias Listener = (T) -> ()
    
    //наблюдатель - безымянная функция
    var listener: Listener?
    
    //свойство за которым будем наблюдать
    var value: T {
        didSet {
            //как только меняется значение - передаем его наблюдателю
            listener?(value)
        }
    }
    
    //для связи свойства с наблюдателем
    func bind(listener: @escaping Listener) {
        self.listener = listener
        //как только связали передаем значение наблюдателю
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
    
}
