//
//  SliderController.swift
//  mudandoTela
//
//  Created by COTEMIG on 02/06/25.
//

import UIKit

class SliderController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    
    var clicado:Bool = false;
    var timer:Timer?
    @IBAction func clicado(_ sender: Any) {
        
        clicado = !clicado
        self.slider.value = 0.0;
        var contador:Float = 0.0
        if(self.clicado == false){
            timer?.invalidate()
            return
        }
    
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){timer in
            
            
            
            if contador > 1{
                timer.invalidate()
            }
            
            contador += 0.1
            self.slider.value = contador
            
        }
    }
 
    override func viewDidAppear(_ animated:Bool) {
//        super.viewDidAppear(animated)
//
//        self.slider.value = 0.0;
//        var contador:Float = 10.0
//
//        let _timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){timer in
//
//            if contador == 0.0{
//                timer.invalidate()
//            }
//
//            let value = 1 - contador*0.1;
//            self.slider.value = value
//            contador -= 1
//
//        }
    }
}
