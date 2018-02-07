scalaVersion in ThisBuild := "2.11.8"

organization := "com.mitre"

name := "dfdl-iCalendar"

version := "0.0.1"


libraryDependencies in ThisBuild := Seq(
  "junit" % "junit" % "4.11" % "test",
  "com.novocode" % "junit-interface" % "0.11" % "test",
  "edu.illinois.ncsa" %% "daffodil-tdml" % "2.1.0-SNAPSHOT" % "test"
)

retrieveManaged := true



