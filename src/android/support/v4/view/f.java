package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.g;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class f
  implements m
{
  f(e parame, a parama)
  {
  }

  public final void b(View paramView, Object paramObject)
  {
    this.cX.a(paramView, new android.support.v4.view.a.a(paramObject));
  }

  public final Object d(View paramView)
  {
    g localg = a.c(paramView);
    if (localg != null)
      return localg.at();
    return null;
  }

  public final boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }

  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.cX.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }

  public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }

  public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return this.cX.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }

  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return this.cX.performAccessibilityAction(paramView, paramInt, paramBundle);
  }

  public final void sendAccessibilityEvent(View paramView, int paramInt)
  {
    a.sendAccessibilityEvent(paramView, paramInt);
  }

  public final void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.f
 * JD-Core Version:    0.6.2
 */