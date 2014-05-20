package android.support.v4.widget;

import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class aa extends z
{
  private Method gC;
  private Field gD;

  aa()
  {
    try
    {
      this.gC = View.class.getDeclaredMethod("getDisplayList", null);
      try
      {
        label16: this.gD = View.class.getDeclaredField("mRecreateDisplayList");
        this.gD.setAccessible(true);
        return;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      break label16;
    }
  }

  public final void b(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    if ((this.gC != null) && (this.gD != null));
    try
    {
      this.gD.setBoolean(paramView, true);
      this.gC.invoke(paramView, null);
      label33: super.b(paramSlidingPaneLayout, paramView);
      return;
      paramView.invalidate();
      return;
    }
    catch (Exception localException)
    {
      break label33;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.aa
 * JD-Core Version:    0.6.2
 */