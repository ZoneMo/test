package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;

public class ChattingItemDyeingTemplateTopView extends View
{
  private Paint cRI = new Paint(1);
  private int color = -1;
  private final int gMR;

  public ChattingItemDyeingTemplateTopView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public ChattingItemDyeingTemplateTopView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ChattingItemDyeingTemplateTopView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.gMR = e.a(paramContext, 5.0F);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    aa.d("MicroMsg.ChattingItemDyeingTemplateTopView", "onDraw, paint color(hex) = " + Integer.toHexString(this.color) + ", height = " + this.gMR);
    this.cRI.setColor(this.color);
    paramCanvas.drawCircle(this.gMR, this.gMR, this.gMR, this.cRI);
    paramCanvas.drawRect(this.gMR, 0.0F, getWidth() - this.gMR, this.gMR, this.cRI);
    paramCanvas.drawCircle(getWidth() - this.gMR, this.gMR, this.gMR, this.cRI);
  }

  public final void setColor(int paramInt)
  {
    aa.d("MicroMsg.ChattingItemDyeingTemplateTopView", "setColor, color(hex) = " + Integer.toHexString(paramInt));
    this.color = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ChattingItemDyeingTemplateTopView
 * JD-Core Version:    0.6.2
 */