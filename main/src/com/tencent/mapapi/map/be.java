package com.tencent.mapapi.map;

import java.util.ArrayList;
import java.util.List;

final class be
  implements bp
{
  private v WP = null;
  private v WQ = null;
  private bh WR;
  x WS = new bf(this);
  x WT = new bg(this);

  public be(bh parambh)
  {
    this.WR = parambh;
    this.WP = new v(1, this.WS);
    this.WQ = new v(2, this.WT);
    this.WP.lX();
    this.WQ.lX();
    this.WR.WW.a(this);
  }

  public final void G(boolean paramBoolean)
  {
    if ((this.WR == null) || (this.WR.WX == null));
    do
    {
      return;
      this.WR.WZ.mO();
      ArrayList localArrayList = new ArrayList();
      int i = this.WR.WX.Ua.size();
      for (int j = 0; j < i; j++)
      {
        ba localba = (ba)this.WR.WX.Ua.get(j);
        if (localba != null)
          localba.a(localArrayList, paramBoolean);
      }
      localArrayList.clear();
    }
    while ((this.WR.WW == null) || (this.WR.WW.mX() == null));
    this.WR.WW.mX().postInvalidate();
    this.WR.Xa.mu();
  }

  public final void bb(int paramInt)
  {
    if (this.WR.WW.UN == true)
      return;
    this.WQ.bb(paramInt);
  }

  public final void lX()
  {
    this.WR.WW.b(this);
    this.WQ.md();
    this.WP.me();
    this.WT = null;
    this.WS = null;
  }

  public final void mB()
  {
    int i = this.WR.WX.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ba localba = (ba)this.WR.WX.Ua.get(j);
      if (localba != null)
        localba.lX();
    }
  }

  public final void mN()
  {
    if (this.WR.WW.UN == true)
      return;
    this.WP.bb(1);
  }

  public final void ms()
  {
    this.WR.WW.G(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.be
 * JD-Core Version:    0.6.2
 */