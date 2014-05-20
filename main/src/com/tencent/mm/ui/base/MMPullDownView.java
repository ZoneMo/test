package com.tencent.mm.ui.base;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.Scroller;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;

public class MMPullDownView extends FrameLayout
  implements GestureDetector.OnGestureListener
{
  private static int gBl = 400;
  private static final int gBo = Color.parseColor("#00000000");
  private int bgColor = Color.parseColor("#ffffffff");
  private Context context;
  private Scroller en;
  private cn gAQ;
  private cl gAR;
  private int gAS;
  private int gAT;
  private boolean gAU = false;
  private boolean gAV = false;
  private boolean gAW = false;
  private boolean gAX = false;
  private boolean gAY = true;
  private boolean gAZ = false;
  private boolean gBa = true;
  private boolean gBb = true;
  private cj gBc;
  private ck gBd;
  private View gBe;
  private View gBf;
  private int gBg;
  private int gBh = 4;
  private int gBi = 4;
  private boolean gBj = false;
  private cm gBk;
  private Handler gBm = new ci(this);
  boolean gBn = false;
  private boolean gBp = false;
  private int gBq = -2147483648;
  private int gBr = this.bgColor;
  private GestureDetector gxj;
  private int gym;
  private int gzo = 1;

  public MMPullDownView(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMPullDownView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MMPullDownView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.en = new Scroller(paramContext, new AccelerateInterpolator());
    this.gym = this.gzo;
    this.gxj = new GestureDetector(paramContext, this);
    this.context = paramContext;
  }

  private void aHl()
  {
    if (this.gBk != null)
      this.gBk.aiZ();
    if (getScrollY() - this.gAS < 0)
    {
      if (this.gBa)
      {
        this.en.startScroll(0, getScrollY(), 0, -getScrollY() + this.gAS, 200);
        postInvalidate();
      }
    }
    else if (getScrollY() > this.gAT)
    {
      if (!this.gBb)
        break label204;
      this.en.startScroll(0, getScrollY(), 0, this.gAT - getScrollY(), 200);
    }
    while (true)
    {
      postInvalidate();
      this.gAW = false;
      return;
      if (this.gBe.getVisibility() == 4)
        this.en.startScroll(0, getScrollY(), 0, -getScrollY() + this.gAS, 200);
      if (this.gBe.getVisibility() == 0)
        this.en.startScroll(0, getScrollY(), 0, -getScrollY(), 200);
      this.gBg = 0;
      this.gAX = true;
      this.gAY = false;
      break;
      label204: if (this.gBf.getVisibility() == 4)
        this.en.startScroll(0, getScrollY(), 0, this.gAT - getScrollY(), 200);
      if (this.gBf.getVisibility() == 0)
        this.en.startScroll(0, getScrollY(), 0, this.gAT - getScrollY() + this.gAT, 200);
      this.gBg = 1;
      this.gAX = true;
      this.gAY = false;
    }
  }

  public final void a(cj paramcj)
  {
    this.gBc = paramcj;
  }

  public final void a(ck paramck)
  {
    this.gBd = paramck;
  }

  public final void a(cl paramcl)
  {
    this.gAR = paramcl;
  }

  public final void a(cm paramcm)
  {
    this.gBk = paramcm;
  }

  public final void a(cn paramcn)
  {
    this.gAQ = paramcn;
  }

  public final int aHj()
  {
    return this.gAS;
  }

  public final void aHk()
  {
    if (this.gBa)
      this.en.startScroll(0, getScrollY(), 0, -getScrollY() + this.gAS, 200);
    while (true)
    {
      postInvalidate();
      return;
      if (this.gBe.getVisibility() == 4)
        this.en.startScroll(0, getScrollY(), 0, -getScrollY() + this.gAS, 200);
      if (this.gBe.getVisibility() == 0)
        this.en.startScroll(0, getScrollY(), 0, -getScrollY(), 200);
      this.gBg = 0;
      this.gAX = true;
      this.gAY = false;
    }
  }

  public final void aHm()
  {
    this.gBp = true;
  }

  public void computeScroll()
  {
    if (this.en.computeScrollOffset())
    {
      scrollTo(this.en.getCurrX(), this.en.getCurrY());
      postInvalidate();
    }
    while (true)
    {
      this.en.isFinished();
      return;
      if (this.gAX)
      {
        this.gAX = false;
        this.gBm.sendEmptyMessageDelayed(0, gBl);
      }
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.gAY)
      return true;
    if (this.gBd == null)
    {
      this.gAU = false;
      if (this.gBc != null)
        break label111;
      this.gAV = false;
      label33: if (this.gBi == 0)
      {
        if (!this.gBa)
          break label127;
        this.gBe.setVisibility(4);
      }
      label55: if (this.gBh == 0)
      {
        if (!this.gBb)
          break label138;
        this.gBf.setVisibility(4);
      }
    }
    while (true)
    {
      if (paramMotionEvent.getAction() != 1)
        break label149;
      aHl();
      return super.dispatchTouchEvent(paramMotionEvent);
      this.gAU = this.gBd.Me();
      break;
      label111: this.gAV = this.gBc.Mg();
      break label33;
      label127: this.gBe.setVisibility(0);
      break label55;
      label138: this.gBf.setVisibility(0);
    }
    label149: if (paramMotionEvent.getAction() == 3)
    {
      aHl();
      return true;
    }
    if (this.gxj.onTouchEvent(paramMotionEvent))
    {
      paramMotionEvent.setAction(3);
      this.gBn = true;
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  public final void ds(boolean paramBoolean)
  {
    this.gBa = paramBoolean;
  }

  public final void dt(boolean paramBoolean)
  {
    this.gBb = paramBoolean;
  }

  public final void du(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 0; ; i = 4)
    {
      this.gBh = i;
      if (this.gBf != null)
        this.gBf.setVisibility(this.gBh);
      return;
    }
  }

  public final void dv(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 0; ; i = 4)
    {
      this.gBi = i;
      if (this.gBe != null)
        this.gBe.setVisibility(this.gBi);
      return;
    }
  }

  public boolean onDown(MotionEvent paramMotionEvent)
  {
    if (!this.en.isFinished())
      this.en.abortAnimation();
    return false;
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.gBj)
    {
      View localView2 = inflate(this.context, k.aVn, null);
      View localView3 = inflate(this.context, k.aVn, null);
      addView(localView2, 0, new FrameLayout.LayoutParams(-1, -2));
      addView(localView3, new FrameLayout.LayoutParams(-1, -2));
      this.gBj = true;
    }
    int i = getChildCount();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      View localView1 = getChildAt(j);
      int m = localView1.getMeasuredHeight();
      if (localView1.getVisibility() != 8)
      {
        localView1.layout(0, k, localView1.getMeasuredWidth(), k + m);
        k += m;
      }
      j++;
    }
    this.gBe = getChildAt(0);
    this.gBf = getChildAt(-1 + getChildCount());
    this.gBe.setVisibility(this.gBi);
    this.gBf.setVisibility(this.gBh);
    this.gAS = this.gBe.getHeight();
    this.gAT = this.gBf.getHeight();
    this.gBq = this.gAS;
    if ((!this.gAZ) && (this.gAS != 0))
    {
      this.gAZ = true;
      scrollTo(0, this.gAS);
    }
  }

  public void onLongPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    int i = -1;
    if (this.gBk != null)
      this.gBk.ab(paramFloat2);
    int k;
    if (paramFloat2 > 0.0F)
    {
      this.gAW = true;
      if (((!this.gAW) || (!this.gAV)) && ((this.gAW) || (getScrollY() - this.gAS <= 0) || (!this.gAV)))
        break label147;
      k = (int)(0.5D * paramFloat2);
      if (k != 0)
        break label255;
      if (paramFloat2 <= 0.0F);
    }
    label147: label248: label255: for (i = 1; ; i = k)
    {
      if ((i + getScrollY() < this.gAS) && (!this.gAW))
        i = this.gAS - getScrollY();
      scrollBy(0, i);
      return true;
      this.gAW = false;
      break;
      int j;
      if (((!this.gAW) && (this.gAU)) || ((this.gAW) && (getScrollY() - this.gAS < 0) && (this.gAU)))
      {
        j = (int)(0.5D * paramFloat2);
        if (j != 0)
          break label248;
        if (paramFloat2 <= 0.0F);
      }
      for (i = 1; ; i = j)
      {
        if (i + getScrollY() > this.gAS)
          i = this.gAS - getScrollY();
        scrollBy(0, i);
        return true;
        return false;
      }
    }
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (!this.gBp);
    do
    {
      return;
      if (this.gBq == -2147483648)
      {
        this.gBq = this.gAS;
        aa.d("MicroMsg.MMPullDownView", "onScrollChanged static y:" + this.gBq);
      }
      if ((paramInt2 <= this.gBq) && (this.gBr != gBo))
      {
        setBackgroundResource(h.afS);
        this.gBr = gBo;
        aa.d("MicroMsg.MMPullDownView", "onScrollChanged full");
        return;
      }
    }
    while ((paramInt2 <= this.gBq) || (this.gBr == this.bgColor));
    aa.d("MicroMsg.MMPullDownView", "onScrollChanged white");
    setBackgroundColor(this.bgColor);
    this.gBr = this.bgColor;
  }

  public void onShowPress(MotionEvent paramMotionEvent)
  {
  }

  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
      return true;
    case 1:
    }
    if (getScrollY() - this.gAS < 0)
      this.gAU = true;
    if (getScrollY() > this.gAT)
      this.gAV = true;
    aHl();
    return true;
  }

  public final void wj(String paramString)
  {
    this.bgColor = Color.parseColor(paramString);
    this.gBr = this.bgColor;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMPullDownView
 * JD-Core Version:    0.6.2
 */