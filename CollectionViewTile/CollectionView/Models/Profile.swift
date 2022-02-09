import Foundation

struct Profile {
    let name: String
    let location: String
    let imageName: String
    let profession: String
}

extension Profile {
  static let dummyData = [
    Profile(name: "Thor", location: "Boston", imageName: "astronomy", profession: "astronomy"),
    Profile(name: "Mike", location: "Albequerque", imageName: "basketball", profession: "basketball"),
    Profile(name: "Walter White", location: "New Mexico", imageName: "chemistry", profession: "chemistry"),
    Profile(name: "Sam Brothers", location: "California", imageName: "geography", profession: "geography"),
    Profile(name: "Chopin", location: "Norway", imageName: "geometry", profession: "geometry"),
    Profile(name: "Castles", location: "UK", imageName: "history", profession: "history"),
    Profile(name: "Dr. Johnson", location: "Australia", imageName: "microscope", profession: "microscope"),
    Profile(name: "Tom Hanks", location: "Bel Air", imageName: "theater", profession: "theater"),
    Profile(name: "Roger Federer", location: "Switzerland", imageName: "trophy", profession: "trophy"),
    Profile(name: "Elon Musk", location: "San Francisco", imageName: "graduate", profession: "graduate")
  ]
}
