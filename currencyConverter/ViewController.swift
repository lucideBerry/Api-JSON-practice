//
//  ViewController.swift
//  currencyConverter
//
//  Created by Seçkin Denli on 18.02.2020.
//  Copyright © 2020 Seçkin Denli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    
    @IBOutlet weak var labelFive: UILabel!
    
    
    @IBOutlet weak var labelSix: UILabel!
    
    
    @IBOutlet weak var labelSeven: UILabel!
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
           let url = URL(string: "http://data.fixer.io/api/latest?access_key=b25f20578531310b44114e05c1ea1240&format=1")
           let session = URLSession.shared
           
               let task = session.dataTask(with: url!) { (data, response, error) in
                   if error != nil {
                       let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                  let okBut = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                       
                       alert.addAction(okBut)
                       self.present( alert , animated: true , completion: nil)
                       
                   }else{
                       if data != nil {
                           do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary <String, Any>
                           
                               DispatchQueue.main.async {
                                   if let rates = jsonResponse["rates"] as? [String : Any] {
                                       print(rates)
                                       if let cad = rates["CAD"] as? Double {
                                           if let  tl = rates ["TRY"] as? Double {
                                          if let  usd = rates ["USD"] as? Double
                                          {if let  eur = rates ["EUR"] as? Double
                                          {if let  jpy = rates ["JPY"] as? Double
                                          {if let  gbp = rates ["GBP"] as? Double
                                          {if let  chf = rates ["CHF"] as? Double
                                          
                                          {
                                                
                                               self.labelTwo.text = String("CAD : \(tl / cad)")
                                            self.labelOne.text = String("TRY : \(tl / tl)")
                                            self.labelThree.text = String("USD : \(tl / usd)")
                                            self.labelFour.text = String("EUR : \(tl / eur)")
                                            self.labelFive.text = String("JPY : \(tl / jpy)")
                                            self.labelSix.text = String("GBP : \(tl / gbp)")
                                            self.labelSeven.text = String("CHF : \(tl / chf)")
                                         }}}}}
                                           }
                                       }
                                   }
                               }
                           }catch{print("error")}
                           
                       }
                   }
               }
               task.resume()
    }

    
    @IBAction func tryButton(_ sender: Any) {
    
    
    let url = URL(string: "http://data.fixer.io/api/latest?access_key=b25f20578531310b44114e05c1ea1240&format=1")
    let session = URLSession.shared
    
        let task = session.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
           let okBut = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                
                alert.addAction(okBut)
                self.present( alert , animated: true , completion: nil)
                
            }else{
                if data != nil {
                    do {
                 let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary <String, Any>
                    
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String : Any] {
                                print(rates)
                                if let cad = rates["CAD"] as? Double {
                                    if let  tl = rates ["TRY"] as? Double {
                                   if let  usd = rates ["USD"] as? Double
                                   {if let  eur = rates ["EUR"] as? Double
                                   {if let  jpy = rates ["JPY"] as? Double
                                   {if let  gbp = rates ["GBP"] as? Double
                                   {if let  chf = rates ["CHF"] as? Double
                                   
                                   {
                                         
                                        self.labelTwo.text = String("CAD : \(tl / cad)")
                                     self.labelOne.text = String("TRY : \(tl / tl)")
                                     self.labelThree.text = String("USD : \(tl / usd)")
                                     self.labelFour.text = String("EUR : \(tl / eur)")
                                     self.labelFive.text = String("JPY : \(tl / jpy)")
                                     self.labelSix.text = String("GBP : \(tl / gbp)")
                                     self.labelSeven.text = String("CHF : \(tl / chf)")
                                  }}}}}
                                    }
                                }
                            }
                        }
                    }catch{print("error")}
                    
                }
            }
        }
        task.resume()
    }
    
    
    @IBAction func eurButton(_ sender: Any) {
        
           
           let url = URL(string: "http://data.fixer.io/api/latest?access_key=b25f20578531310b44114e05c1ea1240&format=1")
           let session = URLSession.shared
           
               let task = session.dataTask(with: url!) { (data, response, error) in
                   if error != nil {
                       let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                  let okBut = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                       
                       alert.addAction(okBut)
                       self.present( alert , animated: true , completion: nil)
                       
                   }else{
                       if data != nil {
                           do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary <String, Any>
                            
                               DispatchQueue.main.async {
                                   if let rates = jsonResponse["rates"] as? [String : Any] {
                                       print(rates)
                                       if let cad = rates["CAD"] as? Double {
                                           if let  tl = rates ["TRY"] as? Double {
                                          if let  usd = rates ["USD"] as? Double
                                          {if let  eur = rates ["EUR"] as? Double
                                          {if let  jpy = rates ["JPY"] as? Double
                                          {if let  gbp = rates ["GBP"] as? Double
                                          {if let  chf = rates ["CHF"] as? Double
                                          
                                          {
                                                
                                               self.labelTwo.text = String("CAD : \(eur / cad)")
                                            self.labelFour.text = String("TRY : \(eur / tl)")
                                            self.labelThree.text = String("USD : \(eur / usd)")
                                            self.labelOne.text = String("EUR : \(eur / eur)")
                                            self.labelFive.text = String("JPY : \(eur / jpy)")
                                            self.labelSix.text = String("GBP : \(eur / gbp)")
                                            self.labelSeven.text = String("CHF : \(eur / chf)")
                                         }}}}}
                                           }
                                       }
                                   }
                               }
                        
                           }catch{print("error")}
                           
                       }
                   }
               }
               task.resume()
    }
    
    
    @IBAction func usdButton(_ sender: Any) {
    
    
       
       let url = URL(string: "http://data.fixer.io/api/latest?access_key=b25f20578531310b44114e05c1ea1240&format=1")
       let session = URLSession.shared
       
           let task = session.dataTask(with: url!) { (data, response, error) in
               if error != nil {
                   let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
              let okBut = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                   
                   alert.addAction(okBut)
                   self.present( alert , animated: true , completion: nil)
                   
               }else{
                   if data != nil {
                       do {
                    let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary <String, Any>
                       
                           DispatchQueue.main.async {
                               if let rates = jsonResponse["rates"] as? [String : Any] {
                                   print(rates)
                                   if let cad = rates["CAD"] as? Double {
                                       if let  tl = rates ["TRY"] as? Double {
                                      if let  usd = rates ["USD"] as? Double
                                      {if let  eur = rates ["EUR"] as? Double
                                      {if let  jpy = rates ["JPY"] as? Double
                                      {if let  gbp = rates ["GBP"] as? Double
                                      {if let  chf = rates ["CHF"] as? Double
                                      
                                      {
                                            
                                           self.labelTwo.text = String("CAD : \(usd / cad)")
                                        self.labelThree.text = String("TRY : \(usd / tl)")
                                        self.labelOne.text = String("USD : \(usd / usd)")
                                        self.labelFour.text = String("EUR : \(usd / eur)")
                                        self.labelFive.text = String("JPY : \(usd / jpy)")
                                        self.labelSix.text = String("GBP : \(usd / gbp)")
                                        self.labelSeven.text = String("CHF : \(usd / chf)")
                                     }}}}}
                                       }
                                   }
                               }
                           }
                       }catch{print("error")}
                       
                   }
               }
           }
           task.resume()
    
    
    }
    
    
    
    
    
}


