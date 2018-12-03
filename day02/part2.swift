import Foundation

func commonLetters(list: [String]) -> String {
  var setOfIds = Set(list)

  for firstId in setOfIds {
    setOfIds.remove(firstId)
    for secondId in setOfIds {
      let common = zip(firstId, secondId).filter { $0 != $1 }

      if common.count == 1 {
        return firstId.replacingOccurrences(of: String(common.first!.0), with: "")
      }
    }
  }

  return ""
}

var list = [String]()

while let id = readLine() {
  list.append(id)
}

print(commonLetters(list: list))
