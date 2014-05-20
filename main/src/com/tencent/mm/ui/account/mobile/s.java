package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.account.LoginUI;

final class s
  implements View.OnClickListener
{
  s(o paramo, MobileInputUI paramMobileInputUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.gvW, LoginUI.class);
    localIntent.putExtra("login_type", 1);
    this.gvW.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.s
 * JD-Core Version:    0.6.2
 */