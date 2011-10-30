#!/usr/local/bin/io

postOffice := Object clone
postOffice packageSender := method(call sender)
postOffice messageTarget := method(call target)
postOffice messageArgs := method(call message arguments)
postOffice messageName := method(call message name)

mailer := Object clone
mailer deliver := method(postOffice packageSender)

displayMethodExecution := method(
                              "*******" println
                              call sender doMessage(call message argAt(0)) println
                              "--------" println
                              writeln
                              )

displayMethodExecution(postOffice messageTarget)
displayMethodExecution(postOffice messageName)
displayMethodExecution(postOffice messageArgs("one", 2, :three))

displayMethodExecution(mailer deliver)