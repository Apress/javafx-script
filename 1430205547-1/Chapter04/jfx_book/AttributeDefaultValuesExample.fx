/*
 *  AttributeDefaultValuesExample.fx - An example that demonstrates what
 *  the default values of attributes are for each of the four basic data types
 *
 *  Developed 2007 by James L. Weaver (jim.weaver at lat-inc dot com)
 */
package jfx_book;

class AttributeDefaultValuesExample {
  attribute stri:String;
  attribute bool:Boolean;
  attribute inte:Integer;
  attribute numb:Number;
}

// Make an instance of the class and print each attribute's default value
var example = AttributeDefaultValuesExample{};
println("Default values for attributes having primitive data types:");
println("The String attribute has a default value of '{example.stri}'
    and example.stri.length() is:{example.stri.length()}");
println("The Boolean attribute has a default value of {example.bool}");
println("The Integer attribute has a default value of {example.inte}");
println("The Number attribute has a default value of {example.numb}");

  