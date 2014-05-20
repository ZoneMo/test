package com.tencent.mm.ui.conversation;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.tools.WebViewUI;

final class ca
  implements View.OnClickListener
{
  ca(NetWarnView paramNetWarnView, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.cGV, WebViewUI.class);
    localIntent.putExtra("title", this.cGV.getString(2131165644));
    localIntent.putExtra("rawUrl", this.cGV.getString(2131168168));
    localIntent.putExtra("showShare", false);
    this.cGV.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ca
 * JD-Core Version:    0.6.2
 */