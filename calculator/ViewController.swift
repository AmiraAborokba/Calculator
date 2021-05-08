//
//  ViewController.swift
//  calculator
//
//  Created by Amira on 9/28/20.
//  Copyright © 2020 Amira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var Fristnumber : Float?
    
    var operation : Int!
    
    @IBOutlet var calcbtns: [UIButton]!
        {
    
        didSet {
        
            
            
            for btn in calcbtns {
                btn.layer.cornerRadius = btn.frame.height/2
            
                               }
        
             }
    
      }
    
    
    @IBOutlet weak var lblresult: UILabel!
    
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func gobtnpressed(_ sender: UIButton) {
       
        
        let num = sender.tag
      
        
        switch num {
      
            
        case 0...9:
            removezero()
            lblresult.text =  lblresult.text!  + "\(num)"
           
            
        case 10 :
            
         
            if lblresult.text!.contains((".")) {
                
           
          
            break;
                                               }
            lblresult.text = lblresult.text! + "."
     
             case 17:
                 
                       if lblresult.text!.contains("-"){
                   
                           lblresult.text!.removeFirst()
                   
                           lblresult.text = "\(lblresult.text!)"
                  
                       
                                                       }
                       else{
                     
                       
                            
                      
                               lblresult.text = "-\(lblresult.text!)"
                      
                           
                   
                       }
                   
                       case 18 :
                         
            clearresult()
            
        case 12...16:
            
                 Fristnumber = Float(lblresult.text!)
            
                 operation = num
               
               clearresult()
            
        case 11:
         
            guard let Fn = Fristnumber else {return}
          
            
        
            getresult(Fn:Fn,Sn: Float (lblresult.text!)!,operation: operation)
            
      
        
        
            default:
      
                    break;
    
        }
    }
        
        //MARK: - IBACTION
        
        //MARK: - HELPER FUNCTIONS
        
     
        func clearresult(){
            
            
          
            lblresult.text = "0"
       
        }
      
        func removezero()
        {
       
        
            if lblresult.text == "0"
        
            {
         
                lblresult.text = ""
          
            }
       
        }
        
      
        func getresult(Fn:Float,Sn:Float,operation:Int)
        {
           
            
            switch operation
            {
           
            
            case 12:
                
             
                lblresult.text = "\(Fn + Sn )"
                
           
            
            case 13:
             
                lblresult.text = "\(Fn - Sn )"
                
          
            
            case 14:
              
                lblresult.text = "\(Fn*Sn)"
                
           
            
            case 15:
              
                lblresult.text = "\(Fn/Sn)"
                
          
            
            case 16:
                
              
          
                lblresult.text = "\(Int(Fn) % Int(Sn))"
                
          
            default:
           
                break;
          
            }
      
        }
        
    }
    

