package com.tencent.mm.ui.chatting;

import android.view.View;

final class bc
  implements Runnable
{
  bc(bb parambb)
  {
  }

  public final void run()
  {
    if (this.gLP.targetView != null)
    {
      this.gLP.targetView.clearAnimation();
      this.gLP.gLO.aq(this.gLP.targetView);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bc
 * JD-Core Version:    0.6.2
 */