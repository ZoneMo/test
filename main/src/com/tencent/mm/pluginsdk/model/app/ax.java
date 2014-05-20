package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class ax
  implements Runnable
{
  ax(aw paramaw, x paramx, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    aw.DY();
    int j;
    long l1;
    if (this.cmw.getType() == 222)
    {
      aa.d("MicroMsg.SceneAppMsg", "onSceneEnd  SendAppMsg errtype:" + this.cmy + " errCode:" + this.cmz);
      j = 0;
      l1 = -1L;
      long l2 = 0L;
      if ((l1 != -1L) && (this.fhT.cBl.get(Long.valueOf(l1)) != null))
      {
        l2 = ((k)this.fhT.cBl.get(Long.valueOf(l1))).qh();
        this.fhT.cBl.remove(Long.valueOf(l1));
      }
      aa.d("MicroMsg.SceneAppMsg", "onSceneEnd SceneType:" + this.cmw.getType() + " errtype:" + this.cmy + " errCode:" + this.cmz + " retCode:" + j + " rowid:" + l1 + " time:" + l2);
      if ((this.cmy != 3) || (j == 0))
        break label571;
      aw.c(this.fhT);
      label238: aa.d("MicroMsg.SceneAppMsg", "onSceneEnd  inCnt:" + aw.Ea() + " stop:" + aw.d(this.fhT) + " running:" + aw.e(this.fhT) + " recving:" + aw.f(this.fhT) + " sending:" + aw.g(this.fhT));
      if (aw.d(this.fhT) <= 0)
        break label590;
      aw.h(this.fhT);
    }
    while (true)
    {
      aw.DZ();
      return;
      if (this.cmw.getType() == 221)
      {
        aw.a(this.fhT);
        long l3 = ((ab)this.cmw).apX();
        int k = ((ab)this.cmw).DC();
        l1 = l3;
        j = k;
        break;
      }
      if (this.cmw.getType() == 220)
      {
        aw.b(this.fhT);
        l1 = ((aq)this.cmw).apX();
        int i = ((aq)this.cmw).DC();
        String str = ((aq)this.cmw).oJ();
        if ((!((aq)this.cmw).aqe()) && (!cj.hX(str)))
        {
          a locala = new a();
          ba.HF().b(l1, locala);
          if (locala.gfy == l1)
          {
            s.e(locala.field_msgInfoId, str);
            aw.bv(locala.field_msgInfoId);
          }
        }
        j = i;
        break;
      }
      aa.e("MicroMsg.SceneAppMsg", "onSceneEnd Error SceneType:" + this.cmw.getType());
      aw.DZ();
      return;
      label571: if (this.cmy == 0)
        break label238;
      aw.a(this.fhT, 0);
      break label238;
      label590: if ((!aw.g(this.fhT)) && (!aw.f(this.fhT)))
        aw.i(this.fhT);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ax
 * JD-Core Version:    0.6.2
 */