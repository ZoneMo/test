package com.tencent.mm.ui.transmit;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.model.app.a;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.r;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.w.y;
import com.tencent.mm.z.f;

public final class ai
  implements r
{
  public final void a(Context paramContext, String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    if ((paramString1 == null) || (paramString2 == null))
    {
      aa.c("MicroMsg.SendMsgMgr", "sendImg: args error, toUser[%s], fileName[%s]", new Object[] { paramString1, paramString2 });
      return;
    }
    if (!be.uz().isSDCardAvailable())
    {
      aa.w("MicroMsg.SendMsgMgr", "sdcard not ready, send video fail");
      Toast.makeText(paramContext, 2131166745, 1).show();
      return;
    }
    y localy = new y(4, v.th(), paramString1, paramString2, paramInt, paramString3, paramString4);
    be.uA().d(localy);
    ct.vB().a(ct.cjQ, null);
  }

  public final void a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.SendMsgMgr", "send vedio context is null");
      return;
    }
    if ((paramString1 == null) || (paramString2 == null))
    {
      aa.c("MicroMsg.SendMsgMgr", "send vedio args error, toUser[%s] fileName[%s]", new Object[] { paramString1, paramString2 });
      return;
    }
    if (!be.uz().isSDCardAvailable())
    {
      aa.w("MicroMsg.SendMsgMgr", "sdcard not ready, send video fail");
      Toast.makeText(paramContext, 2131166745, 1).show();
      return;
    }
    l locall = new l();
    paramContext.getResources().getString(2131167675);
    ch localch = h.a(paramContext, paramContext.getResources().getString(2131167678), true, new aj(this, locall));
    locall.context = paramContext;
    locall.rD = paramString2;
    locall.hrx = paramString3;
    locall.dID = localch;
    locall.bPx = paramString1;
    locall.hrz = false;
    locall.hrl = 1;
    locall.cAX = paramInt;
    locall.hry = false;
    locall.execute(new Object[0]);
  }

  public final void a(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    if (paramString1 == null)
    {
      aa.w("MicroMsg.SendMsgMgr", "sendAppMsg: args error, toUser is null");
      return;
    }
    com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(cj.sT(paramString2));
    if (localb1 == null)
    {
      aa.w("MicroMsg.SendMsgMgr", "send: parse app msg content return null");
      return;
    }
    a locala = new a();
    if (localb1.cgE != null)
    {
      long l = cj.getLong(localb1.cgE, -1L);
      if (l == -1L)
        break label245;
      ba.HF().b(l, locala);
      if (locala.gfy != l)
      {
        locala = ba.HF().qk(localb1.cgE);
        if ((locala != null) && (locala.field_mediaSvrId.equals(localb1.cgE)));
      }
    }
    for (locala = null; ; locala = null)
      label245: 
      do
      {
        String str1 = "";
        if ((locala != null) && (locala.field_fileFullPath != null) && (!locala.field_fileFullPath.equals("")))
        {
          str1 = be.uz().sQ() + "da_" + cj.FD();
          m.f(locala.field_fileFullPath, str1, false);
        }
        String str2 = str1;
        com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.a(localb1);
        localb2.cgG = 3;
        s.a(localb2, localb1.appName, paramString1, str2, paramArrayOfByte);
        return;
        locala = ba.HF().qk(localb1.cgE);
      }
      while ((locala != null) && (locala.field_mediaSvrId.equals(localb1.cgE)));
  }

  public final void i(String paramString1, String paramString2, int paramInt)
  {
    if ((paramString1 == null) || (paramString2 == null))
    {
      aa.c("MicroMsg.SendMsgMgr", "send msg args error, toUser[%s] content[%s]", new Object[] { paramString1, paramString2 });
      return;
    }
    f localf = new f(paramString1, paramString2, paramInt);
    be.uA().d(localf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.ai
 * JD-Core Version:    0.6.2
 */