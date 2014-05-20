package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.al;

public final class ej
{
  public static void a(Context paramContext, boolean paramBoolean, Intent paramIntent)
  {
    if (paramIntent == null)
      paramIntent = new Intent();
    if (paramBoolean);
    for (String str = "com.tencent.mm.ui.ACTION_ACTIVE"; ; str = "com.tencent.mm.ui.ACTION_DEACTIVE")
    {
      paramIntent.setAction(str);
      paramIntent.putExtra("_application_context_process_", al.azw());
      paramContext.sendBroadcast(paramIntent, "com.tencent.mm.permission.MM_MESSAGE");
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ej
 * JD-Core Version:    0.6.2
 */