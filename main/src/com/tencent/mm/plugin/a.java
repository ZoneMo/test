package com.tencent.mm.plugin;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.e.c;
import com.tencent.mm.e.d;
import com.tencent.mm.sdk.platformtools.cj;

public final class a
{
  public static boolean FK()
  {
    return cj.getInt(d.qA().getValue("ChatroomGlobalSwitch"), 1) == 1;
  }

  public static void y(Context paramContext, String paramString)
  {
    if (paramContext == null);
    while (!FK())
      return;
    Intent localIntent = new Intent();
    localIntent.putExtra("room_name", paramString);
    com.tencent.mm.ak.a.b(paramContext, "chatroom", ".ui.RoomUpgradeUI", localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.a
 * JD-Core Version:    0.6.2
 */