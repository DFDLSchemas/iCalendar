val root = (project in file("."))
  .settings(
    name := "dfdl-iCalendar",

    organization := "com.mitre",

    version := "0.0.1"
  )
  .daffodilProject()
