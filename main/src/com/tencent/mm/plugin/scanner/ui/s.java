package com.tencent.mm.plugin.scanner.ui;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;

final class s
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  s(q paramq)
  {
  }

  public final void onGlobalLayout()
  {
    aa.d("MicroMsg.scanner.PlainTextPreference", "summaryTv.getHeight() = " + q.b(this.ecK).getHeight() + ", summaryTv.getLineHeight() = " + q.b(this.ecK).getLineHeight());
    if ((q.b(this.ecK).getText() != null) && (q.b(this.ecK).getHeight() > 0) && (q.b(this.ecK).getLineHeight() > 0) && (q.d(this.ecK) == null))
    {
      if ((q.b(this.ecK).getHeight() / q.b(this.ecK).getLineHeight() > 5) && (!this.ecK.ecF) && (!this.ecK.ecE))
      {
        q.a(this.ecK).setVisibility(0);
        q.b(this.ecK).setMaxLines(5);
        this.ecK.ecF = true;
        if ((q.c(this.ecK) != null) && (q.c(this.ecK).mA(this.ecK.getKey()) == null))
        {
          q.c(this.ecK).b(this.ecK.getKey(), Boolean.valueOf(false));
          q.c(this.ecK).aan();
        }
      }
      aa.d("MicroMsg.scanner.PlainTextPreference", "summaryTv.getHeight() / summaryTv.getLineHeight() = " + q.b(this.ecK).getHeight() / q.b(this.ecK).getLineHeight());
    }
    q.b(this.ecK).getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.s
 * JD-Core Version:    0.6.2
 */