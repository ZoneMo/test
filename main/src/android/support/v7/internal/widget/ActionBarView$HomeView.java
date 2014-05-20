package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.tencent.mm.i;
import java.util.List;

class ActionBarView$HomeView extends FrameLayout
{
  private ImageView jZ;
  private ImageView mM;
  private int mN;
  private int mO;
  private Drawable mP;

  public ActionBarView$HomeView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarView$HomeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final int cQ()
  {
    if (this.mM.getVisibility() == 8)
      return this.mN;
    return 0;
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    CharSequence localCharSequence = getContentDescription();
    if (!TextUtils.isEmpty(localCharSequence))
      paramAccessibilityEvent.getText().add(localCharSequence);
    return true;
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    int i;
    ImageView localImageView;
    if (this.mO != 0)
    {
      i = this.mO;
      this.mO = i;
      localImageView = this.mM;
      if (i == 0)
        break label48;
    }
    label48: for (Drawable localDrawable = getResources().getDrawable(i); ; localDrawable = null)
    {
      localImageView.setImageDrawable(localDrawable);
      return;
    }
  }

  protected void onFinishInflate()
  {
    this.mM = ((ImageView)findViewById(i.aNV));
    this.jZ = ((ImageView)findViewById(i.home));
    this.mP = this.mM.getDrawable();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = (paramInt4 - paramInt2) / 2;
    int j = this.mM.getVisibility();
    int k = 0;
    if (j != 8)
    {
      FrameLayout.LayoutParams localLayoutParams2 = (FrameLayout.LayoutParams)this.mM.getLayoutParams();
      int i4 = this.mM.getMeasuredHeight();
      int i5 = this.mM.getMeasuredWidth();
      int i6 = i - i4 / 2;
      this.mM.layout(0, i6, i5, i4 + i6);
      int i7 = i5 + localLayoutParams2.leftMargin + localLayoutParams2.rightMargin;
      paramInt1 += i7;
      k = i7;
    }
    FrameLayout.LayoutParams localLayoutParams1 = (FrameLayout.LayoutParams)this.jZ.getLayoutParams();
    int m = this.jZ.getMeasuredHeight();
    int n = this.jZ.getMeasuredWidth();
    int i1 = (paramInt3 - paramInt1) / 2;
    int i2 = k + Math.max(localLayoutParams1.leftMargin, i1 - n / 2);
    int i3 = Math.max(localLayoutParams1.topMargin, i - m / 2);
    this.jZ.layout(i2, i3, n + i2, m + i3);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    measureChildWithMargins(this.mM, paramInt1, 0, paramInt2, 0);
    FrameLayout.LayoutParams localLayoutParams1 = (FrameLayout.LayoutParams)this.mM.getLayoutParams();
    this.mN = (localLayoutParams1.leftMargin + this.mM.getMeasuredWidth() + localLayoutParams1.rightMargin);
    int i;
    int k;
    int m;
    int i2;
    if (this.mM.getVisibility() == 8)
    {
      i = 0;
      int j = localLayoutParams1.topMargin + this.mM.getMeasuredHeight() + localLayoutParams1.bottomMargin;
      measureChildWithMargins(this.jZ, paramInt1, i, paramInt2, 0);
      FrameLayout.LayoutParams localLayoutParams2 = (FrameLayout.LayoutParams)this.jZ.getLayoutParams();
      k = i + (localLayoutParams2.leftMargin + this.jZ.getMeasuredWidth() + localLayoutParams2.rightMargin);
      m = Math.max(j, localLayoutParams2.topMargin + this.jZ.getMeasuredHeight() + localLayoutParams2.bottomMargin);
      int n = View.MeasureSpec.getMode(paramInt1);
      int i1 = View.MeasureSpec.getMode(paramInt2);
      i2 = View.MeasureSpec.getSize(paramInt1);
      i3 = View.MeasureSpec.getSize(paramInt2);
      switch (n)
      {
      default:
        i2 = k;
      case 1073741824:
        label208: switch (i1)
        {
        default:
        case 1073741824:
        case -2147483648:
        }
        break;
      case -2147483648:
      }
    }
    for (int i3 = m; ; i3 = Math.min(m, i3))
    {
      setMeasuredDimension(i2, i3);
      return;
      i = this.mN;
      break;
      i2 = Math.min(k, i2);
      break label208;
    }
  }

  public final void setIcon(Drawable paramDrawable)
  {
    this.jZ.setImageDrawable(paramDrawable);
  }

  public final void v(boolean paramBoolean)
  {
    ImageView localImageView = this.mM;
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localImageView.setVisibility(i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarView.HomeView
 * JD-Core Version:    0.6.2
 */