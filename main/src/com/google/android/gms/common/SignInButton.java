package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import com.google.android.gms.internal.m;

public final class SignInButton extends FrameLayout
  implements View.OnClickListener
{
  private int Kp;
  private View Kq;
  private View.OnClickListener Kr = null;
  private int cT;

  public SignInButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SignInButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    i.a(true, "Unknown button size 0");
    i.a(true, "Unknown color scheme 0");
    this.cT = 0;
    this.Kp = 0;
    Context localContext = getContext();
    if (this.Kq != null)
      removeView(this.Kq);
    try
    {
      this.Kq = k.a(localContext, this.cT, this.Kp);
      addView(this.Kq);
      this.Kq.setEnabled(isEnabled());
      this.Kq.setOnClickListener(this);
      return;
    }
    catch (m localm)
    {
      while (true)
      {
        int i = this.cT;
        int j = this.Kp;
        af localaf = new af(localContext);
        localaf.a(localContext.getResources(), i, j);
        this.Kq = localaf;
      }
    }
  }

  public final void onClick(View paramView)
  {
    if ((this.Kr != null) && (paramView == this.Kq))
      this.Kr.onClick(this);
  }

  public final void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.Kq.setEnabled(paramBoolean);
  }

  public final void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.Kr = paramOnClickListener;
    if (this.Kq != null)
      this.Kq.setOnClickListener(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.SignInButton
 * JD-Core Version:    0.6.2
 */