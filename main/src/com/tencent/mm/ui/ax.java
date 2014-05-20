package com.tencent.mm.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;

final class ax extends Handler
{
  ax(LauncherUITabView paramLauncherUITabView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    aa.v("MicroMsg.LauncherUITabView", "onMainTabClick");
    LauncherUITabView.b(this.gmH).mt(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ax
 * JD-Core Version:    0.6.2
 */