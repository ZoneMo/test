package com.tencent.mm.ui.contact;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.h;
import java.util.List;

final class et
  implements AdapterView.OnItemClickListener
{
  et(SnsAddressUI paramSnsAddressUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < SnsAddressUI.a(this.gVF).getHeaderViewsCount())
      return;
    int i = paramInt - SnsAddressUI.a(this.gVF).getHeaderViewsCount();
    SnsAddressUI.b(this.gVF).gW(i);
    int j = SnsAddressUI.b(this.gVF).aKV().size();
    if ((j + SnsAddressUI.c(this.gVF) > SnsAddressUI.eut) && (SnsAddressUI.b(this.gVF).nJ(i)))
    {
      SnsAddressUI.b(this.gVF).gW(i);
      h.c(this.gVF, 2131168625, 2131167675);
      return;
    }
    if (SnsAddressUI.b(this.gVF).aKU())
      this.gVF.dV(true);
    while (true)
    {
      i locali = (i)SnsAddressUI.b(this.gVF).getItem(i);
      SnsAddressUI.b(this.gVF, locali.getUsername());
      SnsAddressUI localSnsAddressUI = this.gVF;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = this.gVF.getString(2131167684);
      arrayOfObject[1] = Integer.valueOf(j + SnsAddressUI.c(this.gVF));
      arrayOfObject[2] = Integer.valueOf(SnsAddressUI.eut);
      localSnsAddressUI.wV(String.format("%s(%d/%d)", arrayOfObject));
      return;
      this.gVF.dV(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.et
 * JD-Core Version:    0.6.2
 */