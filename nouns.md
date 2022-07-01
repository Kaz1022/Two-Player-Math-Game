Two Classes
Player and Quetsion Class


------ Player class -------
*variable*
lives 3/3 (initial value)
<method>
deduct lives  -> call in the question 

instances player 1 / player 2

------ Game class -------
(Question class handles I/O of the user)
*variable*
Current Player -> use the player instances and toggle 

<method> question ("Player___ :What does num1 plus num2 equal?")
two numbers (1 - 20) array.shuffle?  - returns answer 

<method>
answer check 
player's answer(player types in) gets.chomp
if players answer and question answer is the same, 
put correct message ("Yes, you are correct")

if players answer and question answer is no the same,
put wrong message ("Nope!!!")
and call deduct method to UPDATE player's lives

Then switch players 

If one of the players lives gets 0,
Show who is the winner ("Player _ wins with a score of __  ")

Good Bye message 



