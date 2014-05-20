package com.tencent.mm.ui.base;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.f;

public class MMImageButton extends FrameLayout
{
  private ImageView cXH;
  private TextView dFD;

  public MMImageButton(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public MMImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MMImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    FrameLayout.LayoutParams localLayoutParams1 = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams1.gravity = 17;
    this.cXH = new ImageView(paramContext);
    this.cXH.setLayoutParams(localLayoutParams1);
    addView(this.cXH);
    FrameLayout.LayoutParams localLayoutParams2 = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams2.gravity = 17;
    this.dFD = new TextView(paramContext);
    this.dFD.setLayoutParams(localLayoutParams2);
    this.dFD.setClickable(false);
    this.dFD.setFocusable(false);
    this.dFD.setFocusableInTouchMode(false);
    this.dFD.setTextColor(a.j(paramContext, f.aaj));
    addView(this.dFD);
  }

  public final void nf(int paramInt)
  {
    setImageDrawable(a.k(getContext(), paramInt));
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.dFD.setEnabled(paramBoolean);
    this.cXH.setEnabled(paramBoolean);
  }

  public final void setImageDrawable(Drawable paramDrawable)
  {
    this.cXH.setImageDrawable(paramDrawable);
    this.cXH.setVisibility(0);
    this.dFD.setVisibility(8);
  }

  public final void setText(int paramInt)
  {
    this.dFD.setText(paramInt);
    this.dFD.setVisibility(0);
    this.cXH.setVisibility(8);
  }

  public final void setText(String paramString)
  {
    this.dFD.setText(paramString);
    this.dFD.setVisibility(0);
    this.cXH.setVisibility(8);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMImageButton
 * JD-Core Version:    0.6.2
 */