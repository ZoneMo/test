package com.tencent.mm.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.tencent.mm.ab.j;
import com.tencent.mm.ab.r;
import com.tencent.mm.c.a.hb;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ce;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelvoice.y;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.n;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.t;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.setting.SettingsLanguageUI;
import com.tencent.mm.ui.tools.CropImageNewUI;

final class k
  implements d
{
  public final Bitmap a(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1);
    do
    {
      String str2;
      do
      {
        do
        {
          return null;
          switch (paramInt1)
          {
          default:
            return null;
          case 2:
          case 3:
          case 4:
          }
        }
        while (paramIntent == null);
        Intent localIntent2 = new Intent();
        localIntent2.setClass(paramActivity, CropImageNewUI.class);
        localIntent2.putExtra("CropImageMode", 1);
        localIntent2.putExtra("CropImage_Filter", true);
        localIntent2.putExtra("CropImage_OutputPath", com.tencent.mm.storage.h.ggB + "temp.avatar");
        localIntent2.putExtra("CropImage_ImgPath", null);
        com.tencent.mm.ui.tools.h.b(paramActivity, paramIntent, localIntent2, com.tencent.mm.storage.h.ggB, 4);
        return null;
        str2 = com.tencent.mm.pluginsdk.ui.tools.s.a(paramActivity.getApplicationContext(), paramIntent, com.tencent.mm.storage.h.ggB);
      }
      while (str2 == null);
      Intent localIntent1 = new Intent();
      localIntent1.setClass(paramActivity, CropImageNewUI.class);
      localIntent1.putExtra("CropImageMode", 1);
      localIntent1.putExtra("CropImage_OutputPath", com.tencent.mm.storage.h.ggB + "temp.avatar");
      localIntent1.putExtra("CropImage_ImgPath", str2);
      paramActivity.startActivityForResult(localIntent1, 4);
      return null;
    }
    while (paramIntent == null);
    String str1 = paramIntent.getStringExtra("CropImage_OutputPath");
    if (str1 == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WorkerModelCallback", "crop picture failed");
      return null;
    }
    com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WorkerModelCallback", "crop picture path %s ", new Object[] { str1 });
    return com.tencent.mm.sdk.platformtools.h.su(str1);
  }

  public final x a(n paramn)
  {
    return new com.tencent.mm.z.i(1, paramn);
  }

  public final String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    return u.a(paramString1, paramString2, paramBoolean);
  }

  public final void a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, String paramString4)
  {
    ag localag = com.tencent.mm.pluginsdk.h.apq();
    if (localag != null)
      localag.a(paramContext, paramString1, paramString2, paramString3, paramInt1, 11, paramInt2, paramString4);
  }

  public final void a(WXMediaMessage paramWXMediaMessage, String paramString1, String paramString2)
  {
    com.tencent.mm.pluginsdk.model.app.s.a(paramWXMediaMessage, "", "", paramString1, 2, null);
    if ((paramString2 != null) && (paramString2.length() > 0))
    {
      com.tencent.mm.z.f localf = new com.tencent.mm.z.f(paramString1, paramString2, w.dd(paramString1));
      be.uA().d(localf);
    }
  }

  public final void a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    ag localag = com.tencent.mm.pluginsdk.h.apq();
    if (localag != null)
      localag.a(paramString1, paramString2, 2, 4, paramString3, paramLong);
  }

  public final String aE(String paramString)
  {
    if (com.tencent.mm.pluginsdk.model.app.l.F(paramString, false) != null)
      return com.tencent.mm.pluginsdk.model.app.l.F(paramString, false).field_packageName;
    return "";
  }

  public final boolean aF(String paramString)
  {
    return com.tencent.mm.pluginsdk.model.app.l.aF(paramString);
  }

  public final boolean aG(String paramString)
  {
    return com.tencent.mm.pluginsdk.model.app.l.aG(paramString);
  }

  public final String b(Context paramContext, String paramString1, String paramString2)
  {
    return u.b(paramContext, paramString1, paramString2);
  }

  public final boolean b(Context paramContext, int paramInt1, int paramInt2)
  {
    return cx.a(paramContext, paramInt1, paramInt2, 4);
  }

  public final void bn(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WorkerModelCallback", "trigger netscene sync, scene[%d]", arrayOfObject);
    be.uA().d(new com.tencent.mm.z.i(paramInt));
  }

  public final x d(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      r.BM().dQ(paramInt);
    j localj = new j(paramInt);
    be.uA().d(localj);
    return localj;
  }

  public final boolean e(Activity paramActivity)
  {
    if (!com.tencent.mm.compatible.g.i.qd())
    {
      dn.bW(paramActivity);
      return false;
    }
    com.tencent.mm.ui.base.h.b(paramActivity, "", paramActivity.getResources().getStringArray(2131296280), "", new l(this, paramActivity));
    return true;
  }

  public final String f(Context paramContext, String paramString)
  {
    return com.tencent.mm.pluginsdk.model.app.l.f(paramContext, paramString);
  }

  public final void f(Activity paramActivity)
  {
    MMAppMgr.f(paramActivity);
  }

  public final boolean g(Context paramContext, String paramString)
  {
    return com.tencent.mm.pluginsdk.model.app.l.g(paramContext, paramString);
  }

  public final void nE()
  {
    be.uA().d(new com.tencent.mm.z.i(5));
  }

  public final com.tencent.mm.n.o nF()
  {
    return new y(al.getContext());
  }

  public final void nG()
  {
    hb localhb = new hb();
    localhb.bQX.bQZ = true;
    com.tencent.mm.sdk.b.a.ayH().f(localhb);
  }

  public final void nH()
  {
    if (cj.c((Integer)be.uz().sr().get(15)) != 0)
      be.uA().d(new com.tencent.mm.z.i(6));
    ce.dC("ver" + com.tencent.mm.protocal.a.fxr);
    ba.aqj().ak(ba.HE().apS());
  }

  public final void nI()
  {
    String str = v.th();
    if (!TextUtils.isEmpty(str))
    {
      com.tencent.mm.modelsimple.aa localaa = new com.tencent.mm.modelsimple.aa(str);
      be.uA().d(localaa);
    }
  }

  public final void nJ()
  {
    MMAppMgr.nJ();
  }

  public final Intent nK()
  {
    Intent localIntent = new Intent(al.getContext(), LauncherUI.class);
    localIntent.putExtra("nofification_type", "talkroom_notification");
    return localIntent;
  }

  public final String t(Context paramContext)
  {
    return SettingsLanguageUI.t(paramContext);
  }

  public final void u(Context paramContext)
  {
    MMAppMgr.u(paramContext);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.k
 * JD-Core Version:    0.6.2
 */