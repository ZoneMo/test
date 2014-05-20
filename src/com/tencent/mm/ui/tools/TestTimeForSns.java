package com.tencent.mm.ui.tools;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.tencent.mm.plugin.d.c.m;

public class TestTimeForSns extends FrameLayout
{
  public final boolean DEBUG = true;
  public final String TAG = "MicroMsg.TestTimeForSns";

  public TestTimeForSns(Context paramContext)
  {
    super(paramContext);
  }

  public TestTimeForSns(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    m.dZN.hy(10);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.TestTimeForSns
 * JD-Core Version:    0.6.2
 */