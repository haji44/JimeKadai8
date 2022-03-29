//
//  ViewController.swift
//  Jimekadai8
//
//  Created by kitano hajime on 2022/03/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var resultLabel: UILabel!
    @IBOutlet weak private var slider: UISlider!

    private var minimumValue: Float = 0
    private var maximumValue: Float = 1

    private var valueRepository: ValueRepository!

    func setup(valueRepository: ValueRepository) {
        self.valueRepository = valueRepository
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = minimumValue
        slider.maximumValue = maximumValue
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = valueRepository.sliderValue ?? 0.5
        valueRepository.changedValue(slider.value)
        let currentValue = valueRepository.sliderValue ?? 0
        resultLabel.text = "\(String(describing: currentValue))"
    }

    @IBAction private func sliderChange(_ sender: UISlider) {
        let value = sender.value
        valueRepository.changedValue(value)
        let currentValue = valueRepository.sliderValue ?? 0
        resultLabel.text = "\(String(describing: currentValue))"
    }
}
