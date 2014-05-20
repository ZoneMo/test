package com.tencent.map.location;

public final class m
  implements Cloneable
{
  public int Uc = 0;
  public int Ud = 0;
  public int Um = 0;
  public int Un = 0;
  public int Uo = 2147483647;
  public int a = 0;
  public int b = 0;
  public int g = 2147483647;

  public m(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.Uc = paramInt3;
    this.Ud = paramInt4;
    this.Um = paramInt5;
    this.Un = paramInt6;
    this.g = paramInt7;
    this.Uo = paramInt8;
  }

  public final Object clone()
  {
    try
    {
      m localm = (m)super.clone();
      return localm;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.m
 * JD-Core Version:    0.6.2
 */