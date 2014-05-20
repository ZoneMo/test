package android.support.v4.view.a;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class m extends AccessibilityNodeProvider
{
  m(n paramn)
  {
  }

  public final AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
  {
    this.fs.ax();
    return null;
  }

  public final List findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    return this.fs.aw();
  }

  public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return this.fs.av();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.m
 * JD-Core Version:    0.6.2
 */