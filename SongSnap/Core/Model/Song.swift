//
//  Song.swift
//  SongSnap
//
//  Created by Sergio Herrera on 1/9/24.
//

import Foundation

struct Song: Any {
    var title: String
    var artist: String
    var lyrics: String
}

let MOCK_DATA = [
    Song(title: "Times Like These",
         artist: "Foo Fighters",
         lyrics: "I, i'm a one way motorway\ni'm a road that drives away and follows you back home\nI i'm a street light shining i'm a white light blinding bright burning off and on\n\nits times like these you learn to love again\nits times like these time and time again\n\nI i'm a new day rising i'm a brand new sky to hang the stars upon tonight I i'm a little divided do i stay or run away and leave it all behind\n\nits times like these you learn to live again\nits times like these you give and give again\nits times like thses you learn to love again its times like these time and time again\n\n\nits times like these you learn to live again\nits times like these you give and give again\nits times like thses you learn to love again its times like these time and time again"),
    Song(title: "Everlong",
         artist: "Foo Fighters",
         lyrics: "Hello\n\nI've waited here for you\n\nEverlong\n\n\n\nTonight I throw myself in two\n\nOut of the red\n\nOut of her head she sang\n\n\n\nCome down and waste away with me\n\nDown with me\n\nSlow, how you wanted it to be\n\nI'm over my head\n\nOut of her head she sang\n\n\n\nAnd I wonder\n\nWhen I sing along with you\n\n\nIf everything could ever feel this real forever\n\nIf anything could ever be this good again\n\nThe only thing I'll ever ask of you\n\nYou've got to promise not to stop when I say when\n\n\n\nBreathe out\n\nSo I can breathe you in\n\nHold you in\n\nAnd now\n\nI know you've always been\n\nOut of your head\n\nOut of my head I sang"),
    Song(title: "Happy Now",
         artist: "No Doubt",
         lyrics: "You had the best\nBut you gave her up\n'Cause dependency might interrupt\nIdealistic will so hard to please\nPut your indecisive mind at ease\nYou broke the set\nNow there's only singles\nThere's no looking back\nThis time I mean it\n\nAre you happy now?\nWell, tell me how?\nAre you happy now?\nAre you happy?\n\n\nThe uncertainty you had of me\nBrought clouded shady company\nThe tenderness habitual\nA seldom-fading ritual\nYou killed the pair\nNow only one is breathing\nThere's no looking back\nThis time I mean it\n\nAre you happy now?\nWell, tell me how?\nAre you happy now?\nAre you happy?\n\nAre you happy now?\nHow is it now?\nAre you happy now?\n\nAre you happy?\n\nNo more leaning on your shoulder\nI won't be there, no more bother\nIf you feel you just might want me\nThat's too bad, I'm not that easy\n\nThe contemplator all those years\nNow you must adhere\nTo your new career of liberation\nYou've been cast all by yourself\nYou're free at last\nYou broke the set\nNow there's only singles\nThere's no looking back\nThis time I mean it\n\nYou're by yourself\n\nAll by yourself\nYou got no one else\nYou're by yourself\nAll by yourself\nAll by yourself"),
    Song(title: "Reptilia",
         artist: "The Strokes",
         lyrics: "He seemed impressed by the way you came in.\n\"Tell us a story\nI know you're not boring\"\n\nI was afraid that you would not insist.\n\"You sound so sleepy\njust take this, now leave me\"\n\nI said please don't slow me down\nIf I'm going too fast\nYou're in a strange part of our town...\n\nYeah, the night's not over\nYou're not trying hard enough,\nOur lives are changing lanes\nYou ran me off the road,\n\nThe wait is over\nI'm now taking over,\nYou're no longer laughing\nI'm not drowning fast enough.\n\nNow every time that I look at myself\n\"I thought I told you\nthis world is not for you\"\n\nThe room is on fire as she's fixing her hair\n\"you sound so angry\njust calm down, you found me\"\n\nI said please don't slow me down\nIf I'm going too fast\nYou're in a strange part of our town...\n\nYeah, the night's not over\n\nYou're not trying hard enough,\nOur lives are changing lanes\nYou ran me off the road,\nThe wait is over\nI'm now taking over,\nYou're no longer laughing\nI'm not drowning fast enough.")
    ]
