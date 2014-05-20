package com.tencent.mm.ui;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;

final class bl
  implements Runnable
{
  bl(MMActivity paramMMActivity, boolean paramBoolean, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    View localView = MMActivity.d(this.gnB);
    int i;
    String str2;
    if (this.val$visible)
    {
      i = 0;
      localView.setVisibility(i);
      String str1 = this.gnB.getString(n.bpe);
      if (!cj.hX(this.dPV))
        break label160;
      str2 = this.gnB.getString(n.bpd);
      label55: if (this.eeS == null)
        break label169;
      SpannableString localSpannableString = new SpannableString(str2 + str1);
      localSpannableString.setSpan(new ForegroundColorSpan(-10119449), str2.length(), str2.length() + str1.length(), 33);
      MMActivity.e(this.gnB).setText(localSpannableString);
    }
    while (true)
    {
      MMActivity.d(this.gnB).invalidate();
      MMActivity.f(this.gnB).invalidate();
      return;
      i = 8;
      break;
      label160: str2 = this.dPV;
      break label55;
      label169: MMActivity.e(this.gnB).setText(str2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bl
 * JD-Core Version:    0.6.2
 */