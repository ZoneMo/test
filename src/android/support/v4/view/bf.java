package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;

class bf extends be
{
  public final void a(View paramView, a parama)
  {
    paramView.setAccessibilityDelegate((View.AccessibilityDelegate)parama.ab());
  }

  public final boolean a(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bf
 * JD-Core Version:    0.6.2
 */