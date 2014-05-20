package com.tencent.a.a;

public final class c
{
  public String XZ = "GBK";
  public byte[] data;

  public final String toString()
  {
    try
    {
      String str = new String(this.data, this.XZ);
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.c
 * JD-Core Version:    0.6.2
 */