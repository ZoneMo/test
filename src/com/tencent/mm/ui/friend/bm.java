package com.tencent.mm.ui.friend;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.MenuItem;
import com.tencent.mm.ui.base.cd;
import java.util.HashMap;

final class bm
  implements cd
{
  bm(bi parambi, HashMap paramHashMap, Uri paramUri, String paramString)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    String str = paramMenuItem.getTitle();
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(((ResolveInfo)this.hbG.get(str)).activityInfo.packageName, ((ResolveInfo)this.hbG.get(str)).activityInfo.name));
    localIntent.setAction("android.intent.action.SENDTO");
    localIntent.setData(this.hbJ);
    localIntent.putExtra("sms_body", this.hbK);
    this.hbI.hbF.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bm
 * JD-Core Version:    0.6.2
 */