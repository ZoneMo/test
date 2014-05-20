package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public class CustomFitTextView extends TextView
{
  private Paint hiH;
  private String hiI;
  private Rect hiJ = new Rect();
  private LinkedList hiK = new LinkedList();
  private int hiL;
  private Drawable hiM;
  private boolean hiN;
  private boolean hiO;
  private int hiP = 0;
  private int maxLines;

  public CustomFitTextView(Context paramContext)
  {
    super(paramContext);
  }

  public CustomFitTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CustomFitTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private int a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt2 <= paramInt1)
      return paramInt1 + 1;
    int i = paramString.length();
    while (getPaint().measureText(paramString, paramInt1, paramInt2) + paramInt3 > paramInt4)
      paramInt2 = paramInt2 + paramInt1 >> 1;
    while ((paramInt2 <= i) && (getPaint().measureText(paramString, paramInt1, paramInt2) + paramInt3 < paramInt4))
      paramInt2++;
    int j = -1 + Math.min(i, paramInt2);
    for (int k = j; (k >= 0) && (cj.m(paramString.charAt(k))); k--);
    if ((k < 0) || (k == j))
      return paramInt2 - 1;
    return k + 1;
  }

  private int aNd()
  {
    Paint.FontMetrics localFontMetrics = getPaint().getFontMetrics();
    return (int)(this.hiK.size() * (localFontMetrics.bottom - localFontMetrics.top + localFontMetrics.leading) + getPaddingTop() + getPaddingBottom()) + Math.max(0, -1 + this.hiK.size()) * this.hiP;
  }

  private boolean ax(String paramString, int paramInt)
  {
    int i;
    int j;
    int k;
    int m;
    float f;
    int n;
    if ((this.hiO) && (paramInt > 0) && (paramString != null) && (!"".equals(paramString)))
    {
      this.hiK.clear();
      i = 0;
      j = paramString.length();
      k = paramInt - getPaddingLeft() - getPaddingRight();
      if (this.hiN)
      {
        m = this.hiM.getIntrinsicWidth();
        f = getPaint().measureText(paramString, 0, j) + m;
        n = this.maxLines;
        if (Float.compare(f, k * this.maxLines) >= 0)
          break label212;
      }
    }
    label212: for (int i1 = (int)Math.ceil(f / k); ; i1 = n)
    {
      int i2 = 0;
      label123: if (i2 < i1)
      {
        if (i2 == i1 - 1)
          xx(paramString.substring(i, a(paramString, i, j, m, k)).trim());
        while (true)
        {
          i2++;
          break label123;
          m = 0;
          break;
          int i3 = a(paramString, i, j, 0, k);
          xx(paramString.substring(i, i3).trim());
          i = i3;
        }
      }
      return true;
      return false;
    }
  }

  private void xx(String paramString)
  {
    if ((this.hiK == null) || (paramString == null) || ("".equals(paramString)))
      return;
    this.hiK.add(paramString);
  }

  public final void d(String paramString, boolean paramBoolean, int paramInt)
  {
    this.maxLines = 2;
    this.hiI = paramString;
    if (this.hiI == null)
    {
      aa.w("MicroMsg.CustomFitTextView", "ori text is null");
      this.hiI = "";
    }
    if (this.maxLines <= 0)
    {
      aa.w("MicroMsg.CustomFitTextView", "maxLines is invalid");
      this.maxLines = 2;
    }
    this.hiP = getResources().getDimensionPixelSize(g.aaI);
    this.hiN = paramBoolean;
    this.hiL = paramInt;
    if (this.hiN)
      this.hiM = getResources().getDrawable(this.hiL);
    this.hiH = new Paint();
    this.hiH.set(getPaint());
    this.hiH.setAntiAlias(true);
    this.hiH.setColor(getCurrentTextColor());
    ax(this.hiI, getWidth());
    setHeight(Math.max(aNd(), a.fromDPToPix(getContext(), 32)));
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (!this.hiO);
    Paint.FontMetrics localFontMetrics;
    float f1;
    float f4;
    do
    {
      do
        return;
      while ((this.hiI == null) || ("".equals(this.hiI)) || (this.hiK.size() == 0));
      localFontMetrics = getPaint().getFontMetrics();
      f1 = localFontMetrics.descent - localFontMetrics.ascent;
      float f2 = getPaddingLeft();
      float f3 = getPaddingTop();
      Iterator localIterator = this.hiK.iterator();
      float f5;
      for (f4 = f3; localIterator.hasNext(); f4 = f5)
      {
        String str = (String)localIterator.next();
        f5 = f4 + (f1 + localFontMetrics.leading);
        paramCanvas.drawText(str, f2, f5, this.hiH);
      }
    }
    while (!this.hiN);
    getPaint().getTextBounds((String)this.hiK.getLast(), 0, ((String)this.hiK.getLast()).length(), this.hiJ);
    int i = getPaddingLeft() + this.hiJ.right;
    int j = i + this.hiM.getIntrinsicWidth();
    int k = (int)(f4 - f1 - localFontMetrics.leading);
    int m = k + this.hiM.getIntrinsicHeight();
    this.hiM.setBounds(i, k, j, m);
    this.hiM.draw(paramCanvas);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = a.fromDPToPix(getContext(), 32);
    if (ax(this.hiI, i))
      j = Math.max(aNd(), j);
    setMeasuredDimension(i, j);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4));
    for (boolean bool = true; ; bool = false)
    {
      this.hiO = bool;
      if (this.hiO)
        ax(this.hiI, paramInt1);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.CustomFitTextView
 * JD-Core Version:    0.6.2
 */