package com.tencent.mm.ui.tools;

final class bv
{
  public long cpL;
  public long cpM;
  public int ctP;
  public int pos;

  public bv(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    this.cpL = paramLong1;
    this.cpM = paramLong2;
    this.ctP = paramInt1;
    this.pos = paramInt2;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bv));
    bv localbv;
    do
    {
      return false;
      localbv = (bv)paramObject;
    }
    while ((this.cpL != localbv.cpL) || (this.cpM != localbv.cpM) || (this.ctP != localbv.ctP) || (this.pos != localbv.pos));
    return true;
  }

  public final int hashCode()
  {
    return 31 * (int)(31L * (31L * this.cpL + this.cpM) + this.ctP) + this.pos;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[imgLocalId=");
    localStringBuilder.append(this.cpL);
    localStringBuilder.append(", msgLocalId=");
    localStringBuilder.append(this.cpM);
    localStringBuilder.append(", compressType=");
    localStringBuilder.append(this.ctP);
    localStringBuilder.append(", pos=");
    localStringBuilder.append(this.pos);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bv
 * JD-Core Version:    0.6.2
 */