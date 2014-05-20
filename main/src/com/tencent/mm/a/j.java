package com.tencent.mm.a;

public final class j extends Number
{
  private int uin = 0;

  public j(int paramInt)
  {
    this.uin = paramInt;
  }

  public j(long paramLong)
  {
    this.uin = ((int)(0xFFFFFFFF & paramLong));
  }

  public static int aw(String paramString)
  {
    try
    {
      int i = new j(Long.valueOf(paramString).longValue()).intValue();
      return i;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public static String getString(int paramInt)
  {
    return new j(paramInt).toString();
  }

  public final double doubleValue()
  {
    return 0.0D + (0L | this.uin);
  }

  public final float floatValue()
  {
    return (float)(0.0D + (0L | this.uin));
  }

  public final int intValue()
  {
    return this.uin;
  }

  public final long longValue()
  {
    return 0xFFFFFFFF & this.uin;
  }

  public final String toString()
  {
    return String.valueOf(0xFFFFFFFF & this.uin);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.a.j
 * JD-Core Version:    0.6.2
 */