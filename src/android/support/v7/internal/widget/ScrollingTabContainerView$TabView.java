package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.app.c;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.d;

public class ScrollingTabContainerView$TabView extends LinearLayout
{
  private View hR;
  private ImageView jZ;
  private c pw;
  private TextView px;
  private ScrollingTabContainerView py;

  public ScrollingTabContainerView$TabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  final void a(ScrollingTabContainerView paramScrollingTabContainerView, c paramc, boolean paramBoolean)
  {
    this.py = paramScrollingTabContainerView;
    this.pw = paramc;
    if (paramBoolean)
      setGravity(19);
    update();
  }

  public final void c(c paramc)
  {
    this.pw = paramc;
    update();
  }

  public final c dq()
  {
    return this.pw;
  }

  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.py != null);
    for (int i = this.py.pr; ; i = 0)
    {
      if ((i > 0) && (getMeasuredWidth() > i))
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), paramInt2);
      return;
    }
  }

  public final void update()
  {
    c localc = this.pw;
    View localView = localc.getCustomView();
    if (localView != null)
    {
      ViewParent localViewParent = localView.getParent();
      if (localViewParent != this)
      {
        if (localViewParent != null)
          ((ViewGroup)localViewParent).removeView(localView);
        addView(localView);
      }
      this.hR = localView;
      if (this.px != null)
        this.px.setVisibility(8);
      if (this.jZ != null)
      {
        this.jZ.setVisibility(8);
        this.jZ.setImageDrawable(null);
      }
    }
    label341: label366: 
    while (true)
    {
      return;
      if (this.hR != null)
      {
        removeView(this.hR);
        this.hR = null;
      }
      Drawable localDrawable = localc.getIcon();
      CharSequence localCharSequence = localc.getText();
      if (localDrawable != null)
      {
        if (this.jZ == null)
        {
          ImageView localImageView = new ImageView(getContext());
          LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
          localLayoutParams2.gravity = 16;
          localImageView.setLayoutParams(localLayoutParams2);
          addView(localImageView, 0);
          this.jZ = localImageView;
        }
        this.jZ.setImageDrawable(localDrawable);
        this.jZ.setVisibility(0);
        if (localCharSequence == null)
          break label341;
        if (this.px == null)
        {
          CompatTextView localCompatTextView = new CompatTextView(getContext(), null, d.actionBarTabTextStyle);
          localCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
          LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
          localLayoutParams1.gravity = 16;
          localCompatTextView.setLayoutParams(localLayoutParams1);
          addView(localCompatTextView);
          this.px = localCompatTextView;
        }
        this.px.setText(localCharSequence);
        this.px.setVisibility(0);
      }
      while (true)
      {
        if (this.jZ == null)
          break label366;
        this.jZ.setContentDescription(localc.getContentDescription());
        return;
        if (this.jZ == null)
          break;
        this.jZ.setVisibility(8);
        this.jZ.setImageDrawable(null);
        break;
        if (this.px != null)
        {
          this.px.setVisibility(8);
          this.px.setText(null);
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ScrollingTabContainerView.TabView
 * JD-Core Version:    0.6.2
 */