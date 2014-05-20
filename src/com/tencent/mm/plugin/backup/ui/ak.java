package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.tools.WebViewUI;

final class ak
  implements View.OnClickListener
{
  ak(BakChatUI paramBakChatUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.cNe, WebViewUI.class);
    localIntent.putExtra("title", this.cNe.getString(2131166033));
    localIntent.putExtra("rawUrl", this.cNe.getString(2131168172));
    localIntent.putExtra("showShare", false);
    localIntent.putExtra("neverGetA8Key", true);
    this.cNe.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.ak
 * JD-Core Version:    0.6.2
 */