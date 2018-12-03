import Foundation

func letterCount(id: String) -> [Character: Int] {
  var count: [Character: Int] = [:]

  for letter in Array(id) {
    if let c = count[letter] {
      count[letter] = c + 1
    } else {
      count[letter] = 1
    }
  }

  return count
}

func checksum(list: [String]) -> Int {
  var withLetterTwice = 0
  var withLetterThreeTimes = 0

  for id in list {
    let countSet = Set(letterCount(id: id).values)

    if countSet.contains(2) {
      withLetterTwice += 1
    }

    if countSet.contains(3) {
      withLetterThreeTimes += 1
    }
  }

  return withLetterTwice * withLetterThreeTimes
}

var list = [String]()

while let id = readLine() {
  list.append(id)
}

print(checksum(list: list))
