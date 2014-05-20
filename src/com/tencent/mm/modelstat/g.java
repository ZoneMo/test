package com.tencent.mm.modelstat;

import com.tencent.mm.ar.a;
import com.tencent.mm.ar.e;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.j;
import com.tencent.mm.network.a.d;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.xlog.LogLogicJni;
import com.tencent.mm.xlog.Xlog;
import java.util.Map;

public final class g extends d
  implements j
{
  public static void c(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (!be.se())
      return;
    switch (paramInt1)
    {
    case 6:
    case 7:
    default:
      return;
    case 4:
      aa.d("MicroMsg.NetStatMsgExtension", "recv bytes flow:" + paramInt3);
      if (paramBoolean)
      {
        k.j(paramInt3, 0, paramInt2);
        return;
      }
    case 5:
      aa.d("MicroMsg.NetStatMsgExtension", "send bytes flow:" + paramInt3);
      if (paramBoolean)
      {
        k.j(0, paramInt3, paramInt2);
        return;
      }
      k.k(0, paramInt3, paramInt2);
      return;
      k.k(paramInt3, 0, paramInt2);
      return;
    case 8:
    }
    am.sE("dns_failed_report");
  }

  public final com.tencent.mm.n.k a(l paraml)
  {
    if (!be.se())
      aa.e("MicroMsg.NetStatMsgExtension", "skip ipxx stat while account not set");
    String str1;
    Map localMap;
    do
    {
      do
      {
        return null;
        str1 = paraml.fzv.getString();
        aa.e("MicroMsg.NetStatMsgExtension", "onPreAddMessage %s", new Object[] { str1 });
      }
      while (cj.hX(str1));
      aa.appenderFlush();
      localMap = u.aL(str1, "cmd");
    }
    while (localMap == null);
    int i = cj.getInt((String)localMap.get(".cmd.upwd.$timespan"), -1);
    if (i > 0)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i);
      aa.e("MicroMsg.NetStatMsgExtension", "try upload watchdog timespan:%d", arrayOfObject2);
      WatchDogPushReceiver.Di();
      WatchDogPushReceiver.es(i);
      return null;
    }
    int j = cj.getInt((String)localMap.get(".cmd.trace.$code"), -1);
    if (j > 0)
    {
      String str3 = (String)localMap.get(".cmd.trace.$class");
      int m = cj.getInt((String)localMap.get(".cmd.trace.$size"), 0);
      int n = cj.getInt((String)localMap.get(".cmd.trace.$type"), 0);
      a.aDD().c(new e(str3, j, m, n));
      return null;
    }
    be.uA().uN().eu(str1);
    LogLogicJni.initLogInfo();
    MMProtocalJni.setProtocalJniLogLevel(new Xlog().getLogLevel());
    int k = cj.getInt((String)localMap.get(".cmd.updzh.$pt"), -1);
    String str2 = (String)localMap.get(".cmd.updzh.$pd");
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(k);
    arrayOfObject1[1] = str2;
    aa.e("MicroMsg.NetStatMsgExtension", "StackReportUploader pt:%d pd:%s", arrayOfObject1);
    be.ut().o(new h(this, k, str2));
    return null;
  }

  public final void a(int paramInt1, int paramInt2, String paramString1, int paramInt3, String paramString2, boolean paramBoolean)
  {
    be.ut().o(new i(this, paramInt1, paramInt2, paramString1, paramInt3, paramString2, paramBoolean));
  }

  public final void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.g
 * JD-Core Version:    0.6.2
 */