import UIKit

class CarViewController: UIViewController {
    
    let carViewModel = CarViewModel()

    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var txtBrand: UITextField!
    @IBOutlet weak var txtModel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapCreateCar(_ sender: UIButton) {
        let brand = txtBrand.text!
        let model = txtModel.text!
        let price = txtPrice.text!
        
        if brand.isEmpty || model.isEmpty || price.isEmpty {
            Alerts.makeAlert(title: "Error", message: "Complete los campos", controller: self)
            return
        }
        
        CarViewModel.storeCar(car: Auto(brand: brand, model: model, price: Float(price)!))
        
        txtPrice.text = ""
        txtModel.text = ""
        txtBrand.text = ""
        
        Alerts.makeAlert(title: "Success", message: "Carro creado correctamente", controller: self)
    }
    
}
