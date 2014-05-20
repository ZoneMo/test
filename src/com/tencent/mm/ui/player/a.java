package com.tencent.mm.ui.player;

import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.protocal.a.or;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class a
  implements Runnable
{
  a(MainMusicPlayerUI paramMainMusicPlayerUI)
  {
  }

  public final void run()
  {
    int i = 1;
    if ((MainMusicPlayerUI.a(this.hcV) == null) || (cj.hX(MainMusicPlayerUI.b(this.hcV).fQd)))
    {
      be.nS().oB();
      if (be.nS().oD() <= 0)
      {
        aa.e("MicroMsg.MainMusicPlayerUI", "can't get songId ");
        m.dZN.j(10911, "1");
        i = 0;
      }
    }
    while (true)
    {
      MainMusicPlayerUI localMainMusicPlayerUI = this.hcV;
      int j = 0;
      if (i != 0)
        j = 8;
      MainMusicPlayerUI.a(localMainMusicPlayerUI, j);
      return;
      MainMusicPlayerUI.a(this.hcV, be.nS().oA());
      MainMusicPlayerUI.a(this.hcV, new com.tencent.mm.aa.a(MainMusicPlayerUI.c(this.hcV).fMa, MainMusicPlayerUI.d(this.hcV).fQc));
      Object[] arrayOfObject = new Object[i];
      arrayOfObject[0] = Integer.valueOf(be.nS().oD());
      aa.e("MicroMsg.MainMusicPlayerUI", "request syn lyric..: songid: %d", arrayOfObject);
      be.uA().a(520, this.hcV);
      be.uA().d(MainMusicPlayerUI.e(this.hcV));
      continue;
      i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.a
 * JD-Core Version:    0.6.2
 */