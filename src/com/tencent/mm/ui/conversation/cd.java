package com.tencent.mm.ui.conversation;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.webwx.ui.WebWXLogoutUI;

final class cd
  implements View.OnClickListener
{
  cd(NetWarnView paramNetWarnView, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.cGV, WebWXLogoutUI.class);
    this.cGV.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.cd
 * JD-Core Version:    0.6.2
 */