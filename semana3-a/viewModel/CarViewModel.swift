import Foundation

class CarViewModel {
    
    public static var cars: [Auto] = [Auto]()
    
    static func getCars() -> [Auto] {
        return cars
    }
    
    static func storeCar(car: Auto) {
        cars.append(car)
    }
}
