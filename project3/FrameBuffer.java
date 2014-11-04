import java.util.HashMap;

public class FrameBuffer{
  private int buffer_size;
  private HashMap<Integer, Frame> buffer;

  public FrameBuffer(int size){
    buffer_size = size;
    buffer = new HashMap<Integer, Frame>(buffer_size);
  }

  public Frame get(int key){
    return buffer.get(key);
  }

  public boolean put(int key){
    if (this.isFull())
      return false;
    buffer_size--;
    Frame newFrame = new Frame();
    buffer.put(key, newFrame);
    return true;
  }

  public boolean contains(int key){
    return buffer.containsKey(key);
  }

  public boolean markDirty(int key){
    Frame old;

    if((old = buffer.get(key)) == null)
      return false;

    old.dirty = true;

    if(buffer.put(key, old) == null){
      System.out.println("Fatal Error In FrameBuffer");
      System.exit(1);
    }

    return true;
  }

  public boolean markRef(int key){
    Frame old;

    if((old = buffer.get(key)) == null)
      return false;

    old.ref = true;

    if(buffer.put(key, old) == null){
      System.out.println("Fatal Error In FrameBuffer");
      System.exit(1);
    }

    return true;
  }

  public boolean isFull(){
    return buffer_size == 0;
  }

  public boolean isEmpty(){
    return buffer.isEmpty();
  }

  public int getSize(){
    return buffer_size;
  }

  private class Frame{
    boolean dirty;
    boolean ref;

    public Frame(){
      dirty = false;
      ref   = false;
    }
  }
}
