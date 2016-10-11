/*
 *  AppointmentTester.fx - The Appointment class tester for the 
 *                         "Appointments" exercise in chapter 4
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package chapter4;

var appt1 =
  Appointment {
    month: 12
    day: 31
    year: 2007
    hour: 8
    pm: true
    durationHours: 1.5
  }; 
var appt2 =
  Appointment {
    month: 12
    day: 31
    year: 2007
    hour: 9
    pm: true
    durationHours: 1
  };
println("appt1 contains: {appt1}");
println("appt2 contains: {appt2}");
println("It is {appt1.isConflict(appt2)} that these appointments conflict.");
println("");
println("Trying to change appt1 to a month of 13");
appt1.month = 13;
println("appt1 contains: {appt1}");
println("Trying to change appt2 to a day of 32");
appt2.day = 32;
println("appt2 contains: {appt2}");
println("");
println("Trying to change appt2 to a day of 6");
appt2.day = 6;
println("appt2 contains: {appt2}");
println("");
println("It is {appt1.isConflict(appt2)} that these appointments conflict.");
