package com.tencent.mm.ui;

import android.widget.PopupWindow.OnDismissListener;
import com.tencent.mm.sdk.platformtools.aa;

final class al
  implements PopupWindow.OnDismissListener
{
  al(LauncherUI paramLauncherUI)
  {
  }

  public final void onDismiss()
  {
    aa.v("MicroMsg.LauncherUI", "onDismiss");
    LauncherUI.aEF();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.al
 * JD-Core Version:    0.6.2
 */