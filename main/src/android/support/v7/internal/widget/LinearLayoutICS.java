package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.p;

public class LinearLayoutICS extends LinearLayout
{
  private final Drawable of;
  private final int og;
  private final int oh;
  private final int oi;
  private final int oj;

  public LinearLayoutICS(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJl);
    this.of = localTypedArray.getDrawable(0);
    if (this.of != null)
    {
      this.og = this.of.getIntrinsicWidth();
      this.oh = this.of.getIntrinsicHeight();
      this.oi = localTypedArray.getInt(i, 0);
      this.oj = localTypedArray.getDimensionPixelSize(2, 0);
      localTypedArray.recycle();
      if (this.of != null)
        break label110;
    }
    while (true)
    {
      setWillNotDraw(i);
      return;
      this.og = 0;
      this.oh = 0;
      break;
      label110: int j = 0;
    }
  }

  private void a(Canvas paramCanvas, int paramInt)
  {
    this.of.setBounds(getPaddingLeft() + this.oj, paramInt, getWidth() - getPaddingRight() - this.oj, paramInt + this.oh);
    this.of.draw(paramCanvas);
  }

  private void b(Canvas paramCanvas, int paramInt)
  {
    this.of.setBounds(paramInt, getPaddingTop() + this.oj, paramInt + this.og, getHeight() - getPaddingBottom() - this.oj);
    this.of.draw(paramCanvas);
  }

  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    int j;
    LinearLayout.LayoutParams localLayoutParams;
    if (this.of != null)
    {
      i = indexOfChild(paramView);
      j = getChildCount();
      localLayoutParams = (LinearLayout.LayoutParams)paramView.getLayoutParams();
      if (getOrientation() != 1)
        break label97;
      if (!z(i))
        break label67;
      localLayoutParams.topMargin = this.oh;
    }
    while (true)
    {
      super.measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
      label67: if ((i == j - 1) && (z(j)))
      {
        localLayoutParams.bottomMargin = this.oh;
        continue;
        label97: if (z(i))
          localLayoutParams.leftMargin = this.og;
        else if ((i == j - 1) && (z(j)))
          localLayoutParams.rightMargin = this.og;
      }
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    View localView3;
    int i1;
    if (getOrientation() == 1)
    {
      int m = getChildCount();
      for (int n = 0; n < m; n++)
      {
        View localView4 = getChildAt(n);
        if ((localView4 != null) && (localView4.getVisibility() != 8) && (z(n)))
        {
          LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)localView4.getLayoutParams();
          a(paramCanvas, localView4.getTop() - localLayoutParams2.topMargin);
        }
      }
      if (z(m))
      {
        localView3 = getChildAt(m - 1);
        if (localView3 != null)
          break label136;
        i1 = getHeight() - getPaddingBottom() - this.oh;
        a(paramCanvas, i1);
      }
    }
    label136: int i;
    do
    {
      return;
      i1 = localView3.getBottom();
      break;
      i = getChildCount();
      for (int j = 0; j < i; j++)
      {
        View localView2 = getChildAt(j);
        if ((localView2 != null) && (localView2.getVisibility() != 8) && (z(j)))
        {
          LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView2.getLayoutParams();
          b(paramCanvas, localView2.getLeft() - localLayoutParams1.leftMargin);
        }
      }
    }
    while (!z(i));
    View localView1 = getChildAt(i - 1);
    if (localView1 == null);
    for (int k = getWidth() - getPaddingRight() - this.og; ; k = localView1.getRight())
    {
      b(paramCanvas, k);
      return;
    }
  }

  protected boolean z(int paramInt)
  {
    if (paramInt == 0)
      if ((0x1 & this.oi) == 0);
    do
    {
      return true;
      return false;
      if (paramInt != getChildCount())
        break;
    }
    while ((0x4 & this.oi) != 0);
    return false;
    if ((0x2 & this.oi) != 0)
      for (int i = paramInt - 1; ; i--)
      {
        if (i < 0)
          break label74;
        if (getChildAt(i).getVisibility() != 8)
          break;
      }
    return false;
    label74: return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.LinearLayoutICS
 * JD-Core Version:    0.6.2
 */