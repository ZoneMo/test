package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.view.menu.ActionMenuPresenter;
import android.support.v7.internal.view.menu.ActionMenuView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.LinearLayout;
import com.tencent.mm.d;
import com.tencent.mm.p;

public class ActionBarContextView extends a
{
  private View hR;
  private Drawable lU;
  private View lX;
  private LinearLayout lY;
  private int lZ;
  private int ma;
  private boolean mb;

  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.actionModeStyle);
  }

  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bIZ, paramInt, 0);
    setBackgroundDrawable(localTypedArray.getDrawable(3));
    this.lZ = localTypedArray.getResourceId(1, 0);
    this.ma = localTypedArray.getResourceId(2, 0);
    this.lC = localTypedArray.getLayoutDimension(0, 0);
    this.lU = localTypedArray.getDrawable(4);
    localTypedArray.recycle();
  }

  public final void E(int paramInt)
  {
    this.lC = paramInt;
  }

  public final boolean bH()
  {
    if (this.lz != null)
      return this.lz.bH();
    return false;
  }

  public final boolean bI()
  {
    if (this.lz != null)
      return this.lz.bI();
    return false;
  }

  public final boolean bL()
  {
    if (this.lz != null)
      return this.lz.bL();
    return false;
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.lz != null)
    {
      this.lz.bI();
      this.lz.bK();
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    ViewGroup.MarginLayoutParams localMarginLayoutParams;
    int i1;
    if ((this.lX != null) && (this.lX.getVisibility() != 8))
    {
      localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.lX.getLayoutParams();
      i1 = i + localMarginLayoutParams.leftMargin;
    }
    for (int m = i1 + a(this.lX, i1, j, k) + localMarginLayoutParams.rightMargin; ; m = i)
    {
      if ((this.lY != null) && (this.hR == null) && (this.lY.getVisibility() != 8))
        m += a(this.lY, m, j, k);
      if (this.hR != null)
        a(this.hR, m, j, k);
      int n = paramInt3 - paramInt1 - getPaddingRight();
      if (this.ly != null)
        b(this.ly, n, j, k);
      return;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 1073741824;
    int j = 0;
    if (View.MeasureSpec.getMode(paramInt1) != i)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"FILL_PARENT\" (or fill_parent)");
    if (View.MeasureSpec.getMode(paramInt2) == 0)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
    int k = View.MeasureSpec.getSize(paramInt1);
    int m;
    int i1;
    int i2;
    int i3;
    int i11;
    label284: int i12;
    label310: label317: int i7;
    label346: label376: int i8;
    label396: int i5;
    label432: int i6;
    if (this.lC > 0)
    {
      m = this.lC;
      int n = getPaddingTop() + getPaddingBottom();
      i1 = k - getPaddingLeft() - getPaddingRight();
      i2 = m - n;
      i3 = View.MeasureSpec.makeMeasureSpec(i2, -2147483648);
      if (this.lX != null)
      {
        int i13 = c(this.lX, i1, i3);
        ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.lX.getLayoutParams();
        i1 = i13 - (localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin);
      }
      if ((this.ly != null) && (this.ly.getParent() == this))
        i1 = c(this.ly, i1, i3);
      if ((this.lY != null) && (this.hR == null))
      {
        if (!this.mb)
          break label492;
        int i9 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.lY.measure(i9, i3);
        int i10 = this.lY.getMeasuredWidth();
        if (i10 > i1)
          break label479;
        i11 = 1;
        if (i11 != 0)
          i1 -= i10;
        LinearLayout localLinearLayout = this.lY;
        if (i11 == 0)
          break label485;
        i12 = 0;
        localLinearLayout.setVisibility(i12);
      }
      if (this.hR != null)
      {
        ViewGroup.LayoutParams localLayoutParams = this.hR.getLayoutParams();
        if (localLayoutParams.width == -2)
          break label508;
        i7 = i;
        if (localLayoutParams.width >= 0)
          i1 = Math.min(localLayoutParams.width, i1);
        if (localLayoutParams.height == -2)
          break label515;
        if (localLayoutParams.height < 0)
          break label521;
        i8 = Math.min(localLayoutParams.height, i2);
        this.hR.measure(View.MeasureSpec.makeMeasureSpec(i1, i7), View.MeasureSpec.makeMeasureSpec(i8, i));
      }
      if (this.lC > 0)
        break label537;
      int i4 = getChildCount();
      i5 = 0;
      if (j >= i4)
        break label528;
      i6 = n + getChildAt(j).getMeasuredHeight();
      if (i6 <= i5)
        break label546;
    }
    while (true)
    {
      j++;
      i5 = i6;
      break label432;
      m = View.MeasureSpec.getSize(paramInt2);
      break;
      label479: i11 = 0;
      break label284;
      label485: i12 = 8;
      break label310;
      label492: i1 = c(this.lY, i1, i3);
      break label317;
      label508: i7 = -2147483648;
      break label346;
      label515: i = -2147483648;
      break label376;
      label521: i8 = i2;
      break label396;
      label528: setMeasuredDimension(k, i5);
      return;
      label537: setMeasuredDimension(k, m);
      return;
      label546: i6 = i5;
    }
  }

  public final void s(boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams;
    if (this.lA != paramBoolean)
      if (this.lz != null)
      {
        localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
        if (paramBoolean)
          break label94;
        this.ly = ((ActionMenuView)this.lz.b(this));
        this.ly.setBackgroundDrawable(null);
        ViewGroup localViewGroup2 = (ViewGroup)this.ly.getParent();
        if (localViewGroup2 != null)
          localViewGroup2.removeView(this.ly);
        addView(this.ly, localLayoutParams);
      }
    while (true)
    {
      super.s(paramBoolean);
      return;
      label94: this.lz.y(getContext().getResources().getDisplayMetrics().widthPixels);
      this.lz.bG();
      localLayoutParams.width = -1;
      localLayoutParams.height = this.lC;
      this.ly = ((ActionMenuView)this.lz.b(this));
      this.ly.setBackgroundDrawable(this.lU);
      ViewGroup localViewGroup1 = (ViewGroup)this.ly.getParent();
      if (localViewGroup1 != null)
        localViewGroup1.removeView(this.ly);
      this.hy.addView(this.ly, localLayoutParams);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarContextView
 * JD-Core Version:    0.6.2
 */