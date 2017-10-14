public class Person {
  private IntList id;
  private FloatList lat;
  private FloatList lon;
  private StringList date;
  private StringList time;
  private StringList transport;
  Location where;

  //constructor
  public Person() {
    id =new IntList();
    lat = new FloatList();
    lon = new FloatList();
    date = new StringList();
    time = new StringList();
    transport = new StringList();
  }

  private void setPerson(Float lat1, Float lon1, String date1, String time1, String transport1) {
    id.append(id.size());
    lat.append(lat1);
    lon.append(lon1);
    date.append(date1);
    time.append(time1);
    transport.append(transport1);
  }
  
  private int getLength() {
    return id.size();
  }   

  private Float getLat(int id) {
    return lat.get(id);
  }

  private Float getLon(int id) {
    return lon.get(id);
  }

  private String getDate(int id) {
     return date.get(id);  
  }

  private String getTime(int id) {
    return time.get(id);
  }

  private String getTransport(int id) {
    return transport.get(id);
  }
  
  private Location getLocation(int id){
   where = new Location(getLat(id),getLon(id));
   return where;
 }
}

public void readFile(){
  Table table;
  table = loadTable("label_file.csv");
  traj = new ArrayList<Person>();
  Person person1 = new Person();
  int id = 0;
  for(TableRow rows : table.rows()){
    int thisID = rows.getInt(0);
    //if ids are the same  
    if(id == thisID){
       person1.setPerson(rows.getFloat(1),rows.getFloat(2),rows.getString(3),rows.getString(4),rows.getString(5));
    } else{
      if(id != 0)
        traj.add(person1); // add arraylist of this person into entire traj
      person1 = new Person();
      person1.setPerson(rows.getFloat(1),rows.getFloat(2),rows.getString(3),rows.getString(4),rows.getString(5));
      id = thisID;
    }
  }
  
}
