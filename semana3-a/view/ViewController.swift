import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CarViewModel.storeCar(
            car: Auto(brand: "Audi", model: "A4", price: 80000)
        )
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CarViewModel.cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let car = CarViewModel.cars[indexPath.row]
        
        var configurationCell = UIListContentConfiguration.cell()
        configurationCell.text = "\(car.brand) - \(car.model)"
        
        cell.contentConfiguration = configurationCell
        
        return cell
    }
}

