package com.tencent.mm.ui;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

final class ah
  implements Runnable
{
  ah(LauncherUI paramLauncherUI)
  {
  }

  public final void run()
  {
    if (!be.se())
      aa.w("MicroMsg.UnreadCountHelper", "getAddrTabUnreadCount, but mmcore not ready");
    for (int i = 0; ; i = au.c((Integer)be.uz().sr().get(143618)))
    {
      LauncherUI.a(this.gmk).mx(i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ah
 * JD-Core Version:    0.6.2
 */