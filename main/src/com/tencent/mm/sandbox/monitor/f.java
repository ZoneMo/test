package com.tencent.mm.sandbox.monitor;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sandbox.updater.AppUpdaterUI;
import com.tencent.mm.sdk.platformtools.al;
import java.util.Map;
import java.util.TimerTask;

final class f extends TimerTask
{
  f(Map paramMap)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent(al.getContext(), AppUpdaterUI.class);
    localIntent.addFlags(268435456);
    localIntent.putExtra("intent_extra_desc", (String)this.gaG.get(".Response.desc"));
    localIntent.putExtra("intent_update_type", 999);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ((String)this.gaG.get(".Response.url"));
    localIntent.putExtra("intent_extra_download_url", arrayOfString);
    al.getContext().startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.f
 * JD-Core Version:    0.6.2
 */