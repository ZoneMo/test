package com.tencent.mm.ui;

import android.content.Intent;

final class av
  implements Runnable
{
  av(LauncherUIProxy paramLauncherUIProxy)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent(this.gmp, LauncherUI.class);
    if ("new_msg_nofification".equals(this.gmp.getIntent().getStringExtra("nofification_type")))
    {
      localIntent.putExtra("nofification_type", this.gmp.getIntent().getStringExtra("nofification_type"));
      localIntent.putExtra("talkerCount", this.gmp.getIntent().getIntExtra("talkerCount", 0));
      localIntent.putExtra("Intro_Is_Muti_Talker", this.gmp.getIntent().getBooleanExtra("Intro_Is_Muti_Talker", true));
      localIntent.putExtra("Intro_Bottle_unread_count", this.gmp.getIntent().getIntExtra("Intro_Bottle_unread_count", 0));
      localIntent.putExtra("Main_User", this.gmp.getIntent().getStringExtra("Main_User"));
      localIntent.putExtra("MainUI_User_Last_Msg_Type", this.gmp.getIntent().getIntExtra("MainUI_User_Last_Msg_Type", 0));
    }
    while (true)
    {
      localIntent.addFlags(67108864);
      localIntent.addFlags(536870912);
      this.gmp.startActivity(localIntent);
      this.gmp.finish();
      return;
      if (this.gmp.getIntent().getBooleanExtra("Intro_Notify", false))
      {
        localIntent.putExtra("Intro_Notify", this.gmp.getIntent().getBooleanExtra("Intro_Notify", false));
        localIntent.putExtra("Intro_Notify_User", this.gmp.getIntent().getStringExtra("Intro_Notify_User"));
      }
      else if ("update_nofification".equals(this.gmp.getIntent().getStringExtra("nofification_type")))
      {
        localIntent.putExtra("nofification_type", this.gmp.getIntent().getStringExtra("nofification_type"));
        localIntent.putExtra("show_update_dialog", this.gmp.getIntent().getBooleanExtra("show_update_dialog", false));
        localIntent.putExtra("update_type", this.gmp.getIntent().getIntExtra("update_type", 0));
      }
      else if ("pushcontent_notification".equals(this.gmp.getIntent().getStringExtra("nofification_type")))
      {
        localIntent.putExtra("nofification_type", this.gmp.getIntent().getStringExtra("nofification_type"));
        localIntent.putExtra("Intro_Is_Muti_Talker", this.gmp.getIntent().getBooleanExtra("Intro_Is_Muti_Talker", true));
        localIntent.putExtra("Main_FromUserName", this.gmp.getIntent().getStringExtra("Main_FromUserName"));
        localIntent.putExtra("MainUI_User_Last_Msg_Type", this.gmp.getIntent().getIntExtra("MainUI_User_Last_Msg_Type", 0));
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.av
 * JD-Core Version:    0.6.2
 */