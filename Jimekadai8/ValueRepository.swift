//
//  ValueRepository.swift
//  Jimekadai8
//
//  Created by kitano hajime on 2022/03/28.
//

import Combine

final class ValueRepository {
    private(set) var sliderValue: Float?

    func changedValue(_ value: Float) {
        sliderValue = value
    }
}
