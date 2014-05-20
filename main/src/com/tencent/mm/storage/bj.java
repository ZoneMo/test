package com.tencent.mm.storage;

import com.tencent.mm.protocal.a.mi;

public final class bj
{
  private mi giJ;
  private int key;
  private String value;

  public bj()
  {
    this.key = 0;
    this.value = "";
    this.giJ = new mi();
    this.giJ.fAs = 0;
    this.giJ.fNk = "";
  }

  public bj(int paramInt, String paramString)
  {
    this.key = paramInt;
    this.value = paramString;
    this.giJ = new mi();
    this.giJ.fAs = paramInt;
    this.giJ.fNk = paramString;
  }

  public final String aDc()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(this.key);
    localStringBuffer.append(",");
    localStringBuffer.append(this.value);
    return localStringBuffer.toString();
  }

  public final mi aDd()
  {
    return this.giJ;
  }

  public final void vu(String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    this.giJ.fAs = Integer.valueOf(arrayOfString[0]).intValue();
    this.giJ.fNk = arrayOfString[1];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bj
 * JD-Core Version:    0.6.2
 */