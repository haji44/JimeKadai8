//
//  ViewModel.swift
//  Jimekadai8
//
//  Created by kitano hajime on 2022/03/28.
//

import Combine

final class ViewModel {
    static var sliderValue: Float?
    static func changedValue(_ value: Float) {
        ViewModel.sliderValue = value
    }
}
