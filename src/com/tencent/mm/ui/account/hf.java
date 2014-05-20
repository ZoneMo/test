package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class hf
  implements View.OnClickListener
{
  hf(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("country_name", RegByMobileRegUI.k(this.gsP));
    localIntent.putExtra("couttry_code", RegByMobileRegUI.j(this.gsP));
    a.cHS.c(localIntent, this.gsP);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hf
 * JD-Core Version:    0.6.2
 */