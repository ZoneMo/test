package android.support.v7.internal.widget;

import android.support.v7.internal.view.menu.s;
import android.view.View;
import android.view.View.OnClickListener;

final class f
  implements View.OnClickListener
{
  f(ActionBarView paramActionBarView)
  {
  }

  public final void onClick(View paramView)
  {
    s locals = ActionBarView.b(this.mK).mL;
    if (locals != null)
      locals.collapseActionView();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.f
 * JD-Core Version:    0.6.2
 */