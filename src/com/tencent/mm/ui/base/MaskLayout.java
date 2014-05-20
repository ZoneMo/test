package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.tencent.mm.i;
import com.tencent.mm.p;
import com.tencent.mm.sdk.platformtools.aa;

public class MaskLayout extends RelativeLayout
{
  private ImageView cTD;
  private Drawable gCN;
  private View view;

  public MaskLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public MaskLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MaskLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJq, paramInt, 0);
    this.gCN = localTypedArray.getDrawable(0);
    localTypedArray.recycle();
  }

  private void a(dv paramdv)
  {
    removeView(this.cTD);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    switch (du.gCO[paramdv.ordinal()])
    {
    default:
      localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    case 3:
    case 1:
    case 2:
    case 4:
    }
    while (true)
    {
      addView(this.cTD, localLayoutParams);
      return;
      localLayoutParams.addRule(12);
      localLayoutParams.addRule(11);
      continue;
      localLayoutParams.addRule(12);
      localLayoutParams.addRule(9);
      continue;
      localLayoutParams.addRule(11);
    }
  }

  public final void a(Bitmap paramBitmap, dv paramdv)
  {
    a(paramdv);
    this.cTD.setImageBitmap(paramBitmap);
  }

  public final void aHz()
  {
    a(dv.gCT);
    this.cTD.setImageDrawable(null);
  }

  public final View getContentView()
  {
    return this.view;
  }

  public void onFinishInflate()
  {
    super.onFinishInflate();
    this.view = findViewById(i.content);
    if (this.view == null)
    {
      aa.e("MicroMsg.MaskLayout", "%s", new Object[] { "not found view by id, new one" });
      this.view = new View(getContext());
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      localLayoutParams.addRule(13);
      this.view.setLayoutParams(localLayoutParams);
      addView(this.view);
    }
    this.cTD = new ImageView(getContext());
    this.cTD.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    this.cTD.setImageDrawable(this.gCN);
    addView(this.cTD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MaskLayout
 * JD-Core Version:    0.6.2
 */