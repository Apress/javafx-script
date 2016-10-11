/*
 *  AppointmentTemplate.fx - A starter template for the Appointment class 
 *                           to be used with the the "Appointments" exercise 
 *                           in chapter 4.  Just copy this file to a file named
 *                           Appointment.fx in a folder named chapter4 (because
 *                           of the package statement in this file).
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package chapter4;

import javafx.ui.*;

class Appointment {
  attribute month:Integer;
  attribute day:Integer;
  attribute year:Integer;
  attribute hour:Integer;
  attribute pm:Boolean;
  attribute durationHours:Number;

  operation isConflict(otherAppt:Appointment):Boolean;
  private operation getHourIn24HourTime(appt:Appointment):Integer;
  private operation isTimeOverlap(hourA:Integer, durationHoursA:Number, 
                                  hourB:Integer):Boolean;
}
// Attribute initializers
attribute Appointment.month = 1;
//...supply code here...

// Named instances
MAX_MONTH:Integer = 12;
//...supply code here...

// Protect the month attribute from being assigned an invalid value
trigger on Appointment.month[oldMonth] = newMonth {
  if (newMonth <= 0 or newMonth > MAX_MONTH:Integer) {
    month = oldMonth;
  }
}

// Protect the day attribute from being assigned an invalid value
trigger on Appointment.day[oldDay] = newDay {
  //...supply code here...
}

// Protect the hour attribute from being assigned an invalid value
trigger on Appointment.hour[oldHour] = newHour {
  //...supply code here...
}

/**
 * This operation checks to see if the Appointment instance passed into
 * this method is in conflict (overlaps with) this appointment instance.
 * If both appointments are on the same day, it calls the getHourIn24HourTime()
 * method twice, once for the this Appointment (hint: pass in the this keyword),
 * and once for the the appointment that was passed into this method.  It then
 * call the isTimeOverlap() operation to ascertain whether the actual times, 
 * taking duration into account, overlap.
 */
operation Appointment.isConflict(otherAppt) {
  var conflict = false;
    //...supply code here...
  return conflict;
}

/**
 * This operation is called if the two appointments are on the same day.
 * It ascertains whether the actual times, taking the duration of the
 * earliest time into account, overlap.
 */
operation Appointment.isTimeOverlap(hourA, durationHoursA, hourB) {
  //...supply code here...
}

/**
 * This operation converts a 12 hour clock time with am/pm to a 24 hour
 * clock time.
 */
operation Appointment.getHourIn24HourTime(appt) {
  var hourIn24hourTime;
    //...supply code here...
  return hourIn24hourTime;
}
 