package com.tencent.mm.ui.account;

import android.content.Intent;
import com.tencent.mm.ui.account.mobile.MobileInputUI;
import com.tencent.mm.ui.base.v;
import com.tencent.mm.x.b;

final class bp
  implements v
{
  bp(LoginHistoryUI paramLoginHistoryUI)
  {
  }

  public final void bo(int paramInt)
  {
    if (b.Bd())
    {
      switch (paramInt)
      {
      default:
        return;
      case 0:
        Intent localIntent5 = new Intent(this.grc, MobileInputUI.class);
        localIntent5.putExtra("mobile_input_purpose", 5);
        this.grc.startActivity(localIntent5);
        return;
      case 1:
        Intent localIntent4 = new Intent(this.grc, LoginUI.class);
        this.grc.startActivity(localIntent4);
        return;
      case 2:
      }
      Intent localIntent3 = new Intent(this.grc, FacebookLoginUI.class);
      this.grc.startActivity(localIntent3);
      return;
    }
    switch (paramInt)
    {
    default:
      return;
    case 0:
      Intent localIntent2 = new Intent(this.grc, MobileInputUI.class);
      localIntent2.putExtra("mobile_input_purpose", 5);
      this.grc.startActivity(localIntent2);
      return;
    case 1:
    }
    Intent localIntent1 = new Intent(this.grc, LoginUI.class);
    this.grc.startActivity(localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bp
 * JD-Core Version:    0.6.2
 */