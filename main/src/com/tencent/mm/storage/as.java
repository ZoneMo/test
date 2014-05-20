package com.tencent.mm.storage;

import junit.framework.Assert;

final class as
{
  private long cpM;
  private long gin;
  private long gio;
  private int gip;
  private String name;

  public as(int paramInt, String paramString, long paramLong1, long paramLong2)
  {
    boolean bool2;
    if ((paramString != null) && (paramString.length() > 0))
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (paramLong2 < paramLong1)
        break label72;
    }
    while (true)
    {
      Assert.assertTrue(bool1);
      this.name = paramString;
      this.cpM = paramLong1;
      this.gin = paramLong1;
      this.gio = paramLong2;
      this.gip = paramInt;
      return;
      bool2 = false;
      break;
      label72: bool1 = false;
    }
  }

  public final long aCV()
  {
    return this.cpM;
  }

  public final void aCW()
  {
    this.cpM = (1L + this.cpM);
    if ((this.cpM >= this.gin) && (this.cpM <= this.gio));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      return;
    }
  }

  public final int aCX()
  {
    return this.gip;
  }

  public final boolean bY(long paramLong)
  {
    return (paramLong >= this.gin) && (paramLong <= this.gio);
  }

  public final void dy(int paramInt)
  {
    this.cpM = paramInt;
  }

  public final String getName()
  {
    return this.name;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.as
 * JD-Core Version:    0.6.2
 */