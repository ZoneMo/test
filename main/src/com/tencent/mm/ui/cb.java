package com.tencent.mm.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.af.e;
import com.tencent.mm.c.a.c;
import com.tencent.mm.c.a.fc;
import com.tencent.mm.c.a.fo;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.z.i;

final class cb
  implements az
{
  cb(MMAppMgr paramMMAppMgr)
  {
  }

  public final boolean ok()
  {
    if (MMAppMgr.a(this.gnZ) == MMAppMgr.b(this.gnZ))
      aa.d("MicroMsg.MMAppMgr", "status not changed, cur=" + MMAppMgr.a(this.gnZ));
    do
    {
      return true;
      MMAppMgr.a(this.gnZ, MMAppMgr.b(this.gnZ));
      if (!MMAppMgr.a(this.gnZ))
        break;
      aa.w("MicroMsg.MMAppMgr", "[ACTIVATED MODE]");
      if ((be.se()) && (!be.uG()))
      {
        be.uA().d(new i(12));
        be.uA().d(new com.tencent.mm.z.f());
        be.ut().o(new cc(this));
        ct localct = ct.vB();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(1);
        localct.a(19, arrayOfObject);
        e.CL().pause();
      }
      be.uA().U(true);
      be.uA().T(false);
      al.getContext().getSharedPreferences("notify_prep", 0).edit().putBoolean("longNoopIntervalFlag", false).commit();
    }
    while (MMAppMgr.c(this.gnZ).azG());
    MMAppMgr.c(this.gnZ).azn();
    return true;
    aa.w("MicroMsg.MMAppMgr", "[DEACTIVATED MODE]");
    MMAppMgr.a(this.gnZ, au.FE());
    MMAppMgr.a(this.gnZ, "desktop");
    if (be.se())
    {
      com.tencent.mm.al.a.rp(com.tencent.mm.al.a.avs());
      e.CL().resume();
      fc localfc = new fc();
      localfc.bPR.state = 0;
      com.tencent.mm.sdk.b.a.ayH().f(localfc);
      c localc = new c();
      localc.bLK.bLL = false;
      com.tencent.mm.sdk.b.a.ayH().f(localc);
      fo localfo = new fo();
      localfo.bQj.CZ = false;
      com.tencent.mm.sdk.b.a.ayH().f(localfo);
    }
    be.uA().U(false);
    if (!MMAppMgr.c(this.gnZ).azG())
      MMAppMgr.c(this.gnZ).azn();
    MMAppMgr.c(this.gnZ).bO(60000L);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cb
 * JD-Core Version:    0.6.2
 */