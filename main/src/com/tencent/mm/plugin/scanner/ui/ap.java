package com.tencent.mm.plugin.scanner.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import com.tencent.mm.n;

final class ap
  implements View.OnTouchListener
{
  ap(ao paramao)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    this.eej.eei.edK.bd(false);
    this.eej.eei.djQ.setVisibility(0);
    this.eej.eei.djQ.setText(n.bxm);
    an.b(this.eej.eei).setVisibility(8);
    an.a(this.eej.eei, System.currentTimeMillis());
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ap
 * JD-Core Version:    0.6.2
 */