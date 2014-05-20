package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class dc
  implements View.OnClickListener
{
  dc(LoginSelectorUI paramLoginSelectorUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("not_auth_setting", true);
    a.cHS.n(localIntent, this.grw.aal());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dc
 * JD-Core Version:    0.6.2
 */