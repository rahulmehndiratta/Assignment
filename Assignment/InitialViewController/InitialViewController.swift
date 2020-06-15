//
//  InitialViewController.swift
//  Assignment
//
//  Created by RahulMehndiratta on 14/06/20.
//  Copyright © 2020 RahulMehndiratta. All rights reserved.
//

import UIKit

enum ForcastType {
    case cities(list: String)
    case curentCity
}

class InitialViewController: UIViewController {
    
    @IBOutlet weak var notelabel: UILabel!
    @IBOutlet weak var currentcityButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var containerView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIElements()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        containerView.getShadow(radius: 10)
        searchButton.roundedBorders(radius: 10)
        currentcityButton.roundedCorner(cornerRadii: 10, corners: [.layerMinXMaxYCorner, .layerMaxXMaxYCorner])
    }
    
    private func setupUIElements() {
        setupNavigationBar()
        containerView.roundedBorders(radius: 10)
        searchButton.setTitleColor(UIColor.placeholderColor, for: .disabled)
        // initially disabled
        searchButton.isEnabled = false
    }
    
    
    private func setupNavigationBar() {
        title = Strings.WEATHER_REPORT
        navigationController?.navigationBar.barTintColor = UIColor.navBarColor
        navigationController?.navigationBar.backgroundColor = UIColor.navBarColor
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.titleFont]
    }
    
    //MARK: Action methods
    @IBAction func searchButtonTapped(_ sender: Any) {
        guard let cities = searchField.text?.trimmedText, !cities.isEmpty else { return }
        let viewController: WeatherForcastController = (storyboard!.instentiate())
        viewController.forecastType = .cities(list: cities)
        viewController.title = Strings.WEATHER_REPORT
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func currentCityButtonTapped(_ sender: Any) {
        let viewController: WeatherForcastController = (storyboard!.instentiate())
        viewController.forecastType = .curentCity
        viewController.title = Strings.WEATHER_REPORT
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension InitialViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // this conditional check is supposed to be in viewmodel or any associated model but i did it here cause this controller have no view model as it is not required here
        let text = (textField.text as NSString?)?.replacingCharacters(in: range, with: string).trimmedText ?? ""
        let count = text.components(separatedBy: ",").count
        let flag = count <= 7 && count >= 3
        searchButton.isEnabled = flag
        notelabel.textColor = flag ? UIColor.placeholderColor : UIColor.red
        return true
    }
}
