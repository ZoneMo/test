package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.b;

final class hg
  implements View.OnClickListener
{
  hg(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final void onClick(View paramView)
  {
    b.ie("R500_100");
    Intent localIntent = new Intent(this.gsP, RegByEmailUI.class);
    this.gsP.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hg
 * JD-Core Version:    0.6.2
 */