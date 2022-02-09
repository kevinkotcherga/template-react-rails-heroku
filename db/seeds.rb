u = User.create(username: "elmo", password: "elmo123")

Note.create(title: "Ruby is amazing", content: "I learned how to build an ORM and use a database with a mix of SQL and Ruby", user: u)
Note.create(title: "React is a great and dynamic front end technology", content: "Now I know how to build a full stack application using Rails for backend and React for the frontend", user: u)
Note.create(title: "Deploying today", content: "Today I am learning how to deploy an application to the web", user: u)
Note.create(title: "Note example", content: "Eiusmod non id enim velit reprehenderit tempor consequat et minim duis eu nisi duis in. Reprehenderit veniam sit elit ea do cillum excepteur cupidatat elit minim consectetur.", user: u)
