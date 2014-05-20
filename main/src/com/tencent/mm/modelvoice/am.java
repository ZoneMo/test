package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Map;

final class am
  implements Runnable
{
  am(al paramal, x paramx, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    al.En();
    int i;
    Object localObject;
    if (this.cmw.getType() == 128)
    {
      al.a(this.cCy);
      String str2 = ((p)this.cmw).getFileName();
      i = ((p)this.cmw).DC();
      localObject = str2;
      long l = 0L;
      if ((localObject != null) && (this.cCy.cBl.get(localObject) != null))
      {
        l = ((k)this.cCy.cBl.get(localObject)).qh();
        this.cCy.cBl.remove(localObject);
      }
      aa.d("MicroMsg.SceneVoice", "onSceneEnd SceneType:" + this.cmw.getType() + " errtype:" + this.cmy + " errCode:" + this.cmz + " retCode:" + i + " file:" + (String)localObject + " time:" + l);
      if ((this.cmy != 3) || (i == 0))
        break label405;
      al.c(this.cCy);
      label217: aa.d("MicroMsg.SceneVoice", "onSceneEnd  inCnt:" + al.Ep() + " stop:" + al.d(this.cCy) + " running:" + al.e(this.cCy) + " recving:" + al.f(this.cCy) + " sending:" + al.g(this.cCy));
      if (al.d(this.cCy) <= 0)
        break label424;
      al.h(this.cCy);
    }
    while (true)
    {
      al.Eo();
      return;
      if (this.cmw.getType() == 127)
      {
        al.b(this.cCy);
        String str1 = ((s)this.cmw).getFileName();
        i = ((s)this.cmw).DC();
        localObject = str1;
        break;
      }
      aa.e("MicroMsg.SceneVoice", "onSceneEnd Error SceneType:" + this.cmw.getType());
      al.Eo();
      return;
      label405: if (this.cmy == 0)
        break label217;
      al.a(this.cCy, 0);
      break label217;
      label424: if ((!al.g(this.cCy)) && (!al.f(this.cCy)))
        al.i(this.cCy);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.am
 * JD-Core Version:    0.6.2
 */