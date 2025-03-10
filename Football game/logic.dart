import 'dart:io';

  void main() {
    // Creating players for Barcelona
    List<footballPlayer> barcelonaPlayers = [
      footballPlayer(squadNumber: 1, firstName: "Marc-André", lastName: "ter Stegen", position: "Goalkeeper"),
      footballPlayer(squadNumber: 2, firstName: "João", lastName: "Cancelo", postion: "Defender"),
      footballPlayer(squadNumber: 3, firstName: "Ronald", lastName: "Araújo", postion: "Defender"),
      footballPlayer(squadNumber: 4, firstName: "Andreas", lastName: "Christensen", postion: "Defender"),
      footballPlayer(squadNumber: 5, firstName: "Alejandro", lastName: "Balde", postion: "Defender"),
      footballPlayer(squadNumber: 6, firstName: "Frenkie", lastName: "de Jong", postion: "Midfielder"),
      footballPlayer(squadNumber: 7, firstName: "Pedri", lastName: "González", postion: "Midfielder"),
      footballPlayer(squadNumber: 8, firstName: "Gavi", lastName: "Paez", postion: "Midfielder"),
      footballPlayer(squadNumber: 9, firstName: "Robert", lastName: "Lewandowski", postion: "Forward"),
      footballPlayer(squadNumber: 10, firstName: "João", lastName: "Félix", postion: "Forward"),
      footballPlayer(squadNumber: 11, firstName: "Raphinha", lastName: "Belloli", postion: "Forward"),
    ];

    // Creating players for Liverpool
    List<footballPlayer> liverpoolPlayers = [
      footballPlayer(squadNumber: 1, firstName: "Alisson", lastName: "Becker", postion: "Goalkeeper"),
      footballPlayer(squadNumber: 2, firstName: "Trent", lastName: "Alexander-Arnold", postion: "Defender"),
      footballPlayer(squadNumber: 3, firstName: "Virgil", lastName: "van Dijk", postion: "Defender"),
      footballPlayer(squadNumber: 4, firstName: "Ibrahima", lastName: "Konaté", postion: "Defender"),
      footballPlayer(squadNumber: 5, firstName: "Andy", lastName: "Robertson", postion: "Defender"),
      footballPlayer(squadNumber: 6, firstName: "Alexis", lastName: "Mac Allister", postion: "Midfielder"),
      footballPlayer(squadNumber: 7, firstName: "Dominik", lastName: "Szoboszlai", postion: "Midfielder"),
      footballPlayer(squadNumber: 8, firstName: "Curtis", lastName: "Jones", postion: "Midfielder"),
      footballPlayer(squadNumber: 9, firstName: "Mohamed", lastName: "Salah", postion: "Forward"),
      footballPlayer(squadNumber: 10, firstName: "Darwin", lastName: "Núñez", postion: "Forward"),
      footballPlayer(squadNumber: 11, firstName: "Luis", lastName: "Díaz", postion: "Forward"),
    ];

    // Creating football teams
    footballTeam barcelona = footballTeam(name: "FC Barcelona", league: "La Liga", country: "Spain", players: barcelonaPlayers);
    footballTeam liverpool = footballTeam(name: "Liverpool FC", league: "Premier League", country: "England", players: liverpoolPlayers);

    // Initializing a football game
    footballGame match = footballGame(homeTeam: barcelona, awayTeam: liverpool);

    // Printing match details
    print("Match: ${match.homeTeam.name} vs ${match.awayTeam.name}");
    print("League: ${match.homeTeam.league} vs ${match.awayTeam.league}");
    print("Country: ${match.homeTeam.country} vs ${match.awayTeam.country}");
  }

