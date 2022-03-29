//
//  TabViewController.swift
//  Jimekadai8
//
//  Created by kitano hajime on 2022/03/28.
//

import UIKit

class TabViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = setupTabbarVC()
        UITabBar.appearance().backgroundColor = UIColor.systemGray2
    }

    private func setupTabbarVC() -> [UIViewController] {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc1 = storyBoard.instantiateViewController(withIdentifier: "Slider") as? ViewController,
              let vc2 = storyBoard.instantiateViewController(withIdentifier: "Slider") as? ViewController else {
            fatalError("ViewController not found.")
        }

        vc1.tabBarItem.title = "Slider1"
        vc1.view.backgroundColor = UIColor.systemGreen

        vc2.tabBarItem.title = "Slider2"
        vc2.view.backgroundColor = UIColor.systemPink

        let valueRepository = ValueRepository()
        vc1.setup(valueRepository: valueRepository)
        vc2.setup(valueRepository: valueRepository)

        return [vc1, vc2]
    }
}
