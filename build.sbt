lazy val root = (project in file(".")).
  settings(
    inThisBuild(List(
      organization := "com.mitre",
      version      := "0.0.1",
      scalaVersion := "2.12.6",
      crossPaths := false,
      testOptions += Tests.Argument(TestFrameworks.JUnit, "-v"),
    )),
    name := "dfdl-iCalendar",
    libraryDependencies := Seq(
      "org.apache.daffodil" %% "daffodil-tdml-processor" % "2.4.0-SNAPSHOT" % "test",
      "junit" % "junit" % "4.12" % "test",
      "com.novocode" % "junit-interface" % "0.11" % "test",
    )
  )
