package com.tencent.mm.plugin.whatsnew.ui;

import android.widget.ImageView;
import android.widget.RelativeLayout;

final class e
  implements Runnable
{
  e(d paramd)
  {
  }

  public final void run()
  {
    if (ThirdAnniversaryUI.e(this.ffH.ffF) != null)
      ThirdAnniversaryUI.e(this.ffH.ffF).clearAnimation();
    ThirdAnniversaryUI.c(this.ffH.ffF).setVisibility(8);
    ThirdAnniversaryUI.f(this.ffH.ffF).setVisibility(0);
    ThirdAnniversaryUI.f(this.ffH.ffF).startAnimation(this.ffH.ffG);
    ThirdAnniversaryUI.g(this.ffH.ffF);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.e
 * JD-Core Version:    0.6.2
 */