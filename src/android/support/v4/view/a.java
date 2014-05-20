package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class a
{
  private static final d cU;
  private static final Object cV;
  final Object cW = cU.a(this);

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
      cU = new e();
    while (true)
    {
      cV = cU.ac();
      return;
      if (Build.VERSION.SDK_INT >= 14)
        cU = new b();
      else
        cU = new g();
    }
  }

  public static android.support.v4.view.a.g c(View paramView)
  {
    return cU.a(cV, paramView);
  }

  public static boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return cU.a(cV, paramView, paramAccessibilityEvent);
  }

  public static void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    cU.c(cV, paramView, paramAccessibilityEvent);
  }

  public static void sendAccessibilityEvent(View paramView, int paramInt)
  {
    cU.a(cV, paramView, paramInt);
  }

  public static void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    cU.d(cV, paramView, paramAccessibilityEvent);
  }

  public void a(View paramView, android.support.v4.view.a.a parama)
  {
    cU.a(cV, paramView, parama);
  }

  final Object ab()
  {
    return this.cW;
  }

  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    cU.b(cV, paramView, paramAccessibilityEvent);
  }

  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return cU.a(cV, paramViewGroup, paramView, paramAccessibilityEvent);
  }

  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return cU.a(cV, paramView, paramInt, paramBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a
 * JD-Core Version:    0.6.2
 */