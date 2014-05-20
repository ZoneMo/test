package com.tencent.mm.ui.pluginapp;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import java.io.IOException;

final class e
  implements AdapterView.OnItemClickListener
{
  e(ContactSearchResultUI paramContactSearchResultUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - ContactSearchResultUI.a(this.hdh).getHeaderViewsCount();
    if ((i < 0) || (i >= ContactSearchResultUI.a(this.hdh).getCount()));
    sh localsh;
    String str;
    i locali;
    Intent localIntent1;
    do
    {
      return;
      localsh = (sh)ContactSearchResultUI.a(this.hdh).getItemAtPosition(i);
      str = localsh.fEI.getString();
      locali = be.uz().su().tO(str);
      if (!locali.rb())
        break;
      localIntent1 = new Intent(this.hdh, ContactInfoUI.class);
      localIntent1.putExtra("Contact_User", str);
      localIntent1.putExtra("Contact_Scene", 3);
    }
    while ((str == null) || (str.length() <= 0));
    if (locali.aAp())
    {
      m.dZN.j(10298, str + ",35");
      localIntent1.putExtra("Contact_Scene", 35);
    }
    this.hdh.startActivity(localIntent1);
    return;
    if ((0x8 & localsh.fNp) > 0)
      m.dZN.j(10298, localsh.fEI.getString() + ",35");
    Intent localIntent2 = new Intent(this.hdh, ContactInfoUI.class);
    localIntent2.putExtra("Contact_User", localsh.fEI.getString());
    localIntent2.putExtra("Contact_Alias", localsh.cqt);
    localIntent2.putExtra("Contact_Nick", localsh.fNa.getString());
    localIntent2.putExtra("Contact_Signature", localsh.cqr);
    localIntent2.putExtra("Contact_RegionCode", RegionCodeDecoder.w(localsh.cqx, localsh.Tu, localsh.Tv));
    localIntent2.putExtra("Contact_Sex", localsh.cqq);
    localIntent2.putExtra("Contact_VUser_Info", localsh.fNq);
    localIntent2.putExtra("Contact_VUser_Info_Flag", localsh.fNp);
    localIntent2.putExtra("Contact_KWeibo_flag", localsh.fNt);
    localIntent2.putExtra("Contact_KWeibo", localsh.fNr);
    localIntent2.putExtra("Contact_KWeiboNick", localsh.fNs);
    localIntent2.putExtra("Contact_KSnsIFlag", localsh.fNv.cqz);
    localIntent2.putExtra("Contact_KSnsBgId", localsh.fNv.cqB);
    localIntent2.putExtra("Contact_KSnsBgUrl", localsh.fNv.cqA);
    localIntent2.putExtra("Contact_Scene", 35);
    if (localsh.fNw != null);
    try
    {
      localIntent2.putExtra("Contact_customInfo", localsh.fNw.toByteArray());
      label492: if ((0x8 & localsh.fNp) > 0)
        m.dZN.j(10298, localsh.fEI.getString() + ",35");
      this.hdh.startActivity(localIntent2);
      return;
    }
    catch (IOException localIOException)
    {
      break label492;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.e
 * JD-Core Version:    0.6.2
 */