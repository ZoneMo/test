package com.tencent.mm.ui.account;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.tencent.mm.n;

final class ka
  implements AdapterView.OnItemClickListener
{
  ka(RegSetInfoUI paramRegSetInfoUI, String[] paramArrayOfString)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (RegSetInfoUI.u(this.gtZ) != null)
    {
      RegSetInfoUI.u(this.gtZ).dismiss();
      RegSetInfoUI.v(this.gtZ);
    }
    RegSetInfoUI.a(this.gtZ).setText(this.guh[paramInt]);
    RegSetInfoUI.a(this.gtZ).postDelayed(new kb(this), 50L);
    RegSetInfoUI.s(this.gtZ).setText(this.gtZ.getString(n.bwd));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ka
 * JD-Core Version:    0.6.2
 */