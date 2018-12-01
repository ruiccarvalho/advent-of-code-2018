import Foundation

func finalFrequency(frequencyDeltas: [Int]) -> Int {
  var currentFrequency = 0
  
  for delta in frequencyDeltas {
    currentFrequency += delta
  }
  
  return currentFrequency
}

var frequencyDeltas = [Int]()

while let frequencyDelta = readLine() {
  frequencyDeltas.append(Int(frequencyDelta)!)
}

print(finalFrequency(frequencyDeltas: frequencyDeltas))
