//
//  DetailsViewController.swift
//  FindMyGoat
//
//  Created by Paviya Tojaroon on 3/5/16.
//  Copyright © 2016 Cornell App Dev. All rights reserved.
//

import UIKit
import RealmSwift

class DetailsViewController: UIViewController {
    
    var goat: Goat!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameField.text = goat.name
        self.ageField.text = "\(goat.age)"

        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonClick(sender: UIButton) {
    }

    @IBAction func saveButtonClicked(sender: UIButton) {
        
        // let goat = Goat()
        
        
        let realm = try! Realm()
        try! realm.write { () -> Void in
            goat.name = nameField.text!
            goat.age = Int(ageField.text!)!
            
            realm.add(goat)
        }
        
        let nGoats = realm.objects(Goat).count
        print("We have \(nGoats) goats in the database")
        
        self.dismissViewControllerAnimated(true, completion: nil)

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Dismiss the keyboard on the screen
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.ageField.resignFirstResponder()
        self.nameField.resignFirstResponder()
    }

}
