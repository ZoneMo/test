package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class lv
  implements View.OnClickListener
{
  lv(WelcomeSelectView_5_2 paramWelcomeSelectView_5_2)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("not_auth_setting", true);
    localIntent.putExtra("from_login_history", true);
    a.cHS.n(localIntent, this.guY.getContext());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.lv
 * JD-Core Version:    0.6.2
 */