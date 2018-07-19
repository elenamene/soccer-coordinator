// Project 1
// Soccer League Coordinator

// Modeling players
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
        "height": 41,
        "hasSoccerExperience": false,
        "guardianNames": "Bill and Hillary Stein"
    ],
    [   "name": "Sammy Adams",
        "height": 45,
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

// Modeling teams
var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

let teams = [ teamSharks, teamDragons, teamRaptors]

var experiencedPlayers: [[String: Any]] = []
var inexperiencedPlayers: [[String: Any]] = []


func sortByExperience(_ league: [[String: Any]]) {
    // Sort players by experience
    for player in league {
        if let hasSoccerExperience = player["hasSoccerExperience"] as? Bool {
            if hasSoccerExperience {
                experiencedPlayers.append(player)
            } else {
                inexperiencedPlayers.append(player)
            }
        }
    }
    // Sort experienced players in 3 teams
    for player in experiencedPlayers {
        if teamDragons.count < teamSharks.count {
            teamDragons.append(player)
        } else if teamRaptors.count < teamDragons.count {
            teamRaptors.append(player)
        } else {
            teamSharks.append(player)
        }
    }
    // Sort inexperienced players in 3 teams
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

sortByExperience(leaguePlayers)

teamRaptors.count
teamDragons.count
teamSharks.count
print("Team Sharks: \(teamSharks)")
print("Team Dragons: \(teamDragons)")
print("Team Raptors: \(teamRaptors)")

//  As long as you provide the necessary information (player name, team name, guardian names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows:

let practiceDateDragons = "March 17, 1pm"
let practiceDateSharks = "March 17, 3pm"
let practiceDateRaptors = "March 18, 1pm"

var message =
"""
Dear GuardiansName,
playerName has been placed on teamName.
The first team practice will be at the address below on practiceDateDragons.
Thanks
The soccer league coordinator
"""

for player in teamSharks {
    print("""
        Dear GuardiansName,
        \(player) has been placed on teamName.
        The first team practice will be at the address below on practiceDateDragons.
        Thanks
        The soccer league coordinator
        """)
}

let letters: [String] = []
