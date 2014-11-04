/* Author:  Andrew Land
 * Class:   CS1550
 * Project: 3
 */

public class vmsim {

  static int frames;
  static int accesses;
  static int faults;
  static int diskwrites;

  public static void main(String[] args) {
    init(args);
    printStatistics();
  }

  public static void init(String[] args){
    validArgs(args);
  }

  public static boolean validArgs(String[] args){
    if((args.length != 7  ||
        args.length != 5) ||
        args[0] != "-n"   ||
        args[2] != "-a"   ||
        !args[args.length-1].contains(".trace")
       ){
      alert();
    }
    if(!isNumeric(args[1]) || (args.length == 7 && !isNumeric(args[5])) ){
      alert();
    }
    // if(args[3] != "opt" && args[3] != "clock" 3\\\&& ){
    //   alert();
    // }
    return true;
  }

  public static boolean isNumeric(String s){
    return s.matches("\\d{1,9}$");
  }
  public static void alert(String s){
    System.out.println(s);
  }

  public static void alert(){
    System.out.println("ERROR");
    System.out.println("USAGE: vmsim –n <numframes> -a <opt|clock|nru|rand> [-r <refresh>] <tracefile>");
    System.exit(1);
  }

  public static void printStatistics(){
    System.out.println("Number of frames: " + frames);
    System.out.println("Total memory accesses: " + accesses);
    System.out.println("Total page faults: " + faults);
    System.out.println("Total writes to disk: " + diskwrites);
  }
}
