package com.tencent.mm.ui.tools;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.tencent.mm.plugin.d.c.m;

public class TestTimeForChatting extends LinearLayout
{
  public final boolean DEBUG = true;
  public final String TAG = "MicroMsg.TestTimeForChatting";

  public TestTimeForChatting(Context paramContext)
  {
    super(paramContext);
  }

  public TestTimeForChatting(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    m.dZN.hy(9);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.TestTimeForChatting
 * JD-Core Version:    0.6.2
 */