package com.tencent.mm.ui.account;

import android.content.res.Resources;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.l;
import com.tencent.mm.n;

final class ea
  implements Runnable
{
  ea(dx paramdx)
  {
  }

  public final void run()
  {
    MobileVerifyUIOld.b(this.gsb.gsa);
    if (MobileVerifyUIOld.c(this.gsb.gsa) >= 0L)
    {
      TextView localTextView = MobileVerifyUIOld.d(this.gsb.gsa);
      Resources localResources = this.gsb.gsa.getResources();
      int i = l.bcv;
      int j = (int)MobileVerifyUIOld.c(this.gsb.gsa);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf((int)MobileVerifyUIOld.c(this.gsb.gsa));
      localTextView.setText(localResources.getQuantityString(i, j, arrayOfObject));
      return;
    }
    MobileVerifyUIOld.d(this.gsb.gsa).setVisibility(8);
    MobileVerifyUIOld.e(this.gsb.gsa).setVisibility(0);
    MobileVerifyUIOld.f(this.gsb.gsa);
    MobileVerifyUIOld.e(this.gsb.gsa).setEnabled(true);
    Button localButton = MobileVerifyUIOld.e(this.gsb.gsa);
    if (MobileVerifyUIOld.g(this.gsb.gsa));
    for (String str = this.gsb.gsa.getString(n.brN); ; str = this.gsb.gsa.getString(n.brM))
    {
      localButton.setText(str);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ea
 * JD-Core Version:    0.6.2
 */