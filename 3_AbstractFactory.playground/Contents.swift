//https://refactoring.guru/design-patterns/abstract-factory
// AbsctractFactory
import UIKit

//MARK: - Protocols
protocol ToyFactory {
	func getBear() -> ToyBear
	func getCar() -> ToyCar
	func getSoldier() -> ToySoldier
}

protocol Toy {
	var name: String { get }
}

protocol ToyBear: Toy {
	var color: UIColor { get }
}

protocol ToyCar: Toy {
	var speed: Float { get }
}

protocol ToySoldier: Toy {
	var withWeapon: Bool { get }
}

//MARK: - Soft toy
class SoftBear: ToyBear {
	var color: UIColor = .white
	var name: String = "Teddy"
}

class SoftCar: ToyCar {
	var speed: Float = 0.0
	var name: String = "Soft car"
}

class SoftSoldier: ToySoldier {
	var withWeapon: Bool = true
	var name: String = "Major Max"
}

//MARK: - Wood toy
class WoodBear: ToyBear {
	var color: UIColor = .brown
	var name: String = "Ben"
}

class WoodCar: ToyCar {
	var speed: Float = 0.0
	var name: String = "Wood car"
}

class WoodSoldier: ToySoldier {
	var withWeapon: Bool = false
	var name: String = "Major Payne"
}


//MARK: - Factory

class SoftToyFactory: ToyFactory {
	func getBear() -> ToyBear {
		return SoftBear()
	}
	
	func getCar() -> ToyCar {
		return SoftCar()
	}
	
	func getSoldier() -> ToySoldier {
		return SoftSoldier()
	}
	
	
}

class WoodToyFactory: ToyFactory {
	func getBear() -> ToyBear {
		return WoodBear()
	}
	
	func getCar() -> ToyCar {
		return WoodCar()
	}
	
	func getSoldier() -> ToySoldier {
		return WoodSoldier()
	}
	
}


let woodToyFactory = WoodToyFactory()
let softToyFactory = SoftToyFactory()

woodToyFactory.getCar()
softToyFactory.getCar()
softToyFactory.getSoldier()
softToyFactory.getBear()
