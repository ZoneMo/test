package com.tencent.mm.plugin.wallet.bind.ui;

import android.annotation.SuppressLint;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.NumberPicker;

public final class f extends DatePickerDialog
{
  private boolean eYb = true;
  private long eYc;

  public f(Context paramContext, DatePickerDialog.OnDateSetListener paramOnDateSetListener, int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    super(paramContext, paramOnDateSetListener, paramInt1, paramInt2, paramInt3);
    this.eYc = paramLong;
  }

  @SuppressLint({"DefaultLocale"})
  public final void show()
  {
    super.show();
    if (this.eYb)
    {
      if (Build.VERSION.SDK_INT < 11)
        break label60;
      NumberPicker localNumberPicker = new g(this).c((ViewGroup)getWindow().getDecorView());
      if (localNumberPicker != null)
        localNumberPicker.setVisibility(8);
    }
    label60: label192: 
    while (true)
    {
      this.eYb = false;
      return;
      String str = Settings.System.getString(getContext().getContentResolver(), "date_format");
      if (str != null)
        str = str.toLowerCase();
      int i;
      if (("dd/mm/yyyy".equals(str)) || ("dd-mm-yyyy".equals(str)))
        i = 0;
      while (true)
      {
        if (i == -1)
          break label192;
        View localView = new h(this).c((ViewGroup)getWindow().getDecorView(), i);
        if (localView == null)
          break;
        localView.setVisibility(8);
        break;
        if (("mm/dd/yyyy".equals(str)) || ("mm-dd-yyyy".equals(str)))
          i = 1;
        else if (("yyyy/mm/dd".equals(str)) || ("yyyy-mm-dd".equals(str)))
          i = 2;
        else
          i = -1;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.f
 * JD-Core Version:    0.6.2
 */