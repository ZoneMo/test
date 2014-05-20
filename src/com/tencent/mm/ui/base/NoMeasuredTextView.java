package com.tencent.mm.ui.base;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.BoringLayout;
import android.text.BoringLayout.Metrics;
import android.text.Editable.Factory;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.Selection;
import android.text.Spannable.Factory;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.util.TypedValue;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityNodeInfo;

@SuppressLint({"ResourceAsColor"})
public class NoMeasuredTextView extends View
{
  private static final BoringLayout.Metrics gEh = new BoringLayout.Metrics();
  private int dL = 51;
  private TextPaint eBR = new TextPaint(1);
  private Editable.Factory gDA = Editable.Factory.getInstance();
  private Spannable.Factory gDB = Spannable.Factory.getInstance();
  private TextUtils.TruncateAt gDC = null;
  private CharSequence gDD = "";
  private dx gDE = dx.gEi;
  private KeyListener gDF;
  private Layout gDG;
  private float gDH = 1.0F;
  private float gDI = 0.0F;
  private int gDJ = 2147483647;
  private int gDK = 1;
  private int gDL = 0;
  private int gDM = 1;
  private boolean gDN = false;
  private boolean gDO = false;
  private boolean gDP;
  private int gDQ = -1;
  private boolean gDR = true;
  private BoringLayout gDS;
  private boolean gDT = false;
  private int gDU;
  private Paint.FontMetricsInt gDV;
  private boolean gDW = false;
  private boolean gDX = false;
  private dy gDY;
  private boolean gDZ = false;
  private ColorStateList gDy;
  private int gDz;
  private boolean gEa = false;
  private boolean gEb = false;
  private boolean gEc = false;
  private int gEd = -1;
  private int gEe = -1;
  private int gEf = -1;
  private int gEg = -1;
  private int jg = 0;
  private CharSequence mText = "";
  private int oP = 2147483647;

  static
  {
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.measureText("H");
  }

  public NoMeasuredTextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public NoMeasuredTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.eBR.density = getResources().getDisplayMetrics().density;
    setDrawingCacheEnabled(false);
    this.gDV = this.eBR.getFontMetricsInt();
    aHQ();
    this.gDP = true;
    this.gDL = 1;
    this.gDJ = 1;
    this.gDM = 1;
    this.gDK = 1;
    requestLayout();
    invalidate();
    this.gDC = null;
    if (this.gDG != null)
    {
      aHO();
      requestLayout();
      invalidate();
    }
  }

  private int aHN()
  {
    int i = 0x70 & this.dL;
    Layout localLayout = this.gDG;
    int j = 0;
    int k;
    int m;
    if (i != 48)
    {
      k = getMeasuredHeight() - getExtendedPaddingTop() - getExtendedPaddingBottom();
      m = localLayout.getHeight();
      j = 0;
      if (m < k)
      {
        if (i != 80)
          break label66;
        j = k - m;
      }
    }
    return j;
    label66: return k - m >> 1;
  }

  private void aHO()
  {
    if (((this.gDG instanceof BoringLayout)) && (this.gDS == null))
      this.gDS = ((BoringLayout)this.gDG);
    this.gDG = null;
  }

  private void aHP()
  {
    if (this.gDN);
    for (int i = this.oP - getCompoundPaddingLeft() - getCompoundPaddingRight(); ; i = getRight() - getLeft() - getCompoundPaddingLeft() - getCompoundPaddingRight())
    {
      if (i <= 0)
        i = 0;
      bl(i, i);
      return;
    }
  }

  private void aHQ()
  {
    if (this.gDU == 0)
      this.gDU = ((int)(2.0D + Math.ceil(this.gDV.descent - this.gDV.ascent)));
  }

  private void bl(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0);
    for (int i = 0; ; i = paramInt1)
    {
      Layout.Alignment localAlignment;
      switch (0x7 & this.dL)
      {
      default:
        localAlignment = Layout.Alignment.ALIGN_NORMAL;
        if ((this.gDC == null) || (this.gDF != null))
          break;
      case 1:
      case 5:
      }
      for (int j = 1; ; j = 0)
      {
        if (j == 0)
          break label139;
        this.gDG = new StaticLayout(this.gDD, 0, this.gDD.length(), this.eBR, i, localAlignment, this.gDH, this.gDI, this.gDR, this.gDC, paramInt2);
        return;
        localAlignment = Layout.Alignment.ALIGN_CENTER;
        break;
        localAlignment = Layout.Alignment.ALIGN_OPPOSITE;
        break;
      }
      label139: this.gDG = new StaticLayout(this.gDD, this.eBR, i, localAlignment, this.gDH, this.gDI, this.gDR);
      return;
    }
  }

  private void c(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    dy localdy = this.gDY;
    int i;
    if ((paramDrawable1 != null) || (paramDrawable2 != null))
      i = 1;
    while (i == 0)
    {
      if (localdy != null)
      {
        if (localdy.gEz == 0)
          this.gDY = null;
      }
      else
      {
        invalidate();
        return;
        i = 0;
        continue;
      }
      if (localdy.gEp != null)
        localdy.gEp.setCallback(null);
      localdy.gEp = null;
      if (localdy.gEn != null)
        localdy.gEn.setCallback(null);
      localdy.gEn = null;
      if (localdy.gEq != null)
        localdy.gEq.setCallback(null);
      localdy.gEq = null;
      if (localdy.gEo != null)
        localdy.gEo.setCallback(null);
      localdy.gEo = null;
      localdy.gEx = 0;
      localdy.gEt = 0;
    }
    label405: 
    while (true)
    {
      localdy.gEy = 0;
      localdy.gEu = 0;
      localdy.gEv = 0;
      localdy.gEr = 0;
      localdy.gEw = 0;
      localdy.gEs = 0;
      break;
      if (localdy == null)
      {
        localdy = new dy(this);
        this.gDY = localdy;
      }
      if ((localdy.gEp != paramDrawable1) && (localdy.gEp != null))
        localdy.gEp.setCallback(null);
      localdy.gEp = paramDrawable1;
      if ((localdy.gEn != null) && (localdy.gEn != null))
        localdy.gEn.setCallback(null);
      localdy.gEn = null;
      if ((localdy.gEq != paramDrawable2) && (localdy.gEq != null))
        localdy.gEq.setCallback(null);
      localdy.gEq = paramDrawable2;
      if ((localdy.gEo != null) && (localdy.gEo != null))
        localdy.gEo.setCallback(null);
      localdy.gEo = null;
      Rect localRect = localdy.gEm;
      int[] arrayOfInt = getDrawableState();
      if (paramDrawable1 != null)
      {
        paramDrawable1.setState(arrayOfInt);
        paramDrawable1.copyBounds(localRect);
        paramDrawable1.setCallback(this);
        localdy.gEt = localRect.width();
        localdy.gEx = localRect.height();
      }
      while (true)
      {
        if (paramDrawable2 == null)
          break label405;
        paramDrawable2.setState(arrayOfInt);
        paramDrawable2.copyBounds(localRect);
        paramDrawable2.setCallback(this);
        localdy.gEu = localRect.width();
        localdy.gEy = localRect.height();
        break;
        localdy.gEx = 0;
        localdy.gEt = 0;
      }
    }
  }

  private int getCompoundPaddingBottom()
  {
    dy localdy = this.gDY;
    if ((localdy == null) || (localdy.gEo == null) || (!this.gEc))
      return getPaddingBottom();
    return getPaddingBottom() + localdy.gEz + localdy.gEs;
  }

  private int getCompoundPaddingLeft()
  {
    dy localdy = this.gDY;
    if ((localdy == null) || (localdy.gEp == null) || (!this.gDZ))
      return getPaddingLeft();
    return getPaddingLeft() + localdy.gEz + localdy.gEt;
  }

  private int getCompoundPaddingRight()
  {
    dy localdy = this.gDY;
    if ((localdy == null) || (localdy.gEq == null) || (!this.gEa))
      return getPaddingRight();
    return getPaddingRight() + localdy.gEz + localdy.gEu;
  }

  private int getCompoundPaddingTop()
  {
    dy localdy = this.gDY;
    if ((localdy == null) || (localdy.gEn == null) || (!this.gEb))
      return getPaddingTop();
    return getPaddingTop() + localdy.gEz + localdy.gEr;
  }

  private int getExtendedPaddingBottom()
  {
    int i;
    if ((this.gDG == null) || (this.gDK != 1))
      i = getCompoundPaddingBottom();
    int k;
    int m;
    int n;
    do
    {
      do
      {
        return i;
        if (this.gDG.getLineCount() <= this.gDJ)
          return getCompoundPaddingBottom();
        int j = getCompoundPaddingTop();
        i = getCompoundPaddingBottom();
        k = getHeight() - j - i;
        m = this.gDG.getLineTop(this.gDJ);
      }
      while (m >= k);
      n = 0x70 & this.dL;
      if (n == 48)
        return i + k - m;
    }
    while (n == 80);
    return i + (k - m) / 2;
  }

  private int getExtendedPaddingTop()
  {
    int i;
    if ((this.gDG == null) || (this.gDK != 1))
      i = getCompoundPaddingTop();
    int k;
    int m;
    int n;
    do
    {
      do
      {
        return i;
        if (this.gDG.getLineCount() <= this.gDJ)
          return getCompoundPaddingTop();
        i = getCompoundPaddingTop();
        int j = getCompoundPaddingBottom();
        k = getHeight() - i - j;
        m = this.gDG.getLineTop(this.gDJ);
      }
      while (m >= k);
      n = 0x70 & this.dL;
    }
    while (n == 48);
    if (n == 80)
      return i + k - m;
    return i + (k - m) / 2;
  }

  private void updateTextColors()
  {
    int i = this.gDy.getColorForState(getDrawableState(), 0);
    int j = this.gDz;
    int k = 0;
    if (i != j)
    {
      this.gDz = i;
      k = 1;
    }
    if (k != 0)
      invalidate();
  }

  public final void Q(float paramFloat)
  {
    Context localContext = getContext();
    if (localContext == null);
    for (Resources localResources = Resources.getSystem(); ; localResources = localContext.getResources())
    {
      float f = TypedValue.applyDimension(0, paramFloat, localResources.getDisplayMetrics());
      if (f != this.eBR.getTextSize())
      {
        this.eBR.setTextSize(f);
        this.gDV = this.eBR.getFontMetricsInt();
        this.gDU = ((int)(2.0D + Math.ceil(this.gDV.descent - this.gDV.ascent)));
        if (this.gDG != null)
        {
          aHO();
          requestLayout();
          invalidate();
        }
      }
      return;
    }
  }

  public final void aHM()
  {
    if (2130838671 != this.gEe)
    {
      this.gEe = 2130838671;
      Drawable localDrawable = getResources().getDrawable(2130838671);
      if ((localDrawable != null) && ((this.gDY == null) || (this.gDY.gEq != localDrawable)))
      {
        localDrawable.setBounds(0, 0, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
        c(null, localDrawable);
      }
    }
  }

  protected int computeHorizontalScrollRange()
  {
    if (this.gDG != null)
      return this.gDG.getWidth();
    return super.computeHorizontalScrollRange();
  }

  protected int computeVerticalScrollExtent()
  {
    return getHeight() - getCompoundPaddingTop() - getCompoundPaddingBottom();
  }

  protected int computeVerticalScrollRange()
  {
    if (this.gDG != null)
      return this.gDG.getHeight();
    return super.computeVerticalScrollRange();
  }

  public final void dA(boolean paramBoolean)
  {
    this.gDX = paramBoolean;
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((this.gDy != null) && (this.gDy.isStateful()))
      updateTextColors();
    dy localdy = this.gDY;
    if (localdy != null)
    {
      int[] arrayOfInt = getDrawableState();
      if ((localdy.gEn != null) && (localdy.gEn.isStateful()))
        localdy.gEn.setState(arrayOfInt);
      if ((localdy.gEo != null) && (localdy.gEo.isStateful()))
        localdy.gEo.setState(arrayOfInt);
      if ((localdy.gEp != null) && (localdy.gEp.isStateful()))
        localdy.gEp.setState(arrayOfInt);
      if ((localdy.gEq != null) && (localdy.gEq.isStateful()))
        localdy.gEq.setState(arrayOfInt);
    }
  }

  public final void dy(boolean paramBoolean)
  {
    this.gDZ = paramBoolean;
  }

  public final void dz(boolean paramBoolean)
  {
    this.gEa = paramBoolean;
  }

  public int getBaseline()
  {
    if (this.gDG == null)
      return super.getBaseline();
    if ((0x70 & this.dL) != 48);
    for (int i = aHN(); ; i = 0)
      return i + getExtendedPaddingTop() + this.gDG.getLineBaseline(0);
  }

  public void getFocusedRect(Rect paramRect)
  {
    if (this.gDG == null)
    {
      super.getFocusedRect(paramRect);
      return;
    }
    int i = Selection.getSelectionEnd(this.mText);
    if (i < 0)
    {
      super.getFocusedRect(paramRect);
      return;
    }
    int j = this.gDG.getLineForOffset(i);
    paramRect.top = this.gDG.getLineTop(j);
    paramRect.bottom = this.gDG.getLineBottom(j);
    paramRect.left = ((int)this.gDG.getPrimaryHorizontal(i));
    paramRect.right = (1 + paramRect.left);
    int k = getCompoundPaddingLeft();
    int m = getExtendedPaddingTop();
    if ((0x70 & this.dL) != 48)
      m += aHN();
    paramRect.offset(k, m);
  }

  public final TextPaint getPaint()
  {
    return this.eBR;
  }

  public final float getTextSize()
  {
    return this.eBR.getTextSize();
  }

  public void invalidateDrawable(Drawable paramDrawable)
  {
    Rect localRect;
    int i;
    int j;
    dy localdy;
    if (verifyDrawable(paramDrawable))
    {
      localRect = paramDrawable.getBounds();
      i = getScrollX();
      j = getScrollY();
      localdy = this.gDY;
      if (localdy != null)
      {
        if (paramDrawable != localdy.gEp)
          break label129;
        int i5 = getCompoundPaddingTop();
        int i6 = getCompoundPaddingBottom();
        int i7 = getBottom() - getTop() - i6 - i5;
        i += getPaddingLeft();
        j += i5 + (i7 - localdy.gEx) / 2;
      }
    }
    while (true)
    {
      invalidate(i + localRect.left, j + localRect.top, i + localRect.right, j + localRect.bottom);
      return;
      label129: if (paramDrawable == localdy.gEq)
      {
        int i2 = getCompoundPaddingTop();
        int i3 = getCompoundPaddingBottom();
        int i4 = getBottom() - getTop() - i3 - i2;
        i += getRight() - getLeft() - getPaddingRight() - localdy.gEu;
        j += i2 + (i4 - localdy.gEy) / 2;
      }
      else if (paramDrawable == localdy.gEn)
      {
        int n = getCompoundPaddingLeft();
        int i1 = getCompoundPaddingRight();
        i += n + (getRight() - getLeft() - i1 - n - localdy.gEv) / 2;
        j += getPaddingTop();
      }
      else if (paramDrawable == localdy.gEo)
      {
        int k = getCompoundPaddingLeft();
        int m = getCompoundPaddingRight();
        i += k + (getRight() - getLeft() - m - k - localdy.gEw) / 2;
        j += getBottom() - getTop() - getPaddingBottom() - localdy.gEs;
      }
    }
  }

  public final void jb()
  {
    int i = 0x7 & this.dL;
    int j = 0;
    if (5 != i)
      j = 1;
    if (53 != this.dL)
      invalidate();
    this.dL = 53;
    if ((this.gDG != null) && (j != 0))
    {
      int k = this.gDG.getWidth();
      bl(k, getWidth() - getCompoundPaddingLeft() - getCompoundPaddingRight());
    }
  }

  public final void nk(int paramInt)
  {
    if (paramInt != this.gEd)
    {
      this.gEd = paramInt;
      Drawable localDrawable = getResources().getDrawable(paramInt);
      if ((localDrawable != null) && ((this.gDY == null) || (this.gDY.gEp != localDrawable)))
      {
        localDrawable.setBounds(0, 0, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
        c(localDrawable, null);
      }
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = getCompoundPaddingLeft();
    int j = getCompoundPaddingTop();
    int k = getCompoundPaddingRight();
    int m = getCompoundPaddingBottom();
    int n = getScrollX();
    int i1 = getScrollY();
    int i2 = getRight();
    int i3 = getLeft();
    int i4 = getBottom();
    int i5 = getTop();
    int i6 = getWidth();
    int i7 = getHeight();
    dy localdy = this.gDY;
    float f1 = -1.0F;
    float f3;
    if (localdy != null)
    {
      int i17 = i4 - i5 - m - j;
      int i18 = i2 - i3 - k - i;
      if ((this.gDZ) && (localdy.gEp != null))
      {
        paramCanvas.save();
        paramCanvas.translate(n + getPaddingLeft(), i1 + j + (i17 - localdy.gEx) / 2);
        localdy.gEp.draw(paramCanvas);
        paramCanvas.restore();
      }
      if ((this.gEa) && (localdy.gEq != null))
      {
        paramCanvas.save();
        if (!this.gDT)
          break label668;
        f3 = this.eBR.measureText(this.mText, 0, this.mText.length());
        f1 = f3;
        paramCanvas.translate(f3 + n - getPaddingRight(), j + i1 + (i17 - localdy.gEy) / 2);
        localdy.gEq.draw(paramCanvas);
        paramCanvas.restore();
      }
      if ((this.gEb) && (localdy.gEn != null))
      {
        paramCanvas.save();
        paramCanvas.translate(n + i + (i18 - localdy.gEv) / 2, i1 + getPaddingTop());
        localdy.gEn.draw(paramCanvas);
        paramCanvas.restore();
      }
      if ((this.gEc) && (localdy.gEo != null))
      {
        paramCanvas.save();
        paramCanvas.translate(n + i + (i18 - localdy.gEw) / 2, i1 + i4 - i5 - getPaddingBottom() - localdy.gEs);
        localdy.gEo.draw(paramCanvas);
        paramCanvas.restore();
      }
    }
    int i8 = this.gDz;
    this.eBR.setColor(i8);
    this.eBR.drawableState = getDrawableState();
    paramCanvas.save();
    int i9 = getExtendedPaddingTop();
    int i10 = getExtendedPaddingBottom();
    paramCanvas.clipRect(i + n, i9 + i1, n + (i2 - i3 - k), i1 + (i4 - i5 - i10));
    int i11 = 0x70 & this.dL;
    int i12 = 0;
    int i13 = 0;
    if (i11 != 48)
    {
      i13 = aHN();
      i12 = aHN();
    }
    paramCanvas.translate(i, i9 + i13);
    int i15;
    if (this.gDT)
    {
      float f2 = (i7 - (this.gDV.bottom - this.gDV.top)) / 2 - this.gDV.top;
      int i14 = 0x7 & this.dL;
      i15 = 0;
      int i16;
      if (i14 != 3)
      {
        i16 = 0x7 & this.dL;
        i15 = 0;
      }
      switch (i16)
      {
      default:
        label636: paramCanvas.drawText(this.mText, 0, this.mText.length(), i15, f2, this.eBR);
      case 5:
      case 1:
      }
    }
    while (true)
    {
      paramCanvas.restore();
      return;
      label668: f3 = FloatMath.ceil(Layout.getDesiredWidth(this.gDD, this.eBR));
      break;
      if (f1 == -1.0F)
        f1 = this.eBR.measureText(this.mText, 0, this.mText.length());
      i15 = (int)(i6 - getPaddingRight() - f1);
      break label636;
      if (f1 == -1.0F)
        f1 = this.eBR.measureText(this.mText, 0, this.mText.length());
      i15 = (int)(i6 - getPaddingRight() - f1) / 2;
      break label636;
      if (this.gDG == null)
        aHP();
      this.gDG.draw(paramCanvas, null, null, i12 - i13);
    }
  }

  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    try
    {
      CharSequence localCharSequence = this.mText;
      if (!TextUtils.isEmpty(localCharSequence))
        paramAccessibilityNodeInfo.setText(localCharSequence);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.gDW) && (getMeasuredWidth() > 0))
    {
      setText(TextUtils.ellipsize(this.mText, this.eBR, getMeasuredWidth() - getCompoundPaddingRight() - getCompoundPaddingLeft(), TextUtils.TruncateAt.END));
      this.gDW = false;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getMode(paramInt2);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getSize(paramInt2);
    if (j == 0)
    {
      setMeasuredDimension(j, this.gDU);
      return;
    }
    if (this.gDT)
    {
      if (this.gDU == 0)
        aHQ();
      setMeasuredDimension(j, this.gDU);
      return;
    }
    int m = getCompoundPaddingLeft() + getCompoundPaddingRight();
    int n;
    label118: int i5;
    if (this.gDN)
    {
      n = this.oP - m;
      if (this.gDG != null)
        break label160;
      bl(n, n);
      if (i != 1073741824)
        break label197;
      this.gDQ = -1;
      i5 = k;
    }
    label160: label195: label197: Layout localLayout;
    while (true)
    {
      scrollTo(0, 0);
      setMeasuredDimension(j, i5);
      return;
      n = j - m;
      break;
      if (this.gDG.getWidth() != n);
      for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label195;
        bl(n, n);
        break;
      }
      break label118;
      localLayout = this.gDG;
      if (localLayout != null)
        break label237;
      i5 = 0;
      this.gDQ = i5;
      if (i == -2147483648)
        i5 = Math.min(i5, k);
    }
    label237: int i2 = localLayout.getLineCount();
    int i3 = getCompoundPaddingTop() + getCompoundPaddingBottom();
    int i4 = i3 + localLayout.getLineTop(i2);
    if (this.gDK == 1)
    {
      if (i2 > this.gDJ)
      {
        i4 = i3 + (localLayout.getLineTop(this.gDJ) + localLayout.getBottomPadding());
        i2 = this.gDJ;
      }
      label310: if (this.gDM != 1)
        break label390;
      if (i2 < this.gDL)
        i4 += Math.round(this.eBR.getFontMetricsInt(null) * this.gDH + this.gDI) * (this.gDL - i2);
    }
    while (true)
    {
      i5 = Math.max(i4, getSuggestedMinimumHeight());
      break;
      i4 = Math.min(i4, this.gDJ);
      break label310;
      label390: i4 = Math.max(i4, this.gDL);
    }
  }

  public final void setMaxWidth(int paramInt)
  {
    this.oP = paramInt;
    this.gDN = true;
    requestLayout();
    invalidate();
  }

  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != getPaddingLeft()) || (paramInt3 != getPaddingRight()) || (paramInt2 != getPaddingTop()) || (paramInt4 != getPaddingBottom()))
      aHO();
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
    invalidate();
  }

  public final void setText(CharSequence paramCharSequence)
  {
    dx localdx = this.gDE;
    if (paramCharSequence == null)
      paramCharSequence = "";
    label58: int i;
    if (!paramCharSequence.equals(this.mText))
    {
      if (!(paramCharSequence instanceof Spanned))
        break label156;
      this.gDT = false;
      if ((localdx != dx.gEk) && (this.gDF == null))
        break label164;
      paramCharSequence = this.gDA.newEditable(paramCharSequence);
      i = getCompoundPaddingRight() + getCompoundPaddingLeft();
      if (this.gDX)
      {
        if (!this.gDN)
          break label183;
        int n = this.oP;
        if (getMeasuredWidth() > 0)
          n = Math.min(this.oP, getMeasuredWidth());
        paramCharSequence = TextUtils.ellipsize(paramCharSequence, this.eBR, n - i, TextUtils.TruncateAt.END);
      }
    }
    while (true)
    {
      this.gDE = localdx;
      this.mText = paramCharSequence;
      this.gDD = paramCharSequence;
      if (!this.gDT)
        break label220;
      aHQ();
      invalidate();
      return;
      label156: this.gDT = true;
      break;
      label164: if (localdx != dx.gEj)
        break label58;
      paramCharSequence = this.gDB.newSpannable(paramCharSequence);
      break label58;
      label183: if (getMeasuredWidth() > 0)
        paramCharSequence = TextUtils.ellipsize(paramCharSequence, this.eBR, getMeasuredWidth() - i, TextUtils.TruncateAt.END);
      else
        this.gDW = true;
    }
    label220: if (getWidth() != 0)
    {
      if (this.gDG == null)
      {
        aHP();
        if (this.gDG.getHeight() != getHeight())
          requestLayout();
        invalidate();
        return;
      }
      int j = this.gDG.getHeight();
      int k = this.gDG.getWidth();
      bl(k, k - i);
      if (this.gDC != TextUtils.TruncateAt.MARQUEE)
      {
        if ((getLayoutParams().height != -2) && (getLayoutParams().height != -1))
        {
          invalidate();
          return;
        }
        int m = this.gDG.getHeight();
        if ((m == j) && (m == getHeight()))
        {
          invalidate();
          return;
        }
      }
    }
    requestLayout();
    invalidate();
  }

  public final void setTextColor(ColorStateList paramColorStateList)
  {
    if (paramColorStateList == null)
      throw new NullPointerException();
    if (this.gDy == paramColorStateList)
      return;
    this.gDy = paramColorStateList;
    updateTextColors();
  }

  public final void setTypeface(Typeface paramTypeface)
  {
    if (this.eBR.getTypeface() != paramTypeface)
    {
      this.eBR.setTypeface(paramTypeface);
      if (this.gDG != null)
      {
        aHO();
        requestLayout();
        invalidate();
      }
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    boolean bool = super.verifyDrawable(paramDrawable);
    if ((!bool) && (this.gDY != null))
    {
      if ((paramDrawable == this.gDY.gEp) || (paramDrawable == this.gDY.gEn) || (paramDrawable == this.gDY.gEq) || (paramDrawable == this.gDY.gEo))
        bool = true;
    }
    else
      return bool;
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.NoMeasuredTextView
 * JD-Core Version:    0.6.2
 */