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
        slider.value = SliderModel.sliderValue ?? 0.5
        SliderModel.changedValue(slider.value)
        let currentValue = SliderModel.sliderValue ?? 0
        resultLabel.text = "\(String(describing: currentValue))"
    }

    @IBAction func sliderChange(_ sender: UISlider) {
        let value = sender.value
        SliderModel.changedValue(value)
        let currentValue = SliderModel.sliderValue ?? 0
        resultLabel.text = "\(String(describing: currentValue))"
    }
}

class SliderModel {
    static var sliderValue: Float?
    static func changedValue(_ value: Float) {
        SliderModel.sliderValue = value
    }
}
