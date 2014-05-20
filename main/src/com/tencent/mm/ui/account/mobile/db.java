package com.tencent.mm.ui.account.mobile;

import android.content.res.Resources;
import android.widget.TextView;
import com.tencent.mm.l;
import com.tencent.mm.n;

final class db
  implements Runnable
{
  db(da paramda)
  {
  }

  public final void run()
  {
    MobileVerifyUI.b(this.gwU.gwT);
    if (MobileVerifyUI.c(this.gwU.gwT) >= 0L)
    {
      TextView localTextView = this.gwU.gwT.gwM;
      Resources localResources = this.gwU.gwT.getResources();
      int i = l.bcv;
      int j = (int)MobileVerifyUI.c(this.gwU.gwT);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf((int)MobileVerifyUI.c(this.gwU.gwT));
      localTextView.setText(localResources.getQuantityString(i, j, arrayOfObject));
      return;
    }
    this.gwU.gwT.gwM.setVisibility(8);
    this.gwU.gwT.gwL.setVisibility(0);
    MobileVerifyUI.d(this.gwU.gwT);
    this.gwU.gwT.gwL.setEnabled(true);
    this.gwU.gwT.gwL.setText(this.gwU.gwT.getString(n.brM));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.db
 * JD-Core Version:    0.6.2
 */