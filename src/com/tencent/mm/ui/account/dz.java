package com.tencent.mm.ui.account;

import android.content.res.Resources;
import android.widget.Button;
import com.tencent.mm.l;
import com.tencent.mm.n;

final class dz
  implements Runnable
{
  dz(dx paramdx)
  {
  }

  public final void run()
  {
    MobileVerifyUIOld.b(this.gsb.gsa);
    Button localButton;
    String str;
    if (MobileVerifyUIOld.c(this.gsb.gsa) >= 0L)
    {
      localButton = MobileVerifyUIOld.e(this.gsb.gsa);
      Resources localResources = this.gsb.gsa.getResources();
      int i = l.bcv;
      int j = (int)MobileVerifyUIOld.c(this.gsb.gsa);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf((int)MobileVerifyUIOld.c(this.gsb.gsa));
      str = localResources.getQuantityString(i, j, arrayOfObject);
    }
    while (true)
    {
      localButton.setText(str);
      return;
      MobileVerifyUIOld.f(this.gsb.gsa);
      MobileVerifyUIOld.e(this.gsb.gsa).setEnabled(true);
      localButton = MobileVerifyUIOld.e(this.gsb.gsa);
      if (MobileVerifyUIOld.g(this.gsb.gsa))
        str = this.gsb.gsa.getString(n.brN);
      else
        str = this.gsb.gsa.getString(n.brM);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dz
 * JD-Core Version:    0.6.2
 */