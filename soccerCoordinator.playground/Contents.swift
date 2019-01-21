// Project 1
// Soccer League Coordinator

// Dictionary of players

let soccerLeague: [[String: Any]] = [
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

func sortPlayers(of league: [[String: Any]]) {
    
    // Create two collections based on experience
    var experiencedPlayers: [[String: Any]] = []
    var inexperiencedPlayers: [[String: Any]] = []
    
    // Divide the players in experienced and inexperienced players
    for player in league {
        guard let hasSoccerExperience = player["hasSoccerExperience"] as? Bool else {
            return
        }
        
        if hasSoccerExperience {
            experiencedPlayers.append(player)
        } else {
            inexperiencedPlayers.append(player)
        }
    }
    
    // Sort players by height <
    experiencedPlayers.sort {
        ($0["height"] as! Double) < ($1["height"] as! Double)
    }
    // Sort players by height >
    inexperiencedPlayers.sort {
        ($0["height"] as! Double) > ($1["height"] as! Double)
    }
    
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


func generateLetters(for team: [[String: Any]]) {
    
    // Select team name and date
    var date: String = ""
    var name: String = ""
    switch team {
    case teamSharks: name = "Sharks"; date = "March 17, 3pm"
    case teamDragons: name = "Dragons"; date = "March 17, 1pm"
    case teamRaptors: name = "Raptors"; date = "March 18, 1pm"
    default: break
    }
    
    // Iterate over each player in selected team
    for player in team {
        guard let name = player["name"] as? String, let guardianNames = player["guardianNames"] as? String else {
            return
        }
        
        let letter = ("""
            Dear \(guardianNames),\n
            \(name) has been placed on team \(teamName).
            The first team practice will be at the soccer stadium on \(date).\n
            Thanks,\n
            The soccer league coordinator\n
            """)
        
        letters.append(letter)
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

sortPlayers(of: soccerLeague)
// -> generateLetters method

calculateNumOfExperiencedPlayers(of: "Team Shark", from: teamSharks)
calculateNumOfExperiencedPlayers(of: "Team Dragons", from: teamDragons)
calculateNumOfExperiencedPlayers(of: "Team Raptors", from: teamRaptors)

calculateAverageHeight(of: "Team Sharks", from: teamSharks)
calculateAverageHeight(of: "Team Dragond", from: teamDragons)
calculateAverageHeight(of: "Team Raptors", from: teamRaptors)

printLetters()
