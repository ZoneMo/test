package com.tencent.mm.platformtools;

import android.app.Activity;
import android.content.Context;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bg;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;

public final class ag
{
  public static void a(Activity paramActivity, Runnable paramRunnable)
  {
    if ((z.zp() != com.tencent.mm.modelfriend.aa.crc) && (z.zp() != com.tencent.mm.modelfriend.aa.crd))
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.PostLoginUtil", "not successfully binded, skip addrbook confirm");
    while (true)
    {
      if (paramRunnable != null)
        paramRunnable.run();
      return;
      if (cj.c((Boolean)be.uz().sr().get(12322)))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.PostLoginUtil", "addrbook upload confirmed");
      }
      else
      {
        be.uz().sr().set(12322, Boolean.valueOf(false));
        String str = cj.hW(cj.bE(paramActivity));
        if ((str.length() <= 0) || (!str.equals(be.uz().sr().get(6))))
          break;
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.PostLoginUtil", "same none-nil phone number, leave it");
      }
    }
    h.a(paramActivity, n.beH, n.ber, n.bev, n.bed, new ah(paramActivity, paramRunnable), new ai(paramRunnable));
    be.uz().sr().set(12323, Boolean.valueOf(true));
  }

  public static void af(Context paramContext)
  {
    String str1 = paramContext.getString(n.bdn);
    String str2 = paramContext.getString(n.bdm);
    h.a(paramContext, str1, "", paramContext.getString(n.bhw), paramContext.getString(n.bhv), new aj(str2, paramContext), null);
  }

  public static void e(Context paramContext, String paramString1, String paramString2)
  {
    h.a(paramContext, paramString1, "", paramContext.getString(n.bhw), paramContext.getString(n.bhv), new ak(paramString2, paramContext), null);
  }

  public static void f(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = v.tl();
    int j;
    if (paramBoolean1)
    {
      j = i & 0xFFFDFFFF;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.PostLoginUtil", "Reg By mobile update = " + j);
      be.uz().sr().set(7, Integer.valueOf(j));
      if (paramBoolean1)
        break label97;
    }
    label97: for (int k = 1; ; k = 2)
    {
      be.uz().st().a(new bg(17, k));
      if (paramBoolean2)
        com.tencent.mm.plugin.a.a.cHT.nE();
      return;
      j = i | 0x20000;
      break;
    }
  }

  public static void hP(String paramString)
  {
    bd.cik.s("login_user_name", paramString);
  }

  public static void v(Context paramContext, String paramString)
  {
    com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
    String str1;
    String str2;
    al localal;
    am localam;
    if (locala != null)
    {
      str1 = paramContext.getString(n.bee);
      str2 = paramContext.getString(n.bds);
      localal = new al(locala, paramContext);
      localam = new am();
      if ((locala.bLY == 1) || (locala.bLY == 4))
      {
        if (!cj.hX(locala.url))
          break label86;
        h.p(paramContext, locala.desc, locala.bMa);
      }
    }
    return;
    label86: h.a(paramContext, locala.desc, locala.bMa, str1, str2, localal, localam);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.ag
 * JD-Core Version:    0.6.2
 */