package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class rx extends com.tencent.mm.am.a
{
  private int fUg;
  private boolean fUh;

  protected static boolean a(a.a.a.a.a parama, rx paramrx, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
    }
    paramrx.lv(parama.aPP());
    return true;
  }

  private rx ayl()
  {
    if (!this.fUh)
      throw new b("Not all required fields were included (false = not included in message),  uiVal:" + this.fUh);
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.bx(1, this.fUg);
  }

  public final int ayk()
  {
    return this.fUg;
  }

  public final rx lv(int paramInt)
  {
    this.fUg = paramInt;
    this.fUh = true;
    return this;
  }

  public final int ns()
  {
    return 0 + (0 + a.a.a.a.bq(1, this.fUg));
  }

  public final byte[] toByteArray()
  {
    ayl();
    return super.toByteArray();
  }

  public final String toString()
  {
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("")).append(getClass().getName()).append("(").toString())).append("uiVal = ").append(this.fUg).append("   ").toString() + ")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rx
 * JD-Core Version:    0.6.2
 */