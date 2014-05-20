package com.tencent.mm.ui.contact;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.c.a.ia;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;

final class fi
  implements AdapterView.OnItemClickListener
{
  fi(VoipAddressUI paramVoipAddressUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < VoipAddressUI.a(this.gVO).getHeaderViewsCount())
      return;
    int i = paramInt - VoipAddressUI.a(this.gVO).getHeaderViewsCount();
    i locali = (i)VoipAddressUI.b(this.gVO).getItem(i);
    if (locali == null)
    {
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(VoipAddressUI.b(this.gVO).getCount());
      arrayOfObject3[1] = Integer.valueOf(i);
      aa.b("MicroMsg.VoipAddressUI", "on contactLV ItemClick, the item contact shoud not be null. count:%d, pos:%d ", arrayOfObject3);
      return;
    }
    ia localia = new ia();
    localia.bRw.bNk = 5;
    localia.bRw.bNl = locali.getUsername();
    localia.bRw.context = this.gVO;
    int j;
    if (VoipAddressUI.c(this.gVO))
    {
      j = 2;
      if (!VoipAddressUI.d(this.gVO))
        break label232;
      localia.bRw.bRz = 2;
      m localm2 = m.dZN;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(j);
      arrayOfObject2[1] = Integer.valueOf(1);
      arrayOfObject2[2] = Integer.valueOf(0);
      localm2.d(11033, arrayOfObject2);
    }
    while (true)
    {
      a.ayH().f(localia);
      return;
      j = 1;
      break;
      label232: localia.bRw.bRz = 3;
      m localm1 = m.dZN;
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(j);
      arrayOfObject1[1] = Integer.valueOf(2);
      arrayOfObject1[2] = Integer.valueOf(0);
      localm1.d(11033, arrayOfObject1);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fi
 * JD-Core Version:    0.6.2
 */