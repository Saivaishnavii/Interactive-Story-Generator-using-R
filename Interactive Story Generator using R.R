install.packages("shiny")
library(shiny)

ui <- fluidPage(
  tags$style(HTML("
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 800px;
      margin: 20px auto;
    }
    h2 {
      color: #333;
    }
    p {
      color: #555;
    }
    .btn {
      background-color: #4CAF50;
      color: white;
      padding: 10px 15px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;
      border-radius: 5px;
    }
    .btn-primary {
      background-color: #3498db;
    }
  ")),
  tabsetPanel(
    id = "mytabs",
    tabPanel("Page 1",
             h1("Interactive Btech Life Story"),
             h3("You are a student. You joined BTech and today is your first day of college"),
             actionButton("continue_btn", "Continue")
    ),
    tabPanel("Page 2",
             h2("As it is the first day of your college, you are having an Orientation"),
             actionButton("continue_orientation_btn", "Continue")
    ),
    tabPanel("Page 3",
             h2("Choose one option:"),
             radioButtons("orientation_choice", "Options:", c("Attend Orientation", "Skip Orientation")),
             actionButton("continue_choice_btn", "Continue")
    ),
    tabPanel("Page 4",
             h2("You chose to Attend Orientation"),
             p("You can get to know about the college and make new friends."),
             actionButton("continue_result_btn_attend", "Continue")
    ),
    tabPanel("Page 5",
             h2("You chose to Skip Orientation"),
             p("You may lack in networking."),
             actionButton("continue_result_btn_skip", "Continue")
    ),
    tabPanel("Page 6",
             h2("You are now in the Second semester."),
             p("M2 is the toughest subject for you."),
             p("Day after tomorrow, you are having M2 Semester exam."),
             p("Tomorrow, your favorite actor's movie is going to release."),
             p("What will you do tomorrow?"),
             actionButton("continue_page6_btn", "Continue")
    ),
    tabPanel("Page 7",
             h2("Choose one option:"),
             radioButtons("page7_choice", "Options:", 
                          c("Prepare for M2 exam", "Skip preparation and go to Favorite actor's movie")),
             actionButton("continue_page7_btn", "Continue")
    ),
    tabPanel("Page 8",
             h2("You chose to prepare for M2 exam"),
             p("There is a high chance of passing the exam."),
             actionButton("continue_page8_btn", "Continue")
    ),
    tabPanel("Page 9",
             h2("You chose to Skip preparation and go to Favorite actor's movie"),
             p("You may end up with a backlog."),
             actionButton("continue_page9_btn", "Continue")
    ),
    tabPanel("Page 10",
             h2("You are in Semester 3."),
             p("While working, you suddenly receive an email on your mobile about recruitment in a technical club at college."),
             p("Are you interested in joining the club?"),
             actionButton("continue_page10_btn", "Continue")
    ),
    tabPanel("Page 11",
             h2("Choose one option:"),
             radioButtons("page11_choice", "Options:", 
                          c("Join the club and become an active member, participating in club events.",
                            "Ignore the mail to focus solely on your academic coursework and personal projects")),
             actionButton("continue_page11_btn", "Continue")
    ),
    tabPanel("Page 12",
             h2("You chose to join the technical club."),
             p("You build a strong network and enhance your practical skills."),
             p("This involvement positively influences your career, opening doors to placements as it adds weightage in your resume and can gain industry exposure."),
             actionButton("continue_page12_btn", "Continue")
    ),
    tabPanel("Page 13",
             h2("You chose to Ignore the mail to focus solely on your academic coursework and personal projects."),
             p("While maintaining a strong focus on academics and personal projects, you miss out on the opportunities for hands-on experience, networking, and potential collaborations that the technical club offers."),
             p("Your professional network may not be as diversified, impacting future career prospects."),
             actionButton("continue_page13_btn", "Continue")
    ),
    tabPanel("Page 14",
             h2("You are in Semester 4."),
             p("There's a particularly challenging subject that you find difficult to grasp."),
             p("The professor announces an additional class in the free hour to cover essential topics for an upcoming exam."),
             p("Your friends suggest bunking the class and spending time in the canteen. What are you going to do?"),
             actionButton("continue_page14_btn", "Continue")
    ),
    tabPanel("Page 15",
             h2("Choose one option:"),
             radioButtons("page15_choice", "Options:", 
                          c("Stay in class.", "Bunk the class and spend time in the canteen.")),
             actionButton("continue_page15_btn", "Continue")
    ),
    tabPanel("Page 16",
             h2("You chose to stay in class."),
             p("You remain committed to your studies, even in a challenging class."),
             p("By staying, you ensure that you don't miss important content, contributing to a solid understanding of the subject."),
             p("Consistent attendance also reflects positively on your dedication to academics."),
             actionButton("continue_page16_btn", "Continue")
    ),
    tabPanel("Page 17",
             h2("You chose to bunk the class and spend time in the canteen."),
             p("While you spend time with friends, skipping the class may result in missing crucial information."),
             p("This can lead to gaps in your understanding of the subject and may require extra effort to catch up later."),
             p("Additionally, frequent absences might affect your overall academic performance, attendance, and impression with the faculty."),
             actionButton("continue_page17_btn", "Continue")
    ),
    tabPanel("Page 18",
             h2("You are in Semester 5."),
             p("You are offered a chance to lead a team for a major college event, which will take a significant amount of your time."),
             actionButton("continue_page18_btn", "Continue")
    ),
    tabPanel("Page 19",
             h2("Choose one option:"),
             radioButtons("page19_choice", "Options:", 
                          c("Take on the leadership role for the event, gaining valuable leadership experience.",
                            "Decline the offer to prioritize academic studies and individual projects")),
             actionButton("continue_page19_btn", "Continue")
    ),
    tabPanel("Page 20",
             h2("You chose to take on the leadership role for the event."),
             p("You develop strong leadership skills and make meaningful connections."),
             actionButton("continue_page20_btn", "Continue")
    ),
    tabPanel("Page 21",
             h2("You chose to Decline the offer to prioritize academic studies and individual projects."),
             p("You maintain a focused academic record but miss the chance to enhance your leadership abilities and expand your network."),
             actionButton("continue_page21_btn", "Continue")
    ),
    tabPanel("Page 22",
             h2("You are in Semester 6."),
             p("You have the option to participate in a hackathon, which could enhance your coding skills and provide exposure to real-world challenges."),
             actionButton("continue_page22_btn", "Continue")
    ),
    tabPanel("Page 23",
             h2("Choose one option:"),
             radioButtons("page23_choice", "Options:",
                          c("Attend the hackathon to enhance coding skills and gain real-world exposure.",
                            "Skip the hackathon to focus on other personal projects.")),
             actionButton("continue_page23_btn", "Continue")
    ),
    tabPanel("Page 24",
             h2("You chose to attend the hackathon to enhance coding skills and gain real-world exposure."),
             p("You excel in the hackathon, gaining recognition for your skills and potentially opening doors to internship opportunities."),
             actionButton("continue_page24_btn", "Continue")
    ),
    tabPanel("Page 25",
             h2("You chose to skip the hackathon to focus on other personal projects."),
             p("While you make progress in personal projects, you miss the chance to showcase your skills in a competitive environment."),
             p("Participating in such events could have provided additional exposure and networking opportunities."),
             actionButton("continue_page25_btn", "Continue")
    ),
    tabPanel("Page 26",
             h2("You are in Semester 7."),
             p("A renowned industry expert is conducting a workshop on an advanced topic related to your field of study."),
             actionButton("continue_page26_btn", "Continue")
    ),
    tabPanel("Page 27",
             h2("Choose one option:"),
             radioButtons("page27_choice", "Options:",
                          c("Attend the workshop to enhance your knowledge and networking opportunities.",
                            "Skip the workshop to focus on your regular coursework")),
             actionButton("continue_page27_btn", "Continue")
    ),
    tabPanel("Page 28",
             h2("You chose to attend the workshop to enhance your knowledge and networking opportunities."),
             p("You gain valuable insights, expand your network, and potentially open up future opportunities."),
             actionButton("continue_page28_btn", "Continue")
    ),
    tabPanel("Page 29",
             h2("You chose to skip the workshop to focus on your regular coursework."),
             p("You miss out on valuable industry knowledge and potential networking opportunities."),
             actionButton("continue_page29_btn", "Continue")
    ),
    tabPanel("Page 30",
             h2("You are in Semester 8, nearing the end of your studies."),
             p("It's time for a big project that can showcase what you've learned and make you stand out."),
             actionButton("continue_page30_btn", "Continue")
    ),
    tabPanel("Page 31",
             h2("Choose one option:"),
             radioButtons("page31_choice", "Options:",
                          c("Pick a challenging project that shows off your skills and dedication.",
                            "Choose a simpler project to make your workload more manageable")),
             actionButton("continue_page31_btn", "Continue")
    ),
    tabPanel("Page 32",
             h2("You chose to pick a challenging project that shows off your skills and dedication."),
             p("Your hard work pays off, and you impress everyone with a complex and successful project."),
             p("This shines in your portfolio and can help in job interviews."),
    ),
    tabPanel("Page 33",
             h2("You chose to work on a simpler project to make your workload more manageable."),
             p("You manage your workload well, but the project may not grab as much attention."),
             p("It's a safe choice, but it might not stand out as much in your academic record."),
    ),
  )
)

server <- function(input, output, session) {
  observeEvent(input$continue_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 2")
  })
  
  observeEvent(input$continue_orientation_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 3")
  })
  
  observeEvent(input$continue_choice_btn, {
    if (input$orientation_choice == "Attend Orientation") {
      updateTabsetPanel(session, "mytabs", selected = "Page 4")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 5")
    }
  })
  
  observeEvent(input$continue_result_btn_attend, {
    updateTabsetPanel(session, "mytabs", selected = "Page 6")
  })
  
  observeEvent(input$continue_result_btn_skip, {
    updateTabsetPanel(session, "mytabs", selected = "Page 6")
  })
  
  observeEvent(input$continue_page6_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 7")
  })
  
  observeEvent(input$continue_page7_btn, {
    if (input$page7_choice == "Prepare for M2 exam") {
      updateTabsetPanel(session, "mytabs", selected = "Page 8")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 9")
    }
  })
  
  observeEvent(input$continue_page8_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 10")
  })
  
  observeEvent(input$continue_page9_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 10")
  })
  
  observeEvent(input$continue_page10_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 11")
  })
  
  observeEvent(input$continue_page11_btn, {
    if (input$page11_choice == "Join the club and become an active member, participating in club events.") {
      updateTabsetPanel(session, "mytabs", selected = "Page 12")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 13")
    }
  })
  
  observeEvent(input$continue_page12_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 14")
  })
  
  observeEvent(input$continue_page13_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 14")
  })
  
  observeEvent(input$continue_page14_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 15")
  })
  
  observeEvent(input$continue_page15_btn, {
    if (input$page15_choice == "Stay in class.") {
      updateTabsetPanel(session, "mytabs", selected = "Page 16")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 17")
    }
  })
  
  observeEvent(input$continue_page16_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 18")
  })
  
  observeEvent(input$continue_page17_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 18")
  })
  
  observeEvent(input$continue_page18_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 19")
  })
  
  observeEvent(input$continue_page19_btn, {
    if (input$page19_choice == "Take on the leadership role for the event, gaining valuable leadership experience.") {
      updateTabsetPanel(session, "mytabs", selected = "Page 20")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 21")
    }
  })
  
  observeEvent(input$continue_page20_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 22")
  })
  
  observeEvent(input$continue_page21_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 22")
  })
  
  observeEvent(input$continue_page22_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 23")
  })
  
  observeEvent(input$continue_page23_btn, {
    if (input$page23_choice == "Attend the hackathon to enhance coding skills and gain real-world exposure.") {
      updateTabsetPanel(session, "mytabs", selected = "Page 24")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 25")
    }
  })
  
  observeEvent(input$continue_page24_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 26")
  })
  
  observeEvent(input$continue_page25_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 26")
  })
  
  observeEvent(input$continue_page26_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 27")
  })
  
  observeEvent(input$continue_page27_btn, {
    if (input$page27_choice == "Attend the workshop to enhance your knowledge and networking opportunities.") {
      updateTabsetPanel(session, "mytabs", selected = "Page 28")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 29")
    }
  })
  
  observeEvent(input$continue_page28_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 30")
  })
  
  observeEvent(input$continue_page29_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 30")
  })
  
  observeEvent(input$continue_page30_btn, {
    updateTabsetPanel(session, "mytabs", selected = "Page 31")
  })
  
  observeEvent(input$continue_page31_btn, {
    if (input$page31_choice == "Pick a challenging project that shows off your skills and dedication.") {
      updateTabsetPanel(session, "mytabs", selected = "Page 32")
    } else {
      updateTabsetPanel(session, "mytabs", selected = "Page 33")
    }
  })
 
}

shinyApp(ui, server)
