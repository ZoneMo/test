package com.tencent.mm.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.platformtools.b;

public class BorderNumView extends View
{
  private static int gkp = 22;
  private static int gkq = 105;
  private static int gkr = 100;
  private Context context = null;
  private Paint edo;
  private int gko = 100;

  public BorderNumView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    init();
  }

  public BorderNumView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    init();
  }

  private void init()
  {
    this.edo = new Paint();
  }

  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.gko < 100)
      gkp = 15 + gkp;
    if (this.gko >= 1000)
      gkr = -20 + gkr;
    float f1 = b.a(this.context, gkp);
    float f2 = b.a(this.context, gkq);
    String str = this.gko;
    this.edo.setAntiAlias(true);
    this.edo.setTextSize(gkr);
    this.edo.setColor(-11491572);
    this.edo.setStyle(Paint.Style.STROKE);
    this.edo.setStrokeWidth(8.0F);
    paramCanvas.drawText(str, f1, f2, this.edo);
    this.edo.setTextSize(gkr);
    this.edo.setColor(-1770573);
    this.edo.setStyle(Paint.Style.FILL);
    this.edo.setStrokeWidth(8.0F);
    paramCanvas.drawText(str, f1, f2, this.edo);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.BorderNumView
 * JD-Core Version:    0.6.2
 */