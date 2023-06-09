hw1 <- function(){

print("Welcome Mr.K burger restaurant")
name = readline("Can I have your name please? ")

print(paste("Hello", name))
beef = readline("What type of burgers do you want? Pork, Beef, or Fish ")

print(paste(beef," is a Good Choice"))
quantity = readline("How many patty do you want? ")

print(paste(quantity," ",beef," Patties comming on your way"))
sauce = readline("What sauce do you want to be put in the burger? Ketchup or Mustard ")

print(paste(sauce, "Right the way"))
extra_cheese = readline("Do you need extra cheese? 'y'/'n' ")

if(extra_cheese == 'y'){
    print(paste(beef," burger extra cheese is served"))
    }   
    else   {
    print(paste(beef," burger is served"))
    }
}
