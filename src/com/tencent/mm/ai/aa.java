package com.tencent.mm.ai;

import com.tencent.mm.n.x;
import java.util.Map;

final class aa
  implements Runnable
{
  aa(z paramz, x paramx, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    z.DY();
    int i;
    Object localObject;
    if (this.cmw.getType() == 150)
    {
      z.a(this.cBq);
      String str2 = ((d)this.cmw).getFileName();
      y.cBj = str2;
      int j = ((d)this.cmw).DC();
      z.b(this.cBq);
      i = j;
      localObject = str2;
    }
    while (true)
    {
      long l = 0L;
      if ((localObject != null) && (this.cBq.cBl.get(localObject) != null))
      {
        l = ((com.tencent.mm.compatible.g.k)this.cBq.cBl.get(localObject)).qh();
        this.cBq.cBl.remove(localObject);
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VideoService", "onSceneEnd SceneType:" + this.cmw.getType() + " errtype:" + this.cmy + " errCode:" + this.cmz + " retCode:" + i + " file:" + (String)localObject + " time:" + l);
      if ((this.cmy == 3) && (i != 0))
      {
        z.e(this.cBq);
        label234: com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.VideoService", "onSceneEnd  inCnt:" + z.Ea() + " stop:" + z.f(this.cBq) + " running:" + z.g(this.cBq) + " recving:" + z.h(this.cBq) + " sending:" + z.i(this.cBq));
        if (z.f(this.cBq) <= 0)
          break label488;
        z.j(this.cBq);
      }
      while (true)
      {
        z.DZ();
        return;
        if (this.cmw.getType() == 149)
        {
          z.c(this.cBq);
          z.d(this.cBq);
          if ((this.cmw instanceof g))
          {
            String str1 = ((g)this.cmw).getFileName();
            i = ((g)this.cmw).DC();
            localObject = str1;
            break;
          }
          if (!(this.cmw instanceof k))
            break label518;
          localObject = ((k)this.cmw).getFileName();
          i = 0;
          break;
        }
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.VideoService", "onSceneEnd Error SceneType:" + this.cmw.getType());
        z.DZ();
        return;
        if (this.cmy == 0)
          break label234;
        z.a(this.cBq, 0);
        break label234;
        label488: if ((!z.i(this.cBq)) && (!z.h(this.cBq)))
          z.k(this.cBq);
      }
      label518: i = 0;
      localObject = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.aa
 * JD-Core Version:    0.6.2
 */