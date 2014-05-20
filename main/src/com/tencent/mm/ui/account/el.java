package com.tencent.mm.ui.account;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class el
  implements View.OnClickListener
{
  el(MobileVerifyUIOld paramMobileVerifyUIOld)
  {
  }

  public final void onClick(View paramView)
  {
    com.tencent.mm.plugin.a.b.ie("R400_100_signup");
    Intent localIntent = new Intent();
    localIntent.setClass(this.gsa, RegByQQUI.class);
    localIntent.putExtra("MMActivity.OverrideEnterAnimation", 0);
    localIntent.putExtra("MMActivity.OverrideExitAnimation", com.tencent.mm.b.YF);
    this.gsa.startActivity(localIntent);
    this.gsa.overridePendingTransition(com.tencent.mm.b.YH, com.tencent.mm.b.YG);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.el
 * JD-Core Version:    0.6.2
 */