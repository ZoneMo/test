package com.tencent.mm.model;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.bu;

final class cf
  implements Runnable
{
  cf(String paramString)
  {
  }

  public final void run()
  {
    Context localContext = al.getContext();
    if (localContext == null)
      aa.e("MicroMsg.NorMsgSource", "parseMsgSource context is null");
    cg localcg;
    do
    {
      return;
      String str = localContext.getApplicationInfo().sourceDir;
      localcg = new cg(this.cjn, str);
    }
    while (localcg.type <= 0);
    if (ce.vd() == null)
      ce.a(new bu(1, "MicroMsg.NorMsgSource"));
    ce.vd().c(localcg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cf
 * JD-Core Version:    0.6.2
 */