package com.tencent.mm.ui.base;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.e;

public abstract class VerticalScrollBar extends View
{
  private Paint cRI;
  private TextView gCJ;
  protected float gEU;
  protected int gEV;
  protected String[] gEW;
  private int gEX;
  private float gEY;
  private float gEZ;
  private ce gFa;
  private int gFb;
  private ek gFc;

  public VerticalScrollBar(Context paramContext)
  {
    super(paramContext);
    r(paramContext);
  }

  public VerticalScrollBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    r(paramContext);
  }

  private void r(Context paramContext)
  {
    aGw();
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.gFb = e.a(paramContext, 3.0F);
    View localView = inflate(paramContext, aGx(), null);
    int i = e.a(paramContext, this.gEV);
    this.gFa = new ce(localView, i, i);
    this.gCJ = ((TextView)localView.findViewById(i.aKB));
    this.cRI = new Paint();
    this.cRI.setAntiAlias(true);
    this.cRI.setColor(-8024940);
    this.cRI.setTextAlign(Paint.Align.CENTER);
  }

  public final void a(ek paramek)
  {
    this.gFc = paramek;
  }

  protected abstract void aGw();

  protected abstract int aGx();

  public final void aHU()
  {
    this.gFc = null;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = getMeasuredHeight();
    int j = getMeasuredWidth();
    this.gEY = (i / (this.gEW.length * this.gEU));
    this.cRI.setTextSize(this.gEY);
    for (int k = 0; k < this.gEW.length; k++)
      paramCanvas.drawText(this.gEW[k], j / 2.0F, this.gEY + k * this.gEY * this.gEU, this.cRI);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) || (paramMotionEvent.getAction() == 2))
    {
      this.gEZ = paramMotionEvent.getY();
      if (this.gEZ < 0.0F)
        this.gEZ = 0.0F;
      if (this.gEZ > getMeasuredHeight())
        this.gEZ = getMeasuredHeight();
      setBackgroundDrawable(a.k(getContext(), h.aid));
      int i = (int)(this.gEZ / (this.gEY * this.gEU));
      if (i >= this.gEW.length)
        i = -1 + this.gEW.length;
      this.gEX = i;
      if (this.gEX != -1)
        break label209;
      this.gCJ.setText(n.bxE);
      this.gFa.showAtLocation(this, 17, 0, 0);
      if (this.gFc != null)
      {
        if (this.gEX != -1)
          break label228;
        this.gFc.lx(a.m(getContext(), n.bxE));
      }
    }
    while (true)
    {
      invalidate();
      if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3))
      {
        setBackgroundResource(0);
        this.gFa.dismiss();
      }
      return true;
      label209: this.gCJ.setText(this.gEW[this.gEX]);
      break;
      label228: this.gFc.lx(this.gEW[this.gEX]);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.VerticalScrollBar
 * JD-Core Version:    0.6.2
 */