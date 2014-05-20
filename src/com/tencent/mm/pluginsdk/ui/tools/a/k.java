package com.tencent.mm.pluginsdk.ui.tools.a;

public final class k
{
  public static final k fwk = new k(4201, 4096, 1);
  public static final k fwl = new k(1033, 1024, 1);
  public static final k fwm = new k(67, 64, 1);
  public static final k fwn = new k(19, 16, 1);
  public static final k fwo = new k(285, 256, 0);
  public static final k fwp = localk;
  public static final k fwq = localk;
  public static final k fwr = fwm;
  private boolean cgf = false;
  private int[] fws;
  private int[] fwt;
  private l fwu;
  private l fwv;
  private final int fww;
  private final int fwx;
  private final int size;

  static
  {
    k localk = new k(301, 256, 1);
  }

  private k(int paramInt1, int paramInt2, int paramInt3)
  {
    this.fww = paramInt1;
    this.size = paramInt2;
    this.fwx = paramInt3;
    if (paramInt2 <= 0)
      avc();
  }

  static int aT(int paramInt1, int paramInt2)
  {
    return paramInt1 ^ paramInt2;
  }

  private void avc()
  {
    this.fws = new int[this.size];
    this.fwt = new int[this.size];
    int i = 0;
    int j = 1;
    while (i < this.size)
    {
      this.fws[i] = j;
      j <<= 1;
      if (j >= this.size)
        j = (j ^ this.fww) & -1 + this.size;
      i++;
    }
    for (int k = 0; k < -1 + this.size; k++)
      this.fwt[this.fws[k]] = k;
    this.fwu = new l(this, new int[] { 0 });
    this.fwv = new l(this, new int[] { 1 });
    this.cgf = true;
  }

  private void checkInit()
  {
    if (!this.cgf)
      avc();
  }

  final l aS(int paramInt1, int paramInt2)
  {
    checkInit();
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.fwu;
    int[] arrayOfInt = new int[paramInt1 + 1];
    arrayOfInt[0] = paramInt2;
    return new l(this, arrayOfInt);
  }

  final int aU(int paramInt1, int paramInt2)
  {
    checkInit();
    if ((paramInt1 == 0) || (paramInt2 == 0))
      return 0;
    return this.fws[((this.fwt[paramInt1] + this.fwt[paramInt2]) % (-1 + this.size))];
  }

  final l avd()
  {
    checkInit();
    return this.fwu;
  }

  public final int ave()
  {
    return this.fwx;
  }

  final int kV(int paramInt)
  {
    checkInit();
    return this.fws[paramInt];
  }

  final int kW(int paramInt)
  {
    checkInit();
    if (paramInt == 0)
      throw new IllegalArgumentException();
    return this.fwt[paramInt];
  }

  final int kX(int paramInt)
  {
    checkInit();
    if (paramInt == 0)
      throw new ArithmeticException();
    return this.fws[(-1 + (this.size - this.fwt[paramInt]))];
  }

  public final String toString()
  {
    return "GF(0x" + Integer.toHexString(this.fww) + ',' + this.size + ')';
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.k
 * JD-Core Version:    0.6.2
 */