package com.tencent.mm.ui.setting;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.ui.base.preference.Preference;

final class ad extends Preference
{
  private float hek;

  public ad(SetTextSizeUI paramSetTextSizeUI, Context paramContext, float paramFloat)
  {
    super(paramContext);
    this.hek = paramFloat;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    TextView localTextView = (TextView)paramView.findViewById(16908310);
    float f;
    if (localTextView != null)
    {
      if (this.hek != 0.875F)
        break label39;
      f = 14.0F;
    }
    while (true)
    {
      localTextView.setTextSize(1, f);
      return;
      label39: if (this.hek != 1.0F)
      {
        if (this.hek == 1.125F)
          f = 18.0F;
        else if (this.hek == 1.25F)
          f = 20.0F;
        else if (this.hek == 1.375F)
          f = 22.0F;
      }
      else
        f = 16.0F;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ad
 * JD-Core Version:    0.6.2
 */