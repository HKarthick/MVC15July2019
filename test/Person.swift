import Foundation

struct Person: Decodable{
  let name: String?
  let occupation: String?
  let address: String?
  private(set) var test : String?
}
