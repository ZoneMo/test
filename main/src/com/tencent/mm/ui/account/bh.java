package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bh
  implements View.OnClickListener
{
  bh(LoginByMobileUI paramLoginByMobileUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.gqO, LoginUI.class);
    localIntent.putExtra("login_type", 1);
    this.gqO.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bh
 * JD-Core Version:    0.6.2
 */