package com.tencent.mm.plugin.base.a;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import com.tencent.mm.m.c;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

public final class a
{
  public static final String cNS = al.getPackageName();
  private static String cNT = "";

  public static boolean A(Context paramContext, String paramString)
  {
    cNT = v.th();
    String str = cNT;
    if ((paramContext == null) || (paramString == null))
    {
      aa.e("MicroMsg.ShortcutManager", "add fail, invalid argument");
      return true;
    }
    aa.e("MicroMsg.ShortcutManager", "add shortcut %s", new Object[] { paramString });
    cNT = str;
    Intent localIntent = a(paramContext, paramString, true, cNT);
    if (localIntent == null)
    {
      aa.e("MicroMsg.ShortcutManager", "add fail, intent is null");
      return true;
    }
    paramContext.sendBroadcast(localIntent);
    return true;
  }

  public static boolean B(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramString == null))
    {
      aa.e("MicroMsg.ShortcutManager", "remove fail, invalid argument");
      return false;
    }
    cNT = v.th();
    Intent localIntent = a(paramContext, paramString, false, cNT);
    if (localIntent == null)
    {
      aa.e("MicroMsg.ShortcutManager", "remove fail, intent is null");
      return false;
    }
    paramContext.sendBroadcast(localIntent);
    return true;
  }

  private static Intent a(Context paramContext, String paramString1, boolean paramBoolean, String paramString2)
  {
    if ((paramString1 == null) || (paramContext == null))
    {
      aa.e("MicroMsg.ShortcutManager", "getIntent, wrong parameters");
      return null;
    }
    int i = (int)(48.0F * paramContext.getResources().getDisplayMetrics().density);
    Bitmap localBitmap1 = c.a(paramString1, false, -1);
    if (localBitmap1 == null)
      aa.e("MicroMsg.ShortcutManager", "getScaledBitmap fail, bmp is null");
    for (Bitmap localBitmap2 = null; localBitmap2 == null; localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, i, i, false))
    {
      aa.e("MicroMsg.ShortcutManager", "no bmp");
      return null;
    }
    i locali = be.uz().su().tO(paramString1);
    if ((locali == null) || (locali.rj() <= 0))
    {
      aa.e("MicroMsg.ShortcutManager", "no such user");
      return null;
    }
    if (paramBoolean);
    for (String str = "com.android.launcher.action.INSTALL_SHORTCUT"; ; str = "com.android.launcher.action.UNINSTALL_SHORTCUT")
    {
      Intent localIntent1 = new Intent(str);
      localIntent1.putExtra("android.intent.extra.shortcut.NAME", w.a(locali, paramString1));
      localIntent1.putExtra("duplicate", false);
      Intent localIntent2 = new Intent("com.tencent.mm.action.BIZSHORTCUT");
      localIntent2.putExtra("LauncherUI.Shortcut.Username", paramString1);
      localIntent2.putExtra("LauncherUI.From.Biz.Shortcut", true);
      localIntent2.addFlags(67108864);
      localIntent1.putExtra("android.intent.extra.shortcut.INTENT", localIntent2);
      localIntent1.putExtra("android.intent.extra.shortcut.ICON", localBitmap2);
      localIntent1.putExtra("com.tencent.qlauncher.extra.EXTRA_PUSH_ITEM_SOURCE_KEY", cNS);
      localIntent1.putExtra("com.tencent.qlauncher.extra.EXTRA_PUSH_ITEM_OWNER_ID", paramString2);
      localIntent1.putExtra("com.tencent.qlauncher.extra.EXTRA_PUSH_ITEM_UNIQUE_ID", paramString1);
      localIntent1.putExtra("com.tencent.qlauncher.extra.EXTRA_PUSH_ITEM_TYPE", s(locali));
      localIntent1.putExtra("com.tencent.qlauncher.extra.EXTRA_PUSH_ITEM_CONTAINER", 0);
      return localIntent1;
    }
  }

  public static int s(i parami)
  {
    if (parami.aAp())
      return 2;
    if (!w.dc(parami.getUsername()))
      return 1;
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.a.a
 * JD-Core Version:    0.6.2
 */