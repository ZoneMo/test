package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.n.ac;
import com.tencent.mm.storage.i;
import com.tencent.mm.z.f;

final class je
  implements Runnable
{
  je(ChattingUI paramChattingUI, long paramLong)
  {
  }

  public final void run()
  {
    if (ChattingUI.D(this.gPG))
      return;
    if ((this.gPG.gMi.getCount() == 0) && (i.tA(this.gPG.aJe())))
    {
      ct localct = ct.vB();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1);
      localct.a(10076, arrayOfObject);
    }
    long l = this.dPU;
    f localf = new f(l);
    be.uA().d(localf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.je
 * JD-Core Version:    0.6.2
 */