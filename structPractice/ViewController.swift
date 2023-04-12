//
//  ViewController.swift
//  structPractice
//
//  Created by Apple on 01/12/22.
//

import UIKit
struct Student {
    let name:String
    let marks:Int
    let rollNo:Int
    
}
class ViewController: UIViewController {
    
    var studentList:[Student] = []
    @IBOutlet weak var nameUITextField: UITextField!
    @IBOutlet weak var marksUITextField: UITextField!
    @IBOutlet weak var rollNoUITextField: UITextField!
    @IBOutlet weak var outputUILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearButtonAction(_ sender: Any) {
        nameUITextField.text = ""
        marksUITextField.text = ""
        rollNoUITextField.text = ""
    }
    @IBAction func saveButtonAction(_ sender: Any) {
        let name1 = nameUITextField.text ?? ""
        let marks1 = marksUITextField.text ?? ""
        let marksInt = Int(marks1) ?? 0
        let rollnum = rollNoUITextField.text ?? ""
        let rollnumInt = Int(rollnum) ?? 0
        outputUILabel.text = "\(name1), \(marks1), \(rollnum)"
        
        let object = Student(name: name1 , marks: marksInt , rollNo: rollnumInt)
        studentList.append(object)
    }
    @IBAction func listButtonAction(_ sender: Any) {
        
        for studentObj in studentList {
            print("\(studentObj.rollNo) \(studentObj.name) \(studentObj.marks)")
            
        }
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
        
        for studentsearch in studentList {
            if studentsearch.name == String(nameUITextField.text!) {
                print("\(studentsearch.rollNo) \(studentsearch.name) \(studentsearch.marks)")
                outputUILabel.text = "\(studentsearch.rollNo) \(studentsearch.name) \(studentsearch.marks)"
                
            }
        }
        /*for studentsearch in studentList {
         if studentsearch.marks == Int(marksUITextField.text!)! {
         print("\(studentsearch.rollNo) \(studentsearch.name) \(studentsearch.marks)")
         outputUILabel.text = "\(studentsearch.rollNo) \(studentsearch.name) \(studentsearch.marks)"
         
         }
         }*/
    }
    
}
