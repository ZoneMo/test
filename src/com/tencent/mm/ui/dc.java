package com.tencent.mm.ui;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;

final class dc
  implements Runnable
{
  dc(cy paramcy, boolean paramBoolean, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    View localView = cy.b(this.gom);
    int i;
    String str2;
    if (this.val$visible)
    {
      i = 0;
      localView.setVisibility(i);
      String str1 = this.gom.getString(n.bpe);
      if (!cj.hX(this.dPV))
        break label160;
      str2 = this.gom.getString(n.bpd);
      label55: if (this.eeS == null)
        break label169;
      SpannableString localSpannableString = new SpannableString(str2 + str1);
      localSpannableString.setSpan(new ForegroundColorSpan(-10119449), str2.length(), str2.length() + str1.length(), 33);
      cy.c(this.gom).setText(localSpannableString);
    }
    while (true)
    {
      cy.b(this.gom).invalidate();
      cy.d(this.gom).invalidate();
      return;
      i = 8;
      break;
      label160: str2 = this.dPV;
      break label55;
      label169: cy.c(this.gom).setText(str2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dc
 * JD-Core Version:    0.6.2
 */