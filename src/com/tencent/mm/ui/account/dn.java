package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class dn
  implements View.OnClickListener
{
  dn(LoginUI paramLoginUI)
  {
  }

  public final void onClick(View paramView)
  {
    this.grz.startActivity(new Intent(this.grz, FacebookLoginUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dn
 * JD-Core Version:    0.6.2
 */