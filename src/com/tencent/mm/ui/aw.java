package com.tencent.mm.ui;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.c.a.dk;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;

final class aw
  implements View.OnClickListener
{
  private final long gmE = 300L;
  private long gmF = 0L;
  private int gmG = -1;

  aw(LauncherUITabView paramLauncherUITabView)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    if ((this.gmG == i) && (i == 0) && (System.currentTimeMillis() - this.gmF <= 300L))
    {
      aa.v("MicroMsg.LauncherUITabView", "onMainTabDoubleClick");
      LauncherUITabView.a(this.gmH).removeMessages(0);
      a.ayH().f(new dk());
      this.gmF = System.currentTimeMillis();
      this.gmG = i;
      return;
    }
    if (LauncherUITabView.b(this.gmH) != null)
    {
      if ((i != 0) || (this.gmG != 0))
      {
        this.gmF = System.currentTimeMillis();
        this.gmG = i;
        LauncherUITabView.b(this.gmH).mt(i);
        return;
      }
      LauncherUITabView.a(this.gmH).sendEmptyMessageDelayed(0, 300L);
    }
    this.gmF = System.currentTimeMillis();
    this.gmG = i;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ((Integer)paramView.getTag());
    aa.c("MicroMsg.LauncherUITabView", "on tab click, index %d, but listener is null", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.aw
 * JD-Core Version:    0.6.2
 */