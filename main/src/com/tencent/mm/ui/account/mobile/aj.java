package com.tencent.mm.ui.account.mobile;

import android.content.res.Resources;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.tencent.mm.f;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;

final class aj extends ClickableSpan
{
  aj(ah paramah, MobileInputUI paramMobileInputUI)
  {
  }

  public final void onClick(View paramView)
  {
    cj.w(this.gvW.aal(), this.gvW.getString(n.bDF));
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setColor(this.gvW.getResources().getColor(f.ZZ));
    paramTextPaint.setUnderlineText(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.aj
 * JD-Core Version:    0.6.2
 */