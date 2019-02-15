# Soccer Coordinator

## iOS Techdegree Project 1

You have volunteered to be the coordinator for your town’s youth soccer league. As part of your job you need to divide the 18 children who have signed up for the league into three even teams — Dragons, Sharks, and Raptors. In years past, the teams have been unevenly matched, so this year you are doing your best to fix that. For each child, you will have the following information:

- Name,
- Height (in inches),
- Whether or not they have played soccer before, and
-  Their guardians’ names.

### Required Tasks

1. Manually create a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String keys and the corresponding values.

2. Create appropriate constants and logic to sort and store players into three teams: Sharks, Dragons and Raptors. Store the players for each team in a collection named 'teamSharks', 'teamDragons', and 'teamRaptors'. Be sure that your logic results in all teams having the same number of experienced players on each.

3. Write code that prints a personalized letter to each of the guardians specifying: the player’s name, guardian names, team name, and date/time of their first team practice. The values for each should exactly match what we have provided, including the team practice dates and times above. The letters must be stored in a collection named 'letters'.

4. When the code is run, the letters should be printed in the console (Note: you need to print out the array content as formatted individual letters, not a direct content dump of the ‘letters’ array. It is easy to tell, if the output contain brackets “[“, “]”, then you are printing the array itself, not the content only.).

### Extra Credit

Logic to ensure that each team's average height is within 1.5 inch of the others as well as having each team contain the same number of experienced players. Your logic should be make use of dynamic values like the average height of teams or players and not be based on any magic numbers or hard-coded values. You should not rely on a particular ordering of the initial collection of players - the logic should work regardless of the order of players in the initial collection. (Please note, this feature only needs to meet the 1.5 inch threshold for the given set of players we provided, not for all potential future sets of players.) Please also print out the average height of the players of each team.
