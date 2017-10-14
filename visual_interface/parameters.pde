import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import controlP5.*;

UnfoldingMap map;
Location beijing = new Location(39.960985f, 116.360746f);
ControlP5 cp5;

float maxPanningDistance = 30;
PVector bound = new PVector(1800, 1000);
int cx = 1200, cy = 900;
int radius = 100;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;
PImage img1;
color red = color(255,0,0);
 ArrayList<Person> traj;//traj is a arraylist of many arraylist of each person
