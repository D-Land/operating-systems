import java.util.HashMap;
import java.util.PriorityQueue;
import java.io.BufferedReader;
import java.io.FileReader;

public class TraceBuffer{
  private HashMap<Integer, PriorityQueue<Integer>> buffer;
  private String trace_filepath;

  public TraceBuffer(String filepath){
    trace_filepath = filepath;
    buffer = new HashMap<Integer, PriorityQueue<Integer>>();
  }

  private void parseTracefile(){
    String line;
    int page_number = 0;
    int line_number = 0;

    try{
      BufferedReader br = new BufferedReader(new FileReader(trace_filepath));
      while ((line = br.readLine()) != null){
        page_number = getPageNumber(line);
        this.put(page_number, line_number);
        line_number++;
      }
    }
    catch(Exception e){
      System.out.println("Fatal Error Parsing TraceFile");
    }
  }

  private int getPageNumber(String line){
    return 0;
  }

  private boolean put(int page_number, int line_number){
    PriorityQueue<Integer> pq;

    if((pq = buffer.get(page_number)) != null){
      pq.add(line_number);
    }
    else{
      pq = new PriorityQueue<Integer>();
      pq.add(line_number);
    }

    buffer.put(page_number, pq);
    return true;
  }

  public boolean contains(int key){
    return buffer.containsKey(key);
  }
}
