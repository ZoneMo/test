package com.tencent.mm.ui.tools;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View.OnTouchListener;
import android.widget.ImageButton;
import junit.framework.Assert;

public class MaskImageButton extends ImageButton
{
  private int a = 90;
  private int b = 0;
  private Handler ezK;
  private Runnable ezL;
  private int g = 0;
  private int r = 0;

  public MaskImageButton(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public MaskImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void init()
  {
    this.ezK = new Handler();
    this.ezL = new eb(this);
    super.setOnTouchListener(new ec(this));
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (isPressed())
      paramCanvas.drawARGB(this.a, this.r, this.g, this.b);
  }

  @Deprecated
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    Assert.assertTrue(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.MaskImageButton
 * JD-Core Version:    0.6.2
 */