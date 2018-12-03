import Foundation

func firstDuplicateFrequency(frequencyDeltas: [Int]) -> Int {
  var currentFrequency = 0
  var pastFrequencies: Set = [currentFrequency]

  while true {
    for delta in frequencyDeltas {
      currentFrequency += delta
      if pastFrequencies.contains(currentFrequency) {
        return currentFrequency
      } else {
        pastFrequencies.insert(currentFrequency)
      }
    }
  }
}

var frequencyDeltas = [Int]()

while let frequencyDelta = readLine() {
  frequencyDeltas.append(Int(frequencyDelta)!)
}

print(firstDuplicateFrequency(frequencyDeltas: frequencyDeltas))
