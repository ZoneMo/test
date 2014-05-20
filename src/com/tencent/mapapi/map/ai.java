package com.tencent.mapapi.map;

import android.os.Handler;
import android.os.Message;

final class ai extends ag
{
  private GeoPoint Wn = null;
  protected ah Wo = null;
  private Message Wp = null;
  private Runnable Wq = null;

  public ai(ah paramah)
  {
    this.Wo = paramah;
  }

  final void md()
  {
    this.Wn = null;
    this.Wo = null;
  }

  public final void run()
  {
    if (ah.a(this.Wo) != null)
    {
      ah.a(this.Wo).WW.mX().mo().a(this.Wn);
      this.Wo.F(false);
      if (this.Wq != null)
      {
        this.Wq.run();
        this.Wq = null;
      }
      if (this.Wp != null)
      {
        this.Wp.getTarget().sendMessage(this.Wp);
        this.Wp = null;
      }
      md();
    }
  }

  public final void u(int paramInt1, int paramInt2)
  {
    if (this.Wn == null)
    {
      this.Wn = new GeoPoint(paramInt1, paramInt2);
      return;
    }
    this.Wn.be(paramInt1);
    this.Wn.bd(paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.ai
 * JD-Core Version:    0.6.2
 */