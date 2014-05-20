package com.tencent.mm.ui.account.bind;

import android.content.res.Resources;
import android.widget.TextView;
import com.tencent.mm.l;

final class r
  implements Runnable
{
  r(BindMobileVerifyUI paramBindMobileVerifyUI)
  {
  }

  public final void run()
  {
    BindMobileVerifyUI.e(this.gvL);
    BindMobileVerifyUI.a(this.gvL, Integer.valueOf(-1 + BindMobileVerifyUI.e(this.gvL).intValue()));
    if (BindMobileVerifyUI.e(this.gvL).intValue() > 0)
    {
      TextView localTextView2 = BindMobileVerifyUI.c(this.gvL);
      Resources localResources2 = this.gvL.getResources();
      int j = l.bcv;
      int k = BindMobileVerifyUI.e(this.gvL).intValue();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = BindMobileVerifyUI.e(this.gvL);
      localTextView2.setText(localResources2.getQuantityString(j, k, arrayOfObject2));
      return;
    }
    TextView localTextView1 = BindMobileVerifyUI.c(this.gvL);
    Resources localResources1 = this.gvL.getResources();
    int i = l.bcv;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(0);
    localTextView1.setText(localResources1.getQuantityString(i, 0, arrayOfObject1));
    BindMobileVerifyUI.f(this.gvL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.r
 * JD-Core Version:    0.6.2
 */