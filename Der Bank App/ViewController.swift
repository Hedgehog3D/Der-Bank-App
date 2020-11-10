//
//  ViewController.swift
//  Der Bank App
//
//  Created by Greg3D on 09/11/2020.
//  Copyright © 2020 Greg3D. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var value_Label: UILabel!
//    @IBOutlet weak var value_Label: UILabel = 0;
    // Псевдокомментарии - для сортировки в отображении в выпадающем списке
    // MARK: - Outlets
    @IBOutlet weak var value_Label: UILabel?
    @IBOutlet weak var pv_TextField: UITextField?
    @IBOutlet weak var nper_TextField: UITextField?
    @IBOutlet weak var rate_TextField: UITextField?
    
    // MARK: - Properties
    var value = 1000.00 {
        // добавление наблюдателя
        didSet{
            updateValue()
        }
    }
    
    // MARK: - Methods
    func updateValue(){
        // используем форматер, для вывода текста в формате
        // let - константа
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        // если не ставить, то валюта отображается через Локаль
        formatter.currencySymbol = "Р"
   
        //value_Label?.text = "Баланс: \(value)"
        // промежуточная константа
        let number = NSNumber(value: value)
        value_Label?.text = formatter.string(from: number)
    }
    
//    var value: Int!
//    var value: Int?
//    var value: Int
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // В случае ошибки, эта строка не выполнится. Если использовать ! - будет ошибка РанТайм ... ? используется для элементов, которые НЕ отображаются на экране
//        value_Label?.text = "Der text";
//        value_Label?.text = String(value)
        // интерполяция ... можно использовать выражения
        //value_Label?.text = "Баланс: \(value)"
        updateValue()
        value += 1
    }

    @IBAction func textFieldEditingChange(_ sender: UITextField) {
        //print(sender.text ?? <#default value#>)
        print(sender.text ?? "nil")
    }
    
    
}

