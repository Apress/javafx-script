/*
 *  Appointment.fx - The Appointment class for the "Appointments" 
 *                   exercise in chapter 4
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package chapter4;

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
attribute Appointment.day = 1;
attribute Appointment.year = 2001;
attribute Appointment.hour = 12;
attribute Appointment.pm = false;
attribute Appointment.durationHours = 1;

// Named instances
MAX_MONTH:Integer = 12;
MAX_DAY:Integer = 31;
MAX_HOUR:Integer = 12;

// Protect the month attribute from being assigned an invalid value
trigger on Appointment.month[oldMonth] = newMonth {
  if (newMonth <= 0 or newMonth > MAX_MONTH:Integer) {
    month = oldMonth;
  }
}

// Protect the day attribute from being assigned an invalid value
trigger on Appointment.day[oldDay] = newDay {
  if (newDay <= 0 or newDay > MAX_DAY:Integer) {
    day = oldDay;
  }
}

// Protect the hour attribute from being assigned an invalid value
trigger on Appointment.hour[oldHour] = newHour {
  if (newHour <= 0 or newHour > MAX_HOUR:Integer) {
    hour = oldHour;
  }
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
  if (month == otherAppt.month and
      day == otherAppt.day and
      year == otherAppt.year) {
    
    var conflict;
    var thisApptHourIn24 = getHourIn24HourTime(this);
    var otherApptHourIn24 = getHourIn24HourTime(otherAppt);
    if (thisApptHourIn24 <= otherApptHourIn24) {
      conflict = isTimeOverlap(thisApptHourIn24, 
                               durationHours, 
                               otherApptHourIn24);
    }
    else {
      conflict = isTimeOverlap(otherApptHourIn24, 
                               durationHours, 
                               thisApptHourIn24);
    }
  }
  return conflict;
}

/**
 * This operation is called if the two appointments are on the same day.
 * It ascertains whether the actual times, taking the duration of the
 * earliest time into account, overlap.
 */
operation Appointment.isTimeOverlap(hourA, durationHoursA, hourB) {
  var overlap = false;
  if (hourA + durationHoursA > hourB) {
    overlap = true;
  }
  return overlap;
}

/**
 * This operation converts a 12 hour clock time with am/pm to a 24 hour
 * clock time.
 */
operation Appointment.getHourIn24HourTime(appt) {
  var hourIn24hourTime;
  // Convert 12 o'clock to 0
  if (appt.hour == 12 and not appt.pm) {
    hourIn24hourTime = 0;
  }
  // Convert all other am times
  else if (not appt.pm) {
    hourIn24hourTime = hour;
  }
  // Convert 12 o'clock
  else if (appt.hour == 12 and appt.pm) {
    hourIn24hourTime = 12;
  }
  // Convert all other pm times
  else {
    hourIn24hourTime = appt.hour + 12;
  }
  
  return hourIn24hourTime;
}
 