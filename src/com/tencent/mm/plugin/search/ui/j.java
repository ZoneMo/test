package com.tencent.mm.plugin.search.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.search.a;
import com.tencent.mm.storage.RegionCodeDecoder;

final class j
  implements AdapterView.OnItemClickListener
{
  j(e parame)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    q localq = ((r)paramView.getTag()).ejt;
    Intent localIntent = new Intent().putExtra("Contact_User", localq.username);
    if ((localq.data instanceof h))
    {
      h localh = (h)localq.data;
      localIntent.putExtra("Contact_Nick", localh.yP()).putExtra("Contact_Mobile_MD5", localh.yK()).putExtra("Contact_Alias", localh.rp()).putExtra("Contact_Sex", localh.rk()).putExtra("Contact_Signature", localh.rB()).putExtra("Contact_Scene", 13).putExtra("Contact_ShowUserName", false).putExtra("Contact_RegionCode", RegionCodeDecoder.w(localh.getCountry(), localh.rC(), localh.rD()));
    }
    a.cHS.c(localIntent, e.c(this.ejj));
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(e.c(this.ejj).eiC);
    arrayOfObject[1] = Integer.valueOf(3);
    arrayOfObject[2] = Integer.valueOf(paramInt + 1);
    localm.d(10991, arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.j
 * JD-Core Version:    0.6.2
 */