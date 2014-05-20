package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.aa;

final class cv
  implements Runnable
{
  cv(MMSlideDelView paramMMSlideDelView)
  {
  }

  public final void run()
  {
    this.gBQ.setPressed(false);
    aa.v("MicroMsg.MMSlideDelView", "onClick");
    MMSlideDelView.b(this.gBQ).i(this.gBQ, MMSlideDelView.a(this.gBQ));
    this.gBQ.aHu();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.cv
 * JD-Core Version:    0.6.2
 */