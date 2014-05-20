package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class bg
  implements View.OnClickListener
{
  bg(LoginByMobileUI paramLoginByMobileUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("country_name", LoginByMobileUI.i(this.gqO));
    localIntent.putExtra("couttry_code", LoginByMobileUI.j(this.gqO));
    a.cHS.c(localIntent, this.gqO);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bg
 * JD-Core Version:    0.6.2
 */