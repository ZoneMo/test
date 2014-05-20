package com.tencent.mm.ui.setting;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.modelstat.f;
import com.tencent.mm.modelstat.j;
import com.tencent.mm.modelstat.r;
import com.tencent.mm.sdk.platformtools.aa;

class NetStatUnit extends View
{
  protected static int max;
  private int hdX;
  private int total;

  public NetStatUnit(Context paramContext)
  {
    this(paramContext, null);
  }

  public NetStatUnit(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NetStatUnit(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void bm(int paramInt1, int paramInt2)
  {
    this.hdX = paramInt1;
    this.total = paramInt2;
    if (paramInt1 > 94371840)
      this.hdX = 94371840;
    if (paramInt2 > 94371840)
      this.total = 94371840;
    int i;
    if (paramInt1 > paramInt2)
    {
      i = 1572864 * (1 + paramInt1 / 1572864);
      if (94371840 <= i)
        break label78;
      label55: if (3145728 >= i)
        break label84;
    }
    while (true)
    {
      if (i > max)
        max = i;
      return;
      paramInt1 = paramInt2;
      break;
      label78: i = 94371840;
      break label55;
      label84: i = 3145728;
    }
  }

  @SuppressLint({"DrawAllocation"})
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Paint localPaint = new Paint();
    Rect localRect1 = new Rect();
    getDrawingRect(localRect1);
    float f1 = localRect1.height() * this.total / max;
    float f2 = 0.6F * localRect1.width();
    Rect localRect2 = new Rect(localRect1.left, (int)(localRect1.bottom - f1), (int)(f2 + localRect1.left), localRect1.bottom);
    localPaint.setColor(-7829368);
    paramCanvas.drawRect(localRect2, localPaint);
    float f3 = localRect1.height() * this.hdX / max;
    float f4 = 0.6F * localRect1.width();
    Rect localRect3 = new Rect(localRect1.left, (int)(localRect1.bottom - f3), (int)(f4 + localRect1.left), localRect1.bottom);
    localPaint.setColor(-16711936);
    paramCanvas.drawRect(localRect3, localPaint);
  }

  public final void r(int paramInt, boolean paramBoolean)
  {
    f localf = r.Dg().el(paramInt);
    if (localf == null)
      return;
    if (paramBoolean)
    {
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = Integer.valueOf(localf.CV());
      arrayOfObject2[1] = Integer.valueOf(localf.CR());
      arrayOfObject2[2] = Integer.valueOf(localf.CX());
      arrayOfObject2[3] = Integer.valueOf(localf.CT());
      aa.d("MicroMsg.NetStatUnit", "dknetflow wifi : %d %d %d %d", arrayOfObject2);
      bm(localf.CV() + localf.CR(), localf.CX() + localf.CT());
      return;
    }
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Integer.valueOf(localf.CU());
    arrayOfObject1[1] = Integer.valueOf(localf.CQ());
    arrayOfObject1[2] = Integer.valueOf(localf.CW());
    arrayOfObject1[3] = Integer.valueOf(localf.CS());
    aa.d("MicroMsg.NetStatUnit", "dknetflow mobile : %d %d %d %d", arrayOfObject1);
    bm(localf.CU() + localf.CQ(), localf.CW() + localf.CS());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.NetStatUnit
 * JD-Core Version:    0.6.2
 */