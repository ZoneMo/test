package com.tencent.mm.pluginsdk.ui.tools.a;

public final class v
{
  private final int fxd;
  private final u[] fxe;

  v(int paramInt, u[] paramArrayOfu)
  {
    this.fxd = paramInt;
    this.fxe = paramArrayOfu;
  }

  public final int avn()
  {
    return this.fxd;
  }

  public final int avo()
  {
    int i = 0;
    u[] arrayOfu = this.fxe;
    int j = arrayOfu.length;
    int k = 0;
    while (i < j)
    {
      k += arrayOfu[i].getCount();
      i++;
    }
    return k;
  }

  public final int avp()
  {
    return this.fxd * avo();
  }

  public final u[] avq()
  {
    return this.fxe;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.v
 * JD-Core Version:    0.6.2
 */