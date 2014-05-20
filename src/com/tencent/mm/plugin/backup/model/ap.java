package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.m;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.LinkedList;

final class ap
  implements Runnable
{
  ap(am paramam)
  {
  }

  public final void run()
  {
    Iterator localIterator = am.a(this.cKZ).iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if ((localaq.type == 2) && (localaq.obj != null) && ((localaq.obj instanceof String)))
      {
        String str = (String)localaq.obj;
        aa.d("MicroMsg.RecoverDelayData", "getContact" + str);
        ar.tZ().jdMethod_do(str);
      }
      else if ((localaq.type == 1) && (localaq.obj != null) && ((localaq.obj instanceof String)))
      {
        ba.aqh().qn((String)localaq.obj);
      }
    }
    am.a(this.cKZ).clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ap
 * JD-Core Version:    0.6.2
 */