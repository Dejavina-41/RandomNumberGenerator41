//
//  TenThousandViewModel.swift
//  RandomNumberGenerator41
//
//  Created by cmStudent on 2022/07/11.
//

import Combine

class TenThousandViewModel: ObservableObject {
    @Published var randomNumber = 1
    var subject = PassthroughSubject<Int, Never>()
    var cancellable: AnyCancellable?
    
    init() {
        cancellable = subject.sink { value in
            self.randomNumber = value
        }
    }
    
    func createNumber() {
        subject.send(Int.random(in: 1...10000))
    }
}
