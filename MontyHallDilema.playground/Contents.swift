import Foundation

var stayWins = 0
var switchWins = 0
let attempts = 25000
let choices = 3

for _ in 0 ..< attempts {
    let correctIdx = Int.random(in: 0 ..< choices)
    let selectionIdx = Int.random(in: 0 ..< choices)
    var hostIdxs = Array(0 ..< choices)
    hostIdxs.remove(at: selectionIdx)
    hostIdxs.remove(at: max(correctIdx - 1, 0))
    let switchIdx = correctIdx != selectionIdx ? correctIdx : correctIdx - 1
    stayWins += selectionIdx == correctIdx ? 1 : 0
    switchWins += switchIdx == correctIdx ? 1 : 0
}

Double(stayWins) / Double(attempts)
Double(switchWins) / Double(attempts)
