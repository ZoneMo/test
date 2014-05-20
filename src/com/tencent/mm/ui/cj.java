package com.tencent.mm.ui;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import com.tencent.mm.sdk.platformtools.al;

final class cj
  implements DialogInterface.OnClickListener
{
  cj(Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent1 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
    localIntent1.putExtra("android.intent.extra.shortcut.NAME", this.cGV.getString(2131167462));
    localIntent1.putExtra("duplicate", false);
    Intent localIntent2 = new Intent("android.intent.action.MAIN");
    localIntent2.addCategory("android.intent.category.LAUNCHER");
    localIntent2.setComponent(new ComponentName(this.cGV.getPackageName(), al.azr() + ".ui.LauncherUI"));
    localIntent1.putExtra("android.intent.extra.shortcut.INTENT", localIntent2);
    localIntent1.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this.cGV, 2130838637));
    this.cGV.sendBroadcast(localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cj
 * JD-Core Version:    0.6.2
 */