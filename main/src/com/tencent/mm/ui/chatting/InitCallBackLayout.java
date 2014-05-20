package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class InitCallBackLayout extends FrameLayout
{
  private boolean gQI;
  private lz gQJ;

  public InitCallBackLayout(Context paramContext)
  {
    super(paramContext);
  }

  public InitCallBackLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public InitCallBackLayout(Context paramContext, lz paramlz)
  {
    super(paramContext);
    this.gQJ = paramlz;
  }

  public final void a(lz paramlz)
  {
    this.gQJ = paramlz;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (!this.gQI)
    {
      this.gQI = true;
      if (this.gQJ != null)
        this.gQJ.nB();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.InitCallBackLayout
 * JD-Core Version:    0.6.2
 */