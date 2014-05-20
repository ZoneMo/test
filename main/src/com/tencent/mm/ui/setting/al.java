package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.tools.WebViewUI;

final class al
  implements View.OnClickListener
{
  al(SettingsAboutMMFooterPreference paramSettingsAboutMMFooterPreference, View paramView)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.dXr.getContext(), WebViewUI.class);
    localIntent.putExtra("title", this.dXr.getResources().getString(2131167142));
    localIntent.putExtra("rawUrl", this.dXr.getResources().getString(2131168175));
    localIntent.putExtra("showShare", false);
    this.dXr.getContext().startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.al
 * JD-Core Version:    0.6.2
 */