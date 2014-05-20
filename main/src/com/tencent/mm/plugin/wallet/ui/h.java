package com.tencent.mm.plugin.wallet.ui;

import android.app.DatePickerDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.bind.ui.f;
import java.util.Calendar;

final class h
  implements View.OnClickListener
{
  h(EditHintView paramEditHintView)
  {
  }

  public final void onClick(View paramView)
  {
    if (EditHintView.f(this.fdW) == null)
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTimeInMillis(System.currentTimeMillis());
      localCalendar.add(2, 1);
      EditHintView.a(this.fdW, localCalendar.get(1));
      EditHintView.b(this.fdW, localCalendar.get(2));
      EditHintView.a(this.fdW, new f(this.fdW.getContext(), new i(this), EditHintView.g(this.fdW), EditHintView.h(this.fdW), localCalendar.get(5), localCalendar.getTimeInMillis()));
    }
    EditHintView.f(this.fdW).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.h
 * JD-Core Version:    0.6.2
 */