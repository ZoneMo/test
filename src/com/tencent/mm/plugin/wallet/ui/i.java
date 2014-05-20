package com.tencent.mm.plugin.wallet.ui;

import android.app.DatePickerDialog.OnDateSetListener;
import android.content.Context;
import android.widget.DatePicker;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tenpay.android.wechat.TenpaySecureEditText;
import java.text.DecimalFormat;

final class i
  implements DatePickerDialog.OnDateSetListener
{
  i(h paramh)
  {
  }

  public final void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < EditHintView.g(this.fdX.fdW)) && (paramInt2 < EditHintView.h(this.fdX.fdW)))
      com.tencent.mm.ui.base.h.p(this.fdX.fdW.getContext(), this.fdX.fdW.getContext().getString(n.bGj), null);
    while (true)
    {
      EditHintView.a(this.fdX.fdW, this.fdX.fdW.UR());
      if (EditHintView.b(this.fdX.fdW) != null)
      {
        aa.d("MicroMsg.EditHintView", "View:" + EditHintView.c(this.fdX.fdW) + ", editType:" + EditHintView.d(this.fdX.fdW) + " inputValid change to " + EditHintView.a(this.fdX.fdW));
        EditHintView.b(this.fdX.fdW).aN(EditHintView.a(this.fdX.fdW));
      }
      return;
      DecimalFormat localDecimalFormat = new DecimalFormat("00");
      EditHintView.a(this.fdX.fdW, localDecimalFormat.format(paramInt1).substring(2) + localDecimalFormat.format(paramInt2 + 1));
      EditHintView.i(this.fdX.fdW).setText(localDecimalFormat.format(paramInt2 + 1) + localDecimalFormat.format(paramInt1).substring(2));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.i
 * JD-Core Version:    0.6.2
 */