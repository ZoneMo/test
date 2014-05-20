package android.support.v7.internal.widget;

import android.view.View;

final class am
  implements Runnable
{
  am(ScrollingTabContainerView paramScrollingTabContainerView, View paramView)
  {
  }

  public final void run()
  {
    int i = this.pu.getLeft() - (this.pv.getWidth() - this.pu.getWidth()) / 2;
    this.pv.smoothScrollTo(i, 0);
    this.pv.mD = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.am
 * JD-Core Version:    0.6.2
 */