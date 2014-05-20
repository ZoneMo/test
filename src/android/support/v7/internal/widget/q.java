package android.support.v7.internal.widget;

import android.support.v4.view.n;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class q
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  q(ActivityChooserView paramActivityChooserView)
  {
  }

  public final void onGlobalLayout()
  {
    if (this.nz.da())
    {
      if (this.nz.isShown())
        break label31;
      ActivityChooserView.b(this.nz).dismiss();
    }
    label31: 
    do
    {
      return;
      ActivityChooserView.b(this.nz).show();
    }
    while (this.nz.nq == null);
    this.nz.nq.c(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.q
 * JD-Core Version:    0.6.2
 */