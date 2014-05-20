package com.tencent.mm.ui;

public final class l
{
  public Object fc;
  public int gkR;
  public Object gkS;

  public l(Object paramObject, int paramInt)
  {
    this.fc = paramObject;
    this.gkR = paramInt;
    this.gkS = null;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    l locall;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        locall = (l)paramObject;
        if (this.gkR != locall.gkR)
          return false;
        if (this.fc != null)
          break;
      }
      while (locall.fc == null);
      return false;
    }
    while (this.fc.equals(locall.fc));
    return false;
  }

  public final int hashCode()
  {
    int i = 31 * (31 + this.gkR);
    if (this.fc == null);
    for (int j = 0; ; j = this.fc.hashCode())
      return j + i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.l
 * JD-Core Version:    0.6.2
 */