package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v7.internal.view.menu.ActionMenuPresenter;
import android.support.v7.internal.view.menu.ActionMenuView;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import com.tencent.mm.d;
import com.tencent.mm.e;
import com.tencent.mm.p;

abstract class a extends ViewGroup
{
  protected ActionBarContainer hy;
  protected boolean lA;
  protected boolean lB;
  protected int lC;
  protected ActionMenuView ly;
  protected ActionMenuPresenter lz;

  a(Context paramContext)
  {
    super(paramContext);
  }

  a(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected static int a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    int k = paramInt2 + (paramInt3 - j) / 2;
    paramView.layout(paramInt1, k, paramInt1 + i, j + k);
    return i;
  }

  protected static int b(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    int k = paramInt2 + (paramInt3 - j) / 2;
    paramView.layout(paramInt1 - i, k, paramInt1, j + k);
    return i;
  }

  protected static int c(View paramView, int paramInt1, int paramInt2)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, -2147483648), paramInt2);
    return Math.max(0, 0 + (paramInt1 - paramView.getMeasuredWidth()));
  }

  public void E(int paramInt)
  {
    this.lC = paramInt;
    requestLayout();
  }

  public void a(ActionBarContainer paramActionBarContainer)
  {
    this.hy = paramActionBarContainer;
  }

  public boolean bH()
  {
    if (this.lz != null)
      return this.lz.bH();
    return false;
  }

  public boolean bI()
  {
    if (this.lz != null)
      return this.lz.bI();
    return false;
  }

  public boolean bL()
  {
    if (this.lz != null)
      return this.lz.bL();
    return false;
  }

  public boolean bM()
  {
    return (this.lz != null) && (this.lz.bM());
  }

  public int cD()
  {
    return getVisibility();
  }

  public void cE()
  {
    post(new b(this));
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    TypedArray localTypedArray = getContext().obtainStyledAttributes(null, p.bIU, d.actionBarStyle, 0);
    E(localTypedArray.getLayoutDimension(1, 0));
    localTypedArray.recycle();
    if (this.lB)
      s(getContext().getResources().getBoolean(e.ZI));
    if (this.lz != null)
      this.lz.bc();
  }

  public void s(boolean paramBoolean)
  {
    this.lA = paramBoolean;
  }

  public void setVisibility(int paramInt)
  {
    if (paramInt != getVisibility())
      super.setVisibility(paramInt);
  }

  public void t(boolean paramBoolean)
  {
    this.lB = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.a
 * JD-Core Version:    0.6.2
 */