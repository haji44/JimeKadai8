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

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = minimumValue
        slider.maximumValue = maximumValue
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = ViewModel.sliderValue ?? 0.5
        ViewModel.changedValue(slider.value)
        let currentValue = ViewModel.sliderValue ?? 0
        resultLabel.text = "\(String(describing: currentValue))"
    }

    @IBAction private func sliderChange(_ sender: UISlider) {
        let value = sender.value
        ViewModel.changedValue(value)
        let currentValue = ViewModel.sliderValue ?? 0
        resultLabel.text = "\(String(describing: currentValue))"
    }
}
