package com.tencent.mm.ui.account;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.account.mobile.MobileInputUI;

final class lq
  implements View.OnClickListener
{
  lq(WelcomeSelectView paramWelcomeSelectView, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.cGV, MobileInputUI.class);
    localIntent.putExtra("mobile_input_purpose", 5);
    this.cGV.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.lq
 * JD-Core Version:    0.6.2
 */