App.open("Firefox")
wait("MozillaFiref-1.png", 3)
click("1312364035428.png")
type("crm.zoho.com\n")
wait("SIGNIN.png",5)
click("1308784583378.png")
wait(5)
click(Pattern("CUsernameIIE.png").similar(0.48))
type("a", KEY_CTRL)
type("joeklienwatir@gmail.com")
type(Key.TAB)
type("watir001")
click(Pattern("1308784882528.png").similar(0.40))
wait(Pattern("TrotherEditi.png").similar(0.57),10)
wait (3)
dragDrop(Pattern("HLBXTodaysLe.png").similar(0.95), Pattern("Welcomejoekl-2.png").similar(0.66))

wait(2)
m=find(Pattern("TrotherEditi.png").similar(0.47))
print m
dragDrop(Pattern("OpenTasks-2.png").similar(0.94),Pattern("Welcomejoekl-3.png").similar(0.68))

m=find(Pattern("TrotherEditi.png").similar(0.52))
print m
click("SignOutLjoek.png")
click("1312362029369.png")

