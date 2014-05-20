package com.tencent.mm.plugin.safedevice.ui;

import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.az;

final class ab
  implements az
{
  ab(SecurityAccountVerifyUI paramSecurityAccountVerifyUI)
  {
  }

  public final boolean ok()
  {
    int i = ((Integer)SecurityAccountVerifyUI.a(this.eaJ).getTag()).intValue();
    if (i <= 1)
    {
      SecurityAccountVerifyUI.b(this.eaJ).setVisibility(0);
      SecurityAccountVerifyUI.a(this.eaJ).setVisibility(8);
      return false;
    }
    int j = i - 1;
    SecurityAccountVerifyUI.a(this.eaJ).setTag(Integer.valueOf(j));
    TextView localTextView = SecurityAccountVerifyUI.a(this.eaJ);
    SecurityAccountVerifyUI localSecurityAccountVerifyUI = this.eaJ;
    int k = n.bwQ;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(j);
    localTextView.setText(localSecurityAccountVerifyUI.getString(k, arrayOfObject));
    if (SecurityAccountVerifyUI.a(this.eaJ).getVisibility() != 0)
      SecurityAccountVerifyUI.a(this.eaJ).setVisibility(0);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.ab
 * JD-Core Version:    0.6.2
 */