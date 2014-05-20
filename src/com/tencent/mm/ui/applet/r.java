package com.tencent.mm.ui.applet;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import com.tencent.mm.ar.a;

final class r
  implements View.OnClickListener
{
  r(p paramp)
  {
  }

  public final void onClick(View paramView)
  {
    if ((p.b(this.gxE)) && (p.c(this.gxE).getVisibility() != 0))
      a.aDD().b(this.gxE.gxB);
    this.gxE.nA();
    o.aGy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.r
 * JD-Core Version:    0.6.2
 */