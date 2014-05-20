package com.tencent.mm.modelcdntran;

public class keep_ProgressInfo
{
  public int field_finishedLength;
  public int field_status;
  public int field_toltalLength;
  public String mediaId;

  public String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.mediaId;
    arrayOfObject[1] = Integer.valueOf(this.field_toltalLength);
    arrayOfObject[2] = Integer.valueOf(this.field_finishedLength);
    arrayOfObject[3] = Integer.valueOf(this.field_status);
    return String.format("id:%s total:%d finLen:%d status:%d", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.keep_ProgressInfo
 * JD-Core Version:    0.6.2
 */