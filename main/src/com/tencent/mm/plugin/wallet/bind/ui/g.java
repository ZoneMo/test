package com.tencent.mm.plugin.wallet.bind.ui;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import android.widget.NumberPicker;

final class g
{
  g(f paramf)
  {
  }

  @TargetApi(11)
  public final NumberPicker c(ViewGroup paramViewGroup)
  {
    if (paramViewGroup != null)
    {
      int i = paramViewGroup.getChildCount();
      for (int j = 0; j < i; j++)
      {
        View localView = paramViewGroup.getChildAt(j);
        NumberPicker localNumberPicker;
        if ((localView instanceof NumberPicker))
        {
          localNumberPicker = (NumberPicker)localView;
          if ((localNumberPicker.getMaxValue() < 28) || (localNumberPicker.getMaxValue() > 31));
        }
        do
        {
          return localNumberPicker;
          if (!(localView instanceof ViewGroup))
            break;
          localNumberPicker = c((ViewGroup)localView);
        }
        while (localNumberPicker != null);
      }
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.g
 * JD-Core Version:    0.6.2
 */