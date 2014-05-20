package com.tencent.mm.ui.conversation;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.setting.SendFeedBackUI;

final class ay
  implements View.OnClickListener
{
  ay(MainUI paramMainUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.gZI.aal(), SendFeedBackUI.class);
    this.gZI.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ay
 * JD-Core Version:    0.6.2
 */