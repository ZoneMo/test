package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.o;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class bx extends a
{
  bx(ViewPager paramViewPager)
  {
  }

  private boolean ar()
  {
    return (ViewPager.b(this.fb) != null) && (ViewPager.b(this.fb).getCount() > 1);
  }

  public final void a(View paramView, android.support.v4.view.a.a parama)
  {
    super.a(paramView, parama);
    parama.setClassName(ViewPager.class.getName());
    parama.setScrollable(ar());
    if (this.fb.canScrollHorizontally(1))
      parama.addAction(4096);
    if (this.fb.canScrollHorizontally(-1))
      parama.addAction(8192);
  }

  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    o localo = o.ay();
    localo.setScrollable(ar());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.b(this.fb) != null))
    {
      localo.setItemCount(ViewPager.b(this.fb).getCount());
      localo.setFromIndex(ViewPager.c(this.fb));
      localo.setToIndex(ViewPager.c(this.fb));
    }
  }

  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 4096:
      if (this.fb.canScrollHorizontally(1))
      {
        this.fb.m(1 + ViewPager.c(this.fb));
        return true;
      }
      return false;
    case 8192:
    }
    if (this.fb.canScrollHorizontally(-1))
    {
      this.fb.m(-1 + ViewPager.c(this.fb));
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bx
 * JD-Core Version:    0.6.2
 */