//https://refactoring.guru/ru/design-patterns/factory-method
enum TransportType: String {
	case ship
	case car
	case airplane
}

protocol Transportable {
	var type: TransportType { get }
	func start()
	func finish()
}

class TransportCompany {
	func createTransportation(by type: TransportType) -> Transportable {
		switch type {
			case .airplane:
				return AirplaneTransport(distance: 3400.4)
			default:
				return Transport(by: type)
		}
	}
}

class Transport: Transportable {
	var type: TransportType
	
	init(by type: TransportType) {
		self.type = type
	}
	
	func start() {
		print("Strat \(type.rawValue) delivery")
	}
	
	func finish() {
		print("Finish \(type.rawValue) delivery")
	}
	
}


class AirplaneTransport: Transportable {
	private(set) var type: TransportType = .airplane
	private(set) var distance: Float
	
	init(distance: Float) {
		self.distance = distance
	}
	
	func start() {
		print("Strat Time")
	}
	
	func finish() {
		print("Finish Time")
	}
	
}

let company = TransportCompany()
let shipDelivery = company.createTransportation(by: .ship)
shipDelivery.start()
shipDelivery.finish()
