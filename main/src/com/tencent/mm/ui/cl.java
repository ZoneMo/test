package com.tencent.mm.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tencent.mm.c.a.dg;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.sandbox.updater.Updater;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

public final class cl
{
  static ProgressDialog cIr = null;
  static SecurityImage gof = null;

  public static x a(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent, String paramString)
  {
    if (paramInt1 != 4)
      return null;
    aa.d("MicroMsg.MMErrorProcessor", "errType = " + paramInt1 + " errCode = " + paramInt2);
    switch (paramInt2)
    {
    default:
      return null;
    case -205:
    case -72:
    case -9:
    case -4:
    case -3:
      aa.e("MicroMsg.MMErrorProcessor", "account expired=" + paramInt2);
      return h.a(paramActivity, 2131165596, 2131167675, new cq(paramIntent, paramActivity));
    case -100:
      aa.e("MicroMsg.MMErrorProcessor", "account expired=" + paramInt2);
      d.reset();
      be.uH();
      dg localdg = new dg();
      localdg.bOn.status = 0;
      localdg.bOn.bOo = 1;
      com.tencent.mm.sdk.b.a.ayH().f(localdg);
      if (TextUtils.isEmpty(com.tencent.mm.protocal.j.awH()));
      for (String str = com.tencent.mm.an.a.m(paramActivity, 2131165597); ; str = com.tencent.mm.protocal.j.awH())
        return h.a(paramActivity, str, paramActivity.getString(2131167675), new cr(paramIntent, paramActivity), new cs(paramIntent, paramActivity));
    case -75:
      aa.e("MicroMsg.MMErrorProcessor", "account expired=" + paramInt2);
      return h.a(paramActivity, 2131165576, 2131167675, new ct(paramIntent, paramActivity));
    case -140:
    }
    aa.b("MicroMsg.MMErrorProcessor", "alpha need whitelist : [%s]", new Object[] { paramString });
    if (cj.hX(paramString))
      paramString = al.getContext().getString(2131165596);
    return h.a(paramActivity, paramString, al.getContext().getString(2131167675), new cu(paramIntent, paramActivity));
  }

  public static x a(Runnable paramRunnable, MMActivity paramMMActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != 4);
    do
    {
      return null;
      aa.d("MicroMsg.MMErrorProcessor", "errType = " + paramInt1 + " errCode = " + paramInt2);
    }
    while (paramInt2 != -100);
    aa.e("MicroMsg.MMErrorProcessor", "account expired=" + paramInt2);
    be.uH();
    dg localdg = new dg();
    localdg.bOn.status = 0;
    localdg.bOn.bOo = 1;
    com.tencent.mm.sdk.b.a.ayH().f(localdg);
    Activity localActivity = paramMMActivity.aal();
    if (TextUtils.isEmpty(com.tencent.mm.protocal.j.awH()));
    for (String str = com.tencent.mm.an.a.m(paramMMActivity.aal(), 2131165597); ; str = com.tencent.mm.protocal.j.awH())
      return h.a(localActivity, str, paramMMActivity.aal().getString(2131167675), new cm(paramIntent, paramRunnable, paramMMActivity), new cp(paramIntent, paramRunnable, paramMMActivity));
  }

  public static boolean a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    arrayOfObject1[2] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
    arrayOfObject1[3] = Integer.valueOf(com.tencent.mm.sdk.platformtools.j.bKo);
    aa.c("MicroMsg.MMErrorProcessor", "updateRequired [%d,%d] current version:%d  channel:%d", arrayOfObject1);
    if (paramInt1 != 4)
      return false;
    switch (paramInt2)
    {
    default:
      return false;
    case -17:
      long l = al.getContext().getSharedPreferences("system_config_prefs", 0).getLong("recomended_update_ignore", -1L);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(l);
      arrayOfObject2[1] = Long.valueOf(au.M(l));
      aa.d("MicroMsg.MMErrorProcessor", "updateRequired last:%d  now:%d", arrayOfObject2);
      if ((l != -1L) && (au.M(l) < 86400L))
        return true;
      break;
    case -16:
      Updater localUpdater1 = Updater.b(paramActivity, new cv(paramActivity));
      new cw(paramActivity);
      localUpdater1.lA(1);
      return true;
    }
    Updater localUpdater2 = Updater.b(paramActivity, new cn(paramActivity));
    new co(paramActivity);
    localUpdater2.lA(2);
    return true;
  }

  public static x aFn()
  {
    return null;
  }

  public static boolean bc(int paramInt1, int paramInt2)
  {
    return (paramInt1 == 4) && (paramInt2 == -6);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cl
 * JD-Core Version:    0.6.2
 */