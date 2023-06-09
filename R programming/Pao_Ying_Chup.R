# Pao function is a Rock, Paper, Scissors agains a computer 
# the game will relunch itselves until the player input "n"
# then there will be a score board regarding total rounds, total wins/ losses/ ties

Pao <- function(){
#Create score_board
score_board <- data.frame(matrix(data="",ncol=3,nrow=1))
score_board <- score_board[FALSE,]
weapon = c("Rock","Scissors","Paper")
get_result <- function(w1,w2){
if (w1 == w2){
    result = 'tie'
}

else if(w1 == "Rock"){
    if(w2 == "Scissors"){
    result = 'win'
}else{
    result = 'lose'
    }
}

else if(w1 == "Scissors"){
    if(w2 == "Paper"){
    result = 'win'
}else{
    result = 'lose'
    }
}

else if(w1 == "Paper"){
    if(w2 == "Rock"){
    result = 'win'
}else{
    result = 'lose'
    }
}
return(result)
}
#return 'win' 'lose' 'tie'
get_score <- function(result){
# win lose tie
if(result == 'win'){
score <- c(1,0,0)
} else if (result == 'lose'){
score <- c(0,1,0)
} else{
score <- c(0,0,1)
    }
return(score)
}
#return vector
while(TRUE){
play = readline("Do you want to play pao ying chup? y/n : ")
while( !(play %in% c("y","n")) ){
print("Try Again")
play = readline("Do you want to play pao ying chup? y/n : ")
}
if(play == 'n'){
print("Score Summary")
print(paste("Total Round: ",nrow(score_board)))
print(paste("Total Win: ",sum(as.numeric(score_board$X1))))
print(paste("Total Lose: ",sum(as.numeric(score_board$X2))))
print(paste("Total Tie: ",sum(as.numeric(score_board$X3))))
break
}else{
w1 = readline("Choose your weapon Rock/Paper/Scissors: ")
while( !(w1 %in% c("Rock","Paper","Scissors")) ){
print("Try Again")
w1 = readline("Choose your weapon Rock/Paper/Scissors: ")
}
w2 = sample(weapon,size=1)
print(paste("Computer Weapon: ",w2))
real_result <- get_result(w1=w1,w2=w2)
print(paste("Match Result: ",real_result))
real_score <- get_score(real_result)
# print(real_score)
score_board[nrow(score_board)+1,] <- as.numeric(real_score)
        }
    }
}
