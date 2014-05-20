package com.tencent.mm.app;

import android.content.Context;
import com.tencent.mm.c.a.cy;
import com.tencent.mm.c.a.cz;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class o extends g
{
  o(WorkerProfile paramWorkerProfile)
  {
  }

  public final boolean a(e parame)
  {
    cy localcy = (cy)parame;
    Context localContext = localcy.bNZ.context;
    if (localContext == null)
      localContext = al.getContext();
    String str = localcy.bNZ.appId;
    WXMediaMessage localWXMediaMessage = localcy.bNZ.bOa;
    if (localContext == null)
    {
      aa.e("MicroMsg.AppInfoLogic", "launch app failed: context is null");
      return false;
    }
    if (cj.hX(str))
    {
      aa.e("MicroMsg.AppInfoLogic", "launch app failed: appid is null or nil");
      return false;
    }
    if (localWXMediaMessage == null)
    {
      aa.e("MicroMsg.AppInfoLogic", "launch app failed: wxMsg is null");
      return false;
    }
    k localk = l.F(str, true);
    if (localk == null)
    {
      aa.b("MicroMsg.AppInfoLogic", "get appinfo is null, appid is : [%s]", new Object[] { str });
      return false;
    }
    if (localk.field_status == 3)
    {
      aa.e("MicroMsg.AppInfoLogic", "requestAppShow fail, app is in blacklist, packageName = " + localk.field_packageName);
      return false;
    }
    l.a(localContext, localk.field_packageName, localWXMediaMessage, localk.field_openId);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.o
 * JD-Core Version:    0.6.2
 */