package com.tencent.mm.plugin.wallet.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.tencent.mm.sdk.platformtools.aa;

public class MMScrollView extends ScrollView
  implements View.OnFocusChangeListener
{
  private n fdY;

  public MMScrollView(Context paramContext)
  {
    super(paramContext);
  }

  public MMScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MMScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a(ViewGroup paramViewGroup, View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    int i = paramViewGroup.getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = paramViewGroup.getChildAt(j);
      if ((localView instanceof EditHintView))
        localView.setOnFocusChangeListener(paramOnFocusChangeListener);
      while (true)
      {
        j++;
        break;
        if ((localView instanceof ViewGroup))
          a((ViewGroup)localView, paramOnFocusChangeListener);
      }
    }
  }

  public final void a(n paramn)
  {
    if (paramn != null)
      this.fdY = paramn;
  }

  public final void aoI()
  {
    a(this, this);
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    aa.d("MicroMsg.MMScrollView", "onFocusChange:" + paramBoolean);
    if (!paramBoolean)
      return;
    postDelayed(new m(this, paramView), 200L);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    n localn;
    if ((this.fdY != null) && (paramInt2 != paramInt4))
    {
      localn = this.fdY;
      if (paramInt2 >= paramInt4)
        break label47;
    }
    label47: for (boolean bool = true; ; bool = false)
    {
      localn.bW(bool);
      super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.MMScrollView
 * JD-Core Version:    0.6.2
 */