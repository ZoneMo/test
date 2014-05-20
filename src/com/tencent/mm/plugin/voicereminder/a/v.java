package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.modelvoice.p;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Map;

final class v
  implements Runnable
{
  v(u paramu, x paramx, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    u.DY();
    int i;
    Object localObject;
    if (this.cmw.getType() == 128)
    {
      u.a(this.ePp);
      String str2 = ((p)this.cmw).getFileName();
      i = ((p)this.cmw).DC();
      localObject = str2;
      long l = 0L;
      if ((localObject != null) && (this.ePp.cBl.get(localObject) != null))
      {
        l = ((k)this.ePp.cBl.get(localObject)).qh();
        this.ePp.cBl.remove(localObject);
      }
      aa.d("MicroMsg.VoiceRemindService", "onSceneEnd SceneType:" + this.cmw.getType() + " errtype:" + this.cmy + " errCode:" + this.cmz + " retCode:" + i + " file:" + (String)localObject + " time:" + l);
      if ((this.cmy != 3) || (i == 0))
        break label406;
      u.c(this.ePp);
      label217: aa.d("MicroMsg.VoiceRemindService", "onSceneEnd  inCnt:" + u.Ea() + " stop:" + u.d(this.ePp) + " running:" + u.e(this.ePp) + " recving:" + u.f(this.ePp) + " sending:" + u.g(this.ePp));
      if (u.d(this.ePp) <= 0)
        break label425;
      u.h(this.ePp);
    }
    while (true)
    {
      u.DZ();
      return;
      if (this.cmw.getType() == 329)
      {
        u.b(this.ePp);
        String str1 = ((b)this.cmw).getFileName();
        i = ((b)this.cmw).DC();
        localObject = str1;
        break;
      }
      aa.e("MicroMsg.VoiceRemindService", "onSceneEnd Error SceneType:" + this.cmw.getType());
      u.DZ();
      return;
      label406: if (this.cmy == 0)
        break label217;
      u.a(this.ePp, 0);
      break label217;
      label425: if ((!u.g(this.ePp)) && (!u.f(this.ePp)))
        u.i(this.ePp);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.v
 * JD-Core Version:    0.6.2
 */