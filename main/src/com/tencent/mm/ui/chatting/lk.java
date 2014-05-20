package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.MenuItem;
import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.model.app.a;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class lk
  implements cd
{
  lk(ak paramak, String paramString, int paramInt, Context paramContext)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    String str1 = paramMenuItem.getTitle();
    ak localak = this.ctu;
    com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(cj.sT(this.dCh));
    if (localb1 == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "send: parse app msg content return null");
      switch (this.cLa)
      {
      default:
      case 256:
      case 128:
      case 512:
      }
    }
    while (true)
    {
      while (true)
      {
        h.an(this.cGV, this.cGV.getString(2131167704));
        return;
        String str2 = localak.ot();
        Object localObject = null;
        String str5;
        if (str2 != null)
        {
          boolean bool = localak.ot().equals("");
          localObject = null;
          if (!bool)
            str5 = ag.Ba().fX(localak.ot());
        }
        try
        {
          byte[] arrayOfByte = c.g(str5, 0, c.ar(str5));
          localObject = arrayOfByte;
          locala = new a();
          if (localb1.cgE != null)
          {
            long l = cj.getLong(localb1.cgE, -1L);
            if (l == -1L)
              break label422;
            ba.HF().b(l, locala);
            if (locala.gfy != l)
            {
              locala = ba.HF().qk(localb1.cgE);
              if ((locala == null) || (!locala.field_mediaSvrId.equals(localb1.cgE)))
                locala = null;
            }
          }
          String str3 = "";
          if ((locala != null) && (locala.field_fileFullPath != null) && (!locala.field_fileFullPath.equals("")))
          {
            str3 = be.uz().sQ() + "da_" + cj.FD();
            com.tencent.mm.sdk.platformtools.m.f(locala.field_fileFullPath, str3, false);
          }
          String str4 = str3;
          com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.a(localb1);
          localb2.cgG = 3;
          s.a(localb2, localb1.appName, str1, str4, localObject);
        }
        catch (Exception localException)
        {
          while (true)
          {
            Object[] arrayOfObject4 = new Object[2];
            arrayOfObject4[0] = str1;
            arrayOfObject4[1] = localException.getLocalizedMessage();
            aa.b("MicroMsg.LongClickBrandServiceHelper", "send appmsg to %s, error:%s", arrayOfObject4);
            localObject = null;
            continue;
            label422: a locala = ba.HF().qk(localb1.cgE);
            if ((locala == null) || (!locala.field_mediaSvrId.equals(localb1.cgE)))
              locala = null;
          }
        }
      }
      com.tencent.mm.plugin.d.c.m localm3 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Integer.valueOf(49);
      arrayOfObject3[1] = Integer.valueOf(256);
      arrayOfObject3[2] = str1;
      localm3.d(10424, arrayOfObject3);
      continue;
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(49);
      arrayOfObject2[1] = Integer.valueOf(128);
      arrayOfObject2[2] = str1;
      localm2.d(10424, arrayOfObject2);
      continue;
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(49);
      arrayOfObject1[1] = Integer.valueOf(512);
      arrayOfObject1[2] = str1;
      localm1.d(10424, arrayOfObject1);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lk
 * JD-Core Version:    0.6.2
 */