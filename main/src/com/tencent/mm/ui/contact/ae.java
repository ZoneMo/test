package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.a;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.voicesearch.j;
import java.io.IOException;

final class ae
  implements AdapterView.OnItemClickListener
{
  ae(m paramm)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder("onItemClick ").append(paramInt);
    Object localObject;
    if (m.d(this.gSV) == null)
    {
      localObject = m.d(this.gSV);
      aa.d("MicroMsg.AddressUI", localObject);
      if ((paramInt != 0) || ("@biz.contact".equals(m.e(this.gSV))))
        break label87;
    }
    while (true)
    {
      return;
      localObject = Boolean.valueOf(m.d(this.gSV).aPm());
      break;
      label87: if (paramInt < m.c(this.gSV).getHeaderViewsCount())
        continue;
      int i = paramInt - m.c(this.gSV).getHeaderViewsCount();
      sh localsh;
      String str3;
      Intent localIntent4;
      if ((m.d(this.gSV) != null) && (m.d(this.gSV).aPm()))
      {
        boolean bool1 = m.d(this.gSV).mz(i);
        boolean bool2 = m.d(this.gSV).oE(i);
        aa.d("MicroMsg.AddressUI", "onItemClick " + bool2);
        if (bool2)
        {
          m.d(this.gSV).xZ("");
          return;
        }
        if (bool1)
        {
          localsh = m.d(this.gSV).oC(i);
          str3 = localsh.fEI.getString();
          com.tencent.mm.storage.i locali2 = be.uz().su().tO(str3);
          if (locali2.rb())
          {
            Intent localIntent3 = new Intent(this.gSV.aal(), ContactInfoUI.class);
            localIntent3.putExtra("Contact_User", str3);
            localIntent3.putExtra("Contact_Scene", 3);
            if ((str3 == null) || (str3.length() <= 0))
              continue;
            if (locali2.aAp())
              com.tencent.mm.plugin.d.c.m.dZN.j(10298, str3 + ",3");
            bh.b(localIntent3, str3);
            this.gSV.startActivity(localIntent3);
            return;
          }
          localIntent4 = new Intent(this.gSV.aal(), ContactInfoUI.class);
          localIntent4.putExtra("Contact_User", localsh.fEI.getString());
          localIntent4.putExtra("Contact_Alias", localsh.cqt);
          localIntent4.putExtra("Contact_Nick", localsh.fNa.getString());
          localIntent4.putExtra("Contact_Signature", localsh.cqr);
          localIntent4.putExtra("Contact_RegionCode", RegionCodeDecoder.w(localsh.cqx, localsh.Tu, localsh.Tv));
          localIntent4.putExtra("Contact_Sex", localsh.cqq);
          localIntent4.putExtra("Contact_VUser_Info", localsh.fNq);
          localIntent4.putExtra("Contact_VUser_Info_Flag", localsh.fNp);
          localIntent4.putExtra("Contact_KWeibo_flag", localsh.fNt);
          localIntent4.putExtra("Contact_KWeibo", localsh.fNr);
          localIntent4.putExtra("Contact_KWeiboNick", localsh.fNs);
          localIntent4.putExtra("Contact_KSnsIFlag", localsh.fNv.cqz);
          localIntent4.putExtra("Contact_KSnsBgId", localsh.fNv.cqB);
          localIntent4.putExtra("Contact_KSnsBgUrl", localsh.fNv.cqA);
          if (localsh.fNw == null);
        }
      }
      try
      {
        localIntent4.putExtra("Contact_customInfo", localsh.fNw.toByteArray());
        label616: if ((0x8 & localsh.fNp) > 0)
          com.tencent.mm.plugin.d.c.m.dZN.j(10298, str3 + ",3");
        this.gSV.startActivity(localIntent4);
        return;
        com.tencent.mm.storage.i locali1 = m.d(this.gSV).oD(i);
        if (locali1 == null)
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(m.d(this.gSV).getCount());
          arrayOfObject[1] = Integer.valueOf(i);
          aa.b("MicroMsg.AddressUI", "on Contact ListView ItemClick, the item contact shoud not be null. count:%d, pos:%d ", arrayOfObject);
          return;
        }
        String str2 = locali1.getUsername();
        if (w.cT(str2))
        {
          Intent localIntent1 = new Intent(this.gSV.aal(), AddressUI.class);
          localIntent1.putExtra("Contact_GroupFilter_Type", "@biz.contact");
          this.gSV.startActivity(localIntent1);
          return;
        }
        Intent localIntent2 = new Intent(this.gSV.aal(), ContactInfoUI.class);
        localIntent2.putExtra("Contact_User", str2);
        localIntent2.putExtra("Contact_Scene", 3);
        if ((str2 == null) || (str2.length() <= 0))
          continue;
        this.gSV.startActivity(localIntent2);
        return;
        a locala = (a)m.a(this.gSV).getItem(i);
        if (locala == null)
          continue;
        String str1 = locala.getUsername();
        this.gSV.wI(str1);
        return;
      }
      catch (IOException localIOException)
      {
        break label616;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ae
 * JD-Core Version:    0.6.2
 */