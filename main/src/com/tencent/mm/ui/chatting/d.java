package com.tencent.mm.ui.chatting;

import android.widget.ProgressBar;
import com.tencent.mm.n.n;
import com.tencent.mm.n.x;

final class d
  implements n
{
  d(AppAttachDownloadUI paramAppAttachDownloadUI)
  {
  }

  public final void a(int paramInt1, int paramInt2, x paramx)
  {
    if (paramInt2 == 0);
    for (float f = 0.0F; ; f = 100.0F * paramInt1 / paramInt2)
    {
      AppAttachDownloadUI.f(this.gKc).setProgress((int)f);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.d
 * JD-Core Version:    0.6.2
 */