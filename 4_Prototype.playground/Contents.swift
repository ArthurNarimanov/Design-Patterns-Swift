//More about the prototype
//https://refactoring.guru/ru/design-patterns/prototype
public protocol Copyable {
	init(_ parameters: Self)
}

extension Copyable {
	public func copy() -> Self {
		return type(of: self).init(self)
	}
}

//Standard implementation prototype
class User {
	
	var name: String
	
	init(name: String) {
		self.name = name
	}
	
	func clone() -> User {
		return User(name: self.name)
	}
}

// Prototype implementation from protocol
class UserCopyable: Copyable {
	
	var name: String
	
	init(name: String) {
		self.name = name
	}
	
	required convenience init(_ parameters: UserCopyable) {
		self.init(name: parameters.name)
	}
	
}
