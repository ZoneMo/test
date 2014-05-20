package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class g
  implements View.OnClickListener
{
  g(MoreTabLiteUI paramMoreTabLiteUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.hdS.aal(), SettingsUI.class);
    this.hdS.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.g
 * JD-Core Version:    0.6.2
 */