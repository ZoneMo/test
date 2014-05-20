package com.tencent.mm.plugin.scanner.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;

final class r
  implements View.OnTouchListener
{
  r(q paramq)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      aa.d("MicroMsg.scanner.PlainTextPreference", "moreTv onTouch");
      q.a(this.ecK).setVisibility(4);
      q.b(this.ecK).setMaxLines(2000);
      this.ecK.ecE = true;
      if (q.c(this.ecK) != null)
      {
        q.c(this.ecK).b(this.ecK.getKey(), Boolean.valueOf(true));
        q.c(this.ecK).aan();
      }
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.r
 * JD-Core Version:    0.6.2
 */