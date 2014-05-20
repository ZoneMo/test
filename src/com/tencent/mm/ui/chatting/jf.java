package com.tencent.mm.ui.chatting;

import com.tencent.mm.compatible.c.p;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.w;
import com.tencent.mm.modelsimple.al;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.s.a;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.storage.cd;
import com.tencent.mm.storage.i;
import com.tencent.mm.z.f;

final class jf
  implements Runnable
{
  jf(ChattingUI paramChattingUI, String paramString, int paramInt)
  {
  }

  public final void run()
  {
    if (ChattingUI.D(this.gPG))
    {
      this.gPG.Ch();
      a locala = new a(ChattingUI.l(this.gPG).getUsername(), this.gQj);
      be.uA().d(locala);
    }
    String str1;
    do
    {
      return;
      if ((this.gPG.gMi.getCount() == 0) && (i.tA(this.gPG.aJe())))
      {
        ct localct = ct.vB();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(1);
        localct.a(10076, arrayOfObject);
      }
      str1 = this.gPG.aJe();
      String str2 = this.gQj;
      int i = w.dd(str1);
      f localf = new f(str1, str2, i);
      be.uA().d(localf);
    }
    while (!w.da(str1));
    al localal = new al(au.FI(), this.gQj + " key " + cd.aDp() + " local key " + cd.aDo() + "NetType:" + ba.bl(this.gPG.getApplicationContext()) + " hasNeon: " + p.pP() + " isArmv6: " + p.pR() + " isArmv7: " + p.pQ());
    be.uA().d(localal);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jf
 * JD-Core Version:    0.6.2
 */