// Project 1
// Soccer League Coordinator

// Dictionary of players

let leaguePlayers: [[String: Any]] = [
    [   "name": "Joe Smith",
        "height": 42.0,
        "hasSoccerExperience": true,
        "guardianNames": "Jim and Jan Smith"
    ],
    [   "name": "Jill Tanner",
        "height": 36.0,
        "hasSoccerExperience": true,
        "guardianNames": "Clara Tanner"
    ],
    [   "name": "Bill Bon",
        "height": 43.0,
        "hasSoccerExperience": true,
        "guardianNames": "Sara and Jenny Bon"
    ],
    [   "name": "Eva Gordon",
        "height": 45.0,
        "hasSoccerExperience": false,
        "guardianNames": "Wendy and Mike Gordon"
    ],
    [   "name": "Matt Gill",
        "height": 40.0,
        "hasSoccerExperience": false,
        "guardianNames": "Charles and Sylvia Gill"
    ],
    [   "name": "Kimmy Stein",
        "height": 41.0,
        "hasSoccerExperience": false,
        "guardianNames": "Bill and Hillary Stein"
    ],
    [   "name": "Sammy Adams",
        "height": 45.0,
        "hasSoccerExperience": false,
        "guardianNames": "Jeff Adams"
    ],
    [   "name": "Karl Saygan",
        "height": 42.0,
        "hasSoccerExperience": true,
        "guardianNames": "Heather Bledsoe"
    ],
    [   "name": "Suzane Greenberg",
        "height": 44.0,
        "hasSoccerExperience": true,
        "guardianNames": "Henrietta Dumas"
    ],
    [   "name": "Sal Dali",
        "height": 41.0,
        "hasSoccerExperience": false,
        "guardianNames": "Gala Dali"
    ],
    [   "name": "Joe Kavalier",
        "height": 39.0,
        "hasSoccerExperience": false,
        "guardianNames": "Sam and Elaine Kavalier"
    ],
    [   "name": "Ben Finkelstein",
        "height": 44.0,
        "hasSoccerExperience": false,
        "guardianNames": "Aaron and Jill Finkelstein"
    ],
    [   "name": "Diego Soto",
        "height": 41.0,
        "hasSoccerExperience": true,
        "guardianNames": "Robin and Sarika Soto"
    ],
    [   "name": "Chloe Alaska",
        "height": 47.0,
        "hasSoccerExperience": false,
        "guardianNames": "David and Jamie Alaska"
    ],
    [   "name": "Arnold Willis",
        "height": 43.0,
        "hasSoccerExperience": false,
        "guardianNames": "Claire Willis"
    ],
    [   "name": "Phillip Helm",
        "height": 44.0,
        "hasSoccerExperience": true,
        "guardianNames": "Thomas Helm and Eva Jones"
    ],
    [   "name": "Les Clay",
        "height": 42.0,
        "hasSoccerExperience": true,
        "guardianNames": "Wynonna Brown"
    ],
    [   "name": "Herschel Krustofski",
        "height": 45.0,
        "hasSoccerExperience": true,
        "guardianNames": "Hyman and Rachel Krustofski"
    ],
]

// Creating teams for sorting

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

// Sorting by experience and height

func sortPlayers(_ league: [[String: Any]]) {
    
    // Create two collections based on experience
    var experiencedPlayers: [[String: Any]] = []
    var inexperiencedPlayers: [[String: Any]] = []
    
    // Divide the players in experienced and inexperienced
    for player in league {
        if let hasSoccerExperience = player["hasSoccerExperience"] as? Bool {
            if hasSoccerExperience {
                experiencedPlayers.append(player)
            } else {
                inexperiencedPlayers.append(player)
            }
        }
    }
    
    // Sort players by height
    experiencedPlayers.sort { ($0["height"] as! Double) < ($1["height"] as! Double) }
    inexperiencedPlayers.sort { ($0["height"] as! Double) > ($1["height"] as! Double) }
    
    // Sort players in 3 teams
    
    // Iterate through experiencedPlayers
    for player in experiencedPlayers {
        if teamDragons.count < teamSharks.count {
            teamDragons.append(player)
        } else if teamRaptors.count < teamDragons.count {
            teamRaptors.append(player)
        } else {
            teamSharks.append(player)
        }
    }
    
    // Iterate through inexperiencedPlayers
    for player in inexperiencedPlayers {
        if teamDragons.count < teamSharks.count {
            teamDragons.append(player)
        } else if teamRaptors.count < teamDragons.count {
            teamRaptors.append(player)
        } else {
            teamSharks.append(player)
        }
    }
}

// Generate Guardians Letters

var letters: [String] = []

let practiceDateDragons = "March 17, 1pm"
let practiceDateSharks = "March 17, 3pm"
let practiceDateRaptors = "March 18, 1pm"

func generateGuardiansLetters() {
    // Generate letter for team Sharks
    for player in teamSharks {
        if let name = player["name"] as? String, let guardianNames = player["guardianNames"] as? String {
            let letter = ("""
                Dear \(guardianNames),
                \(name) has been placed on team Sharks.
                The first team practice will be at the soccer stadium on \(practiceDateSharks).
                Thanks,
                The soccer league coordinator
                """)
            letters.append(letter)
        }
    }
    // Generate letter for team Dragons
    for player in teamDragons {
        if let name = player["name"] as? String, let guardianNames = player["guardianNames"] as? String {
            let letter = ("""
                Dear \(guardianNames),
                \(name) has been placed on team Dragons.
                The first team practice will be at the soccer stadium on \(practiceDateDragons).
                Thanks,
                The soccer league coordinator
                """)
            letters.append(letter)
        }
    }
    // Generate letter for team Raptors
    for player in teamRaptors {
        if let name = player["name"] as? String, let guardianNames = player["guardianNames"] as? String {
            let letter = ("""
                Dear \(guardianNames),
                \(name) has been placed on team Raptors.
                The first team practice will be at the soccer stadium on \(practiceDateRaptors).
                Thanks,
                The soccer league coordinator
                """)
            letters.append(letter)
        }
    }
}

// Print letters

func printLetters() {
    for letter in letters {
        print(letter)
    }
}

// Check number of experienced players per team

func calculateNumOfExperiencedPlayers(of teamName: String, from teamCollection: [[String: Any]]) {
    var numOfExperiencedPlayers = 0
    
    // Iterate through the team's players
    for player in teamCollection {
        if let hasSoccerExperience = player["hasSoccerExperience"] as? Bool {
            if hasSoccerExperience == true {
                numOfExperiencedPlayers += 1
            }
        }
    }
    
    // Print final message
    print("\(teamName) has \(numOfExperiencedPlayers) experienced players")
}

// Check that each team's average height is within 1.5 inch

func calculateAverageHeight(of teamName: String, from teamCollection: [[String: Any]]) {
    var sumOfHeights = 0.0
    var averageHeight = 0.0
    
    // Iterate through the team's players
    for player in teamCollection {
        if let playerHeight = player["height"] as? Double {
            sumOfHeights += playerHeight
        }
    }
    averageHeight = sumOfHeights / Double(teamCollection.count)
    
    // Print final message
    print("\(teamName) average heights: \(averageHeight)")
}

// Run program

sortPlayers(leaguePlayers)
generateGuardiansLetters()

calculateNumOfExperiencedPlayers(of: "Team Shark", from: teamSharks)
calculateNumOfExperiencedPlayers(of: "Team Dragons", from: teamDragons)
calculateNumOfExperiencedPlayers(of: "Team Raptors", from: teamRaptors)

calculateAverageHeight(of: "Team Sharks", from: teamSharks)
calculateAverageHeight(of: "Team Dragond", from: teamDragons)
calculateAverageHeight(of: "Team Raptors", from: teamRaptors)

printLetters()
