package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.an;
import com.tencent.mm.c.a.ao;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

public final class d extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof an))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      return false;
    }
    an localan = (an)parame;
    k localk = l.F(localan.bMM.appId, true);
    if (localk == null)
    {
      aa.w("MicroMsg.SubCoreExtAgent", "app not reg, do nothing");
      localan.bMN.bMh = false;
      return true;
    }
    if (localk.field_status == 3)
    {
      aa.e("MicroMsg.SubCoreExtAgent", "app is in blacklist");
      localan.bMN.bMh = false;
    }
    if (!u.b(al.getContext(), localk, localan.bMM.bMO))
    {
      aa.e("MicroMsg.SubCoreExtAgent", "check app fail");
      localan.bMN.bMh = false;
    }
    localan.bMN.bMh = true;
    aa.i("MicroMsg.SubCoreExtAgent", "isAppidValid = true");
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.d
 * JD-Core Version:    0.6.2
 */