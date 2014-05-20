package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class gj
  implements View.OnClickListener
{
  gj(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("country_name", RegByMobileRegAIOUI.n(this.gsL));
    localIntent.putExtra("couttry_code", RegByMobileRegAIOUI.m(this.gsL));
    a.cHS.c(localIntent, this.gsL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gj
 * JD-Core Version:    0.6.2
 */