package com.tencent.mm.ui.chatting;

import android.content.Context;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.storage.ak;
import java.util.Iterator;
import java.util.List;

final class bk
  implements bw
{
  bk(Context paramContext, String paramString, Runnable paramRunnable)
  {
  }

  public final boolean ve()
  {
    Iterator localIterator = bh.aIZ().gMg.iterator();
    while (localIterator.hasNext())
    {
      ak localak = (ak)localIterator.next();
      bh.d(this.cGV, this.ckt, localak, bh.aIZ().gJU);
    }
    return true;
  }

  public final boolean vf()
  {
    int i = 0;
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(5);
    arrayOfObject[1] = Integer.valueOf(bh.aIZ().gMg.size());
    int j = bh.aIZ().gMg.size();
    List localList = bh.aIZ().gMg;
    if (localList == null)
    {
      aa.w("MicroMsg.ChattingEditModeLogic", "get invalid send to friend msg num error, select item empty");
      arrayOfObject[2] = Integer.valueOf(j - i);
      localm.d(10811, arrayOfObject);
      if (this.dTW != null)
      {
        aa.v("MicroMsg.ChattingEditModeRetransmitMsg", "call back is not null, do call back");
        this.dTW.run();
      }
      return true;
    }
    Iterator localIterator = localList.iterator();
    int k = 0;
    label123: if (localIterator.hasNext())
    {
      ak localak = (ak)localIterator.next();
      if ((!localak.aBV()) && (!bg.z(localak)) && (!localak.aCb()) && (!bg.A(localak)))
        break label196;
    }
    label196: for (int m = k + 1; ; m = k)
    {
      k = m;
      break label123;
      i = k;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bk
 * JD-Core Version:    0.6.2
 */