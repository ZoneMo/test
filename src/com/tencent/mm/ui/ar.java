package com.tencent.mm.ui;

import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class ar extends g
{
  ar(LauncherUI paramLauncherUI)
  {
  }

  public final boolean a(e parame)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = parame.toString();
    aa.f("MicroMsg.LauncherUI", "appTagUnreadChangeListener, event:%s", arrayOfObject);
    this.gmk.aEu();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ar
 * JD-Core Version:    0.6.2
 */