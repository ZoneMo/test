package com.tencent.mm.ui.base;

import android.os.Handler;
import android.os.Message;
import android.view.View;

final class ci extends Handler
{
  ci(MMPullDownView paramMMPullDownView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (MMPullDownView.a(this.gBs))
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      MMPullDownView.g(this.gBs);
      return;
      if (MMPullDownView.b(this.gBs) != null)
        MMPullDownView.b(this.gBs).VZ();
      if (MMPullDownView.c(this.gBs).getVisibility() == 0)
      {
        this.gBs.scrollTo(0, MMPullDownView.d(this.gBs));
        continue;
        if (MMPullDownView.e(this.gBs) != null)
          MMPullDownView.e(this.gBs).Mf();
        if (MMPullDownView.f(this.gBs).getVisibility() == 0)
          this.gBs.scrollTo(0, MMPullDownView.d(this.gBs));
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ci
 * JD-Core Version:    0.6.2
 */