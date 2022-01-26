remotes::install_github("DivadNojnarg/OSUICode", force = TRUE)
library(OSUICode)
library(shiny)

OSUICode::run_example( 
   "intro/dj-system",
    package = "OSUICode"
  )

remotes::install_github("RinteRface/shinyRPG")
library(shinyRPG)
shinyRPGDemo()

library(htmltools)

tag <- div("Hello World")
tag

withTags(
  nav(div(), ul(li("Hello"),li("World")))
)

tag_list_1 <- tagList(
  p("Some text"),
  div("Content")
)
str(tag_list_1)
??str

custom_tag <- tag(
  "test",
  list(class = "test", p("Custom Tag"))
)
custom_tag

my_tag <- div(
  class = "divclass",
  id = "first",
  h1("My first Child!"),
  span(class = "child", id = "baby", "Crying")
)
str(my_tag)

second_children <- my_tag$children[[2]]
second_children$attribs$class <- "adult"
my_tag$children[[2]]$attribs$class <- "adult"
my_tag
View(my_tag)



myTag <- div("A tag")
myTag <- tagAppendAttributes(myTag, id="myid")
myTag <- tagAppendAttributes(
  myTag,
  'data-toggle' = "tabs", #non-standart attribute
  class = "myclass" #standart attribute
)


myTag$attribs$class <- "New class"
myTag$attribs[["data-toggle"]] <- "New Value"
myTag

tagHasAttribute(myTag, "data-toggle")

tagGetAttribute(myTag,"data-toggle")

myTag <- tagSetChildren(myTag, span("Daugter"))

# or

son <- span("Son")
myTag <- tagSetChildren(myTag, son)
myTag <- tagAppendChild(myTag, span("Daughter"))
myTag

