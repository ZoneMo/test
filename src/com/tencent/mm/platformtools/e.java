package com.tencent.mm.platformtools;

public enum e
{
  private final int value;

  static
  {
    e[] arrayOfe = new e[4];
    arrayOfe[0] = cGb;
    arrayOfe[1] = cGc;
    arrayOfe[2] = cGd;
    arrayOfe[3] = cGe;
  }

  private e(int arg3)
  {
    int j;
    this.value = j;
  }

  public static e eK(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return cGe;
    case 1:
      return cGb;
    case 2:
      return cGc;
    case 3:
    }
    return cGd;
  }

  public final int getValue()
  {
    return this.value;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.e
 * JD-Core Version:    0.6.2
 */