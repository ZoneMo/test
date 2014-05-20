package android.support.v7.internal.view.menu;

import android.support.v7.a.b;
import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

final class x extends FrameLayout
  implements CollapsibleActionView
{
  final b lj;

  x(View paramView)
  {
    super(paramView.getContext());
    this.lj = ((b)paramView);
    addView(paramView);
  }

  final View cA()
  {
    return (View)this.lj;
  }

  public final void onActionViewCollapsed()
  {
    this.lj.onActionViewCollapsed();
  }

  public final void onActionViewExpanded()
  {
    this.lj.onActionViewExpanded();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.x
 * JD-Core Version:    0.6.2
 */