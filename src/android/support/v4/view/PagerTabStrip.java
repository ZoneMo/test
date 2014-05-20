package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;

public class PagerTabStrip extends PagerTitleStrip
{
  private float dA;
  private float dB;
  private int dC;
  private int dn = this.dT;
  private int jdField_do;
  private int dp;
  private int dq;
  private int dr;
  private int ds;
  private final Paint dt = new Paint();
  private final Rect du = new Rect();
  private int dv = 255;
  private boolean dw = false;
  private boolean dx = false;
  private int dy;
  private boolean dz;

  public PagerTabStrip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.dt.setColor(this.dn);
    float f = paramContext.getResources().getDisplayMetrics().density;
    this.jdField_do = ((int)(0.5F + 3.0F * f));
    this.dp = ((int)(0.5F + 6.0F * f));
    this.dq = ((int)(64.0F * f));
    this.ds = ((int)(0.5F + 16.0F * f));
    this.dy = ((int)(0.5F + 1.0F * f));
    this.dr = ((int)(0.5F + f * 32.0F));
    this.dC = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    i(af());
    setWillNotDraw(false);
    this.dF.setFocusable(true);
    this.dF.setOnClickListener(new ao(this));
    this.dH.setFocusable(true);
    this.dH.setOnClickListener(new ap(this));
    if (getBackground() == null)
      this.dw = true;
  }

  final void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    Rect localRect = this.du;
    int i = getHeight();
    int j = this.dG.getLeft() - this.ds;
    int k = this.dG.getRight() + this.ds;
    int m = i - this.jdField_do;
    localRect.set(j, m, k, i);
    super.a(paramInt, paramFloat, paramBoolean);
    this.dv = ((int)(255.0F * (2.0F * Math.abs(paramFloat - 0.5F))));
    localRect.union(this.dG.getLeft() - this.ds, m, this.dG.getRight() + this.ds, i);
    invalidate(localRect);
  }

  final int getMinHeight()
  {
    return Math.max(super.getMinHeight(), this.dr);
  }

  public final void i(int paramInt)
  {
    if (paramInt < this.dq)
      paramInt = this.dq;
    super.i(paramInt);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = getHeight();
    int j = this.dG.getLeft() - this.ds;
    int k = this.dG.getRight() + this.ds;
    int m = i - this.jdField_do;
    this.dt.setColor(this.dv << 24 | 0xFFFFFF & this.dn);
    paramCanvas.drawRect(j, m, k, i, this.dt);
    if (this.dw)
    {
      this.dt.setColor(0xFF000000 | 0xFFFFFF & this.dn);
      paramCanvas.drawRect(getPaddingLeft(), i - this.dy, getWidth() - getPaddingRight(), i, this.dt);
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if ((i != 0) && (this.dz))
      return false;
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      return true;
      this.dA = f1;
      this.dB = f2;
      this.dz = false;
      continue;
      if ((Math.abs(f1 - this.dA) > this.dC) || (Math.abs(f2 - this.dB) > this.dC))
      {
        this.dz = true;
        continue;
        if (f1 < this.dG.getLeft() - this.ds)
          this.dE.m(-1 + this.dE.ak());
        else if (f1 > this.dG.getRight() + this.ds)
          this.dE.m(1 + this.dE.ak());
      }
    }
  }

  public void setBackgroundColor(int paramInt)
  {
    super.setBackgroundColor(paramInt);
    if (!this.dx)
      if ((0xFF000000 & paramInt) != 0)
        break label27;
    label27: for (boolean bool = true; ; bool = false)
    {
      this.dw = bool;
      return;
    }
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (!this.dx)
      if (paramDrawable != null)
        break label24;
    label24: for (boolean bool = true; ; bool = false)
    {
      this.dw = bool;
      return;
    }
  }

  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (!this.dx)
      if (paramInt != 0)
        break label24;
    label24: for (boolean bool = true; ; bool = false)
    {
      this.dw = bool;
      return;
    }
  }

  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt4 < this.dp)
      paramInt4 = this.dp;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.PagerTabStrip
 * JD-Core Version:    0.6.2
 */