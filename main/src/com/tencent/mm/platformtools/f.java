package com.tencent.mm.platformtools;

public enum f
{
  private final int value;

  static
  {
    f[] arrayOff = new f[7];
    arrayOff[0] = cGg;
    arrayOff[1] = cGh;
    arrayOff[2] = cGi;
    arrayOff[3] = cGj;
    arrayOff[4] = cGk;
    arrayOff[5] = cGl;
    arrayOff[6] = cGm;
  }

  private f(int arg3)
  {
    int j;
    this.value = j;
  }

  public static f eL(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return cGm;
    case 1:
      return cGg;
    case 2:
      return cGh;
    case 3:
      return cGi;
    case 4:
      return cGj;
    case 5:
      return cGk;
    case 10000:
    }
    return cGl;
  }

  public final int getValue()
  {
    return this.value;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.f
 * JD-Core Version:    0.6.2
 */