//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Lex Koby on 03.08.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var paletteView: UIView!

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paletteView.layer.cornerRadius = 20
        
        paletteView.backgroundColor = UIColor( // здесь Xcode пытался помочь, но что-то предлагаемый им код не полетел 🤷‍♂️
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1 // этот параметр я хотел задать только в Storyboard, но его предложил Xcode и я его решил оставить тут в коде
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func redSliderAction() {
        paletteView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    // тут я заподозрил повторение кода и задумался, что можно это как-то сократить, но так и не понял как 🤷‍♂️
     @IBAction func greenSliderAction() {
        paletteView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
         
         redLabel.text = String(format: "%.2f", redSlider.value)
         greenLabel.text = String(format: "%.2f", greenSlider.value)
         blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        paletteView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

