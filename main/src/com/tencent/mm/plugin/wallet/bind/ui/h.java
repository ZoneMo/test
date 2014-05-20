package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.view.ViewGroup;
import com.tencent.mm.sdk.platformtools.aa;

final class h
{
  h(f paramf)
  {
  }

  public final View c(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup != null)
    {
      int i = paramViewGroup.getChildCount();
      for (int j = 0; j < i; j++)
      {
        View localView = paramViewGroup.getChildAt(j);
        Class localClass = localView.getClass();
        String str = localClass.getName();
        aa.d("MicroMsg.MMDatePickerDialog", "NAME = " + str);
        aa.d("MicroMsg.MMDatePickerDialog", "SimpleName = " + localClass.getSimpleName());
        if (("NumberPicker".equals(localClass.getSimpleName())) && (j == paramInt));
        do
        {
          return localView;
          if (!(localView instanceof ViewGroup))
            break;
          localView = c((ViewGroup)localView, paramInt);
        }
        while (localView != null);
      }
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.h
 * JD-Core Version:    0.6.2
 */