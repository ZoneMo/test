package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.aa;

final class cw extends dd
  implements Runnable
{
  private cw(MMSlideDelView paramMMSlideDelView)
  {
    super(paramMMSlideDelView, (byte)0);
  }

  public final void run()
  {
    if ((arJ()) && (!MMSlideDelView.e(this.gBQ)))
    {
      aa.i("MicroMsg.MMSlideDelView", "is long press");
      if (this.gBQ.getParent() != null)
      {
        MMSlideDelView.f(this.gBQ);
        this.gBQ.performLongClick();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.cw
 * JD-Core Version:    0.6.2
 */