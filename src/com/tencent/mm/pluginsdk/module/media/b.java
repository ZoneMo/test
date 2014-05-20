package com.tencent.mm.pluginsdk.module.media;

public final class b
{
  public String content;
  private boolean fiQ;
  public long timestamp;

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(this.timestamp);
    arrayOfObject[1] = this.content;
    return String.format("[%d %s]", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.b
 * JD-Core Version:    0.6.2
 */