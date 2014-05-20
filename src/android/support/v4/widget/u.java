package android.support.v4.widget;

import android.support.v4.view.ba;
import android.view.View;
import java.util.ArrayList;

final class u
  implements Runnable
{
  final View gx;

  u(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    this.gx = paramView;
  }

  public final void run()
  {
    if (this.gx.getParent() == this.gw)
    {
      ba.a(this.gx, 0, null);
      SlidingPaneLayout.a(this.gw, this.gx);
    }
    SlidingPaneLayout.f(this.gw).remove(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.u
 * JD-Core Version:    0.6.2
 */