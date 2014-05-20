package com.tencent.mm.ui;

import com.tencent.mm.ah.h;
import com.tencent.mm.ah.j;
import com.tencent.mm.ah.k;
import com.tencent.mm.i.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.u;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

final class ae
  implements Runnable
{
  ae(LauncherUI paramLauncherUI)
  {
  }

  public final void run()
  {
    if (be.uz().sd() == 0)
    {
      aa.e("MicroMsg.LauncherUI", "Account not Ready!!!");
      return;
    }
    if (LauncherUI.a(this.gmk) == null)
    {
      aa.w("MicroMsg.LauncherUI", "set tag job, but tab view is null");
      return;
    }
    int m;
    if (!be.se())
    {
      aa.w("MicroMsg.UnreadCountHelper", "getFindTabUnreadCount, but mmcore not ready");
      m = 0;
      label51: LauncherUI.a(this.gmk).db(false);
      LauncherUI.a(this.gmk).my(m);
      if ((m <= 0) && ((0x8000 & v.tq()) == 0) && (au.a((Boolean)be.uz().sr().get(68384), true)) && (!au.hX((String)be.uz().sr().get(68377))))
        LauncherUI.a(this.gmk).db(true);
    }
    else
    {
      if ((0x8000 & v.tl()) != 0)
        break label336;
    }
    label336: for (int i = 0 + x.tU(); ; i = 0)
    {
      if ((0x200 & v.tq()) == 0);
      for (int j = 0 + k.Dz().Dr(); ; j = 0)
      {
        if ((0x100 & v.tq()) == 0)
        {
          j localj = k.DA();
          if (localj != null)
            j += localj.Dr();
        }
        int k = i + j;
        if (((0x8000 & v.tq()) == 0) && (aq.apA() != null))
          k += aq.apA().Dr();
        m = k;
        break label51;
        if ((m > 0) || (!com.tencent.mm.ak.a.qc("emoji")))
          break;
        boolean bool1 = i.rX().x(262147, 266244);
        boolean bool2 = i.rX().x(262149, 266244);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Boolean.valueOf(bool1);
        arrayOfObject[1] = Boolean.valueOf(bool2);
        aa.e("MicroMsg.LauncherUI", "NewBandage.hasNew(), NEW_BANDAGE_WATCHER_MORE_TAB_ENTRY newEmoji : %s, freeEmoji : %s", arrayOfObject);
        if ((!bool1) && (!bool2))
          break;
        LauncherUI.a(this.gmk).db(true);
        return;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ae
 * JD-Core Version:    0.6.2
 */