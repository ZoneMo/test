package com.tencent.mm.ui.player;

import com.tencent.mm.c.a.gg;
import com.tencent.mm.c.a.gi;
import com.tencent.mm.c.a.x;
import com.tencent.mm.c.a.y;
import com.tencent.mm.c.a.z;
import com.tencent.mm.pluginsdk.model.b;
import com.tencent.mm.protocal.a.fx;
import com.tencent.mm.protocal.a.fy;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.v;

final class g
  implements v
{
  g(f paramf)
  {
  }

  public final void bo(int paramInt)
  {
    if (paramInt != 0)
      return;
    x localx = new x();
    boolean bool;
    if (0L != MusicDetailUI.a(this.hdc.hdb))
      bool = b.a(localx, MusicDetailUI.a(this.hdc.hdb));
    while (bool)
    {
      localx.bMl.bMn.axI().se("");
      localx.bMl.bMn.axI().sc("");
      localx.bMl.bMn.axI().ls(10);
      a.ayH().f(localx);
      if (localx.bMm.ret == 0)
      {
        h.an(this.hdc.hdb.aal(), this.hdc.hdb.getString(2131167821));
        return;
        gg localgg = new gg();
        localgg.bQD.bQF = MusicDetailUI.b(this.hdc.hdb);
        localgg.bQD.bQC = localx;
        a.ayH().f(localgg);
        bool = localgg.bQE.bMh;
      }
      else
      {
        h.c(this.hdc.hdb.aal(), 2131167829, 2131167946);
        return;
      }
    }
    if (localx.bMl.type == 0)
      localx.bMl.type = 2131167827;
    h.c(this.hdc.hdb.aal(), localx.bMl.type, 2131167946);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.g
 * JD-Core Version:    0.6.2
 */