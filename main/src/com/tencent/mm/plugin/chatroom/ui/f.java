package com.tencent.mm.plugin.chatroom.ui;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.ui.MMWizardActivity;

public final class f
{
  public static void a(Activity paramActivity, String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Intent localIntent1 = new Intent(paramActivity, RoomUpgradeUI.class);
      localIntent1.setFlags(603979776);
      localIntent1.putExtra("room_name", paramString);
      Intent localIntent2 = new Intent();
      localIntent2.setClassName(paramActivity, "com.tencent.mm.ui.account.bind.BindMobileUI");
      localIntent2.putExtra("is_bind_for_chatroom_upgrade", true);
      MMWizardActivity.b(paramActivity, localIntent2, localIntent1);
      return;
    }
    Intent localIntent3 = new Intent(paramActivity, RoomUpgradeUI.class);
    localIntent3.setFlags(603979776);
    localIntent3.putExtra("room_name", paramString);
    localIntent3.putExtra("announce_ok", true);
    paramActivity.startActivity(localIntent3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.f
 * JD-Core Version:    0.6.2
 */