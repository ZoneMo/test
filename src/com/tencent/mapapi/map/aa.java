package com.tencent.mapapi.map;

class aa
{
  public boolean UN = false;
  public final int Uc;
  public final int a;
  public final int b;

  public aa(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.Uc = paramInt3;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    aa localaa;
    do
    {
      return true;
      if (!(paramObject instanceof aa))
        return false;
      localaa = (aa)paramObject;
    }
    while ((this.a == localaa.a) && (this.b == localaa.b) && (this.Uc == localaa.Uc));
    return false;
  }

  public int hashCode()
  {
    return 7 * this.a + 11 * this.b + 13 * this.Uc;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append("-");
    localStringBuilder.append(this.b);
    localStringBuilder.append("-");
    localStringBuilder.append(this.Uc);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.aa
 * JD-Core Version:    0.6.2
 */