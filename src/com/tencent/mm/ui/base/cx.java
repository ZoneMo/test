package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.aa;

final class cx
  implements Runnable
{
  cx(MMSlideDelView paramMMSlideDelView)
  {
  }

  public final void run()
  {
    aa.v("MicroMsg.MMSlideDelView", "checkfortap");
    this.gBQ.setPressed(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.cx
 * JD-Core Version:    0.6.2
 */