 // Created on: Oct 2018
 // Created by: Adam.G
 // Created for: ICS3U
 // This program calculates your age 
 
 // this will be commented out when code moved to Xcode
 import PlaygroundSupport
 
 import UIKit
 
 
 class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let wageTextField = UITextField()
    let monTextField = UITextField()
    let tueTextField = UITextField()
    let wedTextField = UITextField()
    let thusTextField = UITextField()
    let friTextField = UITextField()
    let satTextField = UITextField()
    let sunTextField = UITextField()
    let checkButton = UIButton()
    let weeklyWage = UILabel()
    let monthlyWage = UILabel()
    let yearlyWage = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
            //instructions
        instructionLabel.text = "Enter the instructions required in the text fields to calculate your wage."
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
            // ////////////////   Text Field ///////////////////////////////////////////
        wageTextField.borderStyle = UITextField.BorderStyle.roundedRect
        wageTextField.placeholder = "What is your hourly wage? "
        view.addSubview(wageTextField)
        wageTextField.translatesAutoresizingMaskIntoConstraints = false
        wageTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        wageTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        monTextField.borderStyle = UITextField.BorderStyle.roundedRect
        monTextField.placeholder = "Work hours in monday."
        view.addSubview(monTextField)
        monTextField.translatesAutoresizingMaskIntoConstraints = false
        monTextField.topAnchor.constraint(equalTo: wageTextField.bottomAnchor, constant: 20).isActive = true
        monTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        tueTextField.borderStyle = UITextField.BorderStyle.roundedRect
        tueTextField.placeholder = "Work hours in Tuesday. "
        view.addSubview(tueTextField)
        tueTextField.translatesAutoresizingMaskIntoConstraints = false
        tueTextField.topAnchor.constraint(equalTo: monTextField.bottomAnchor, constant: 20).isActive = true
        tueTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        wedTextField.borderStyle = UITextField.BorderStyle.roundedRect
        wedTextField.placeholder = "Work hours in Wednesday. "
        view.addSubview(wedTextField)
        wedTextField.translatesAutoresizingMaskIntoConstraints = false
        wedTextField.topAnchor.constraint(equalTo: tueTextField.bottomAnchor, constant: 20).isActive = true
        wedTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        thusTextField.borderStyle = UITextField.BorderStyle.roundedRect
        thusTextField.placeholder = "Work hours in Thursday. "
        view.addSubview(thusTextField)
        thusTextField.translatesAutoresizingMaskIntoConstraints = false
        thusTextField.topAnchor.constraint(equalTo: wedTextField.bottomAnchor, constant: 20).isActive = true
        thusTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        friTextField.borderStyle = UITextField.BorderStyle.roundedRect
        friTextField.placeholder = "Work hours in Friday."
        view.addSubview(friTextField)
        friTextField.translatesAutoresizingMaskIntoConstraints = false
        friTextField.topAnchor.constraint(equalTo: thusTextField.bottomAnchor, constant: 20).isActive = true
        friTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        satTextField.borderStyle = UITextField.BorderStyle.roundedRect
        satTextField.placeholder = "Work hours in Saturday."
        view.addSubview(satTextField)
        satTextField.translatesAutoresizingMaskIntoConstraints = false
        satTextField.topAnchor.constraint(equalTo: friTextField.bottomAnchor, constant: 20).isActive = true
        satTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        sunTextField.borderStyle = UITextField.BorderStyle.roundedRect
        sunTextField.placeholder = "Work hours in Sunday."
        view.addSubview(sunTextField)
        sunTextField.translatesAutoresizingMaskIntoConstraints = false
        sunTextField.topAnchor.constraint(equalTo: satTextField.bottomAnchor, constant: 20).isActive = true
        sunTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
            //  /////////////////////////////////////////////////////////////////////
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(calculateFactorial), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 350).isActive = true
        
        monthlyWage.text = nil
        view.addSubview(monthlyWage)
        monthlyWage.translatesAutoresizingMaskIntoConstraints = false
        monthlyWage.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 40).isActive = true
        monthlyWage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 350).isActive = true
        
        weeklyWage.text = nil
        view.addSubview(weeklyWage)
        weeklyWage.translatesAutoresizingMaskIntoConstraints = false
        weeklyWage.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        weeklyWage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 350).isActive = true
        
        yearlyWage.text = nil
        view.addSubview(yearlyWage)
        yearlyWage.translatesAutoresizingMaskIntoConstraints = false
        yearlyWage.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 60).isActive = true
        yearlyWage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 350).isActive = true
        
    }
    
    @objc func calculateFactorial() {
        
        var monthWage : Int = 0
        var yearWage : Int = 0
        
        var wageEntered : Int = Int(wageTextField.text!)!
        var wage = wageEntered
        
        var monEntered : Int = Int(monTextField.text!)!
        var mon : Int = monEntered
        
        var tueEntered : Int = Int(tueTextField.text!)!
        var tue : Int = tueEntered
        
        var wedEntered : Int = Int(wedTextField.text!)!
        var wed : Int = wedEntered
        
        var thusEntered : Int = Int(thusTextField.text!)!
        var thus : Int = thusEntered
        
        var friEntered : Int = Int(friTextField.text!)!
        var fri : Int = friEntered
        
        var satEntered : Int = Int(satTextField.text!)!
        var sat : Int = satEntered
        
        var sunEntered : Int = Int(sunTextField.text!)!
        var sun : Int = sunEntered
        
        var totalHours = mon + tue + wed + thus + fri + sat + sun 
        var weekWage = totalHours * wage
        
        if wageEntered == nil || monEntered == nil || tueEntered == nil || wedEntered == nil || thusEntered == nil || friEntered == nil || satEntered == nil || sunEntered == nil {
            monthlyWage.text = "Invalid"
            weeklyWage.text = "Input"
            yearlyWage.text = "Check if you left anything bank"
        }
        
        if mon > 24 || tue > 24 || wed > 24 || thus > 24 || fri > 24 || sat > 24 || sun > 24 {
            
            monthlyWage.text = "you put "
            weeklyWage.text = "more than 24 hours in one of the days"
            yearlyWage.text = "that is not realistic"
            
        }
        
        
        for i in 1 ... 4 {
            monthWage = monthWage + weekWage
        }

        for i in 1 ... 12 {
            yearWage = yearWage + monthWage
        }

        weeklyWage.text = "your weekly wage is \(weekWage)"
        monthlyWage.text = "your monthly wage is \(monthWage)"
        yearlyWage.text = "your yearly wage is \(yearWage)"
        
    }
 
    override var prefersStatusBarHidden: Bool {
        return true
 }
 
 }
 
 // this will be commented out when code moved to Xcode
 PlaygroundPage.current.liveView = ViewController()

