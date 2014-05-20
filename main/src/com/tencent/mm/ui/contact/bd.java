package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ui.tools.u;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.voicesearch.j;
import java.io.IOException;

final class bd
  implements AdapterView.OnItemClickListener
{
  bd(ChatroomContactUI paramChatroomContactUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder("onItemClick ").append(paramInt);
    Object localObject;
    if (ChatroomContactUI.c(this.gTl) == null)
    {
      localObject = ChatroomContactUI.c(this.gTl);
      aa.d("MicroMsg.ChatroomContactUI", localObject);
      if (paramInt >= ChatroomContactUI.a(this.gTl).getHeaderViewsCount())
        break label82;
    }
    while (true)
    {
      return;
      localObject = Boolean.valueOf(ChatroomContactUI.c(this.gTl).aPm());
      break;
      label82: int i = paramInt - ChatroomContactUI.a(this.gTl).getHeaderViewsCount();
      sh localsh;
      String str3;
      Intent localIntent3;
      if ((ChatroomContactUI.c(this.gTl) != null) && (ChatroomContactUI.c(this.gTl).aPm()))
      {
        boolean bool1 = ChatroomContactUI.c(this.gTl).mz(i);
        boolean bool2 = ChatroomContactUI.c(this.gTl).oE(i);
        aa.d("MicroMsg.ChatroomContactUI", "onItemClick " + bool2);
        if (bool2)
        {
          j localj = ChatroomContactUI.c(this.gTl);
          if (ChatroomContactUI.d(this.gTl) == null);
          for (String str4 = ""; ; str4 = ChatroomContactUI.d(this.gTl).aMH())
          {
            localj.xZ(str4);
            return;
          }
        }
        if (bool1)
        {
          localsh = ChatroomContactUI.c(this.gTl).oC(i);
          str3 = localsh.fEI.getString();
          i locali2 = be.uz().su().tO(str3);
          if (locali2.rb())
          {
            Intent localIntent2 = new Intent(this.gTl, ContactInfoUI.class);
            localIntent2.putExtra("Contact_User", str3);
            localIntent2.putExtra("Contact_Scene", 3);
            if ((str3 == null) || (str3.length() <= 0))
              continue;
            if (locali2.aAp())
              m.dZN.j(10298, str3 + ",3");
            bh.b(localIntent2, str3);
            this.gTl.startActivity(localIntent2);
            return;
          }
          localIntent3 = new Intent(this.gTl, ContactInfoUI.class);
          localIntent3.putExtra("Contact_User", localsh.fEI.getString());
          localIntent3.putExtra("Contact_Alias", localsh.cqt);
          localIntent3.putExtra("Contact_Nick", localsh.fNa.getString());
          localIntent3.putExtra("Contact_Signature", localsh.cqr);
          localIntent3.putExtra("Contact_RegionCode", RegionCodeDecoder.w(localsh.cqx, localsh.Tu, localsh.Tv));
          localIntent3.putExtra("Contact_Sex", localsh.cqq);
          localIntent3.putExtra("Contact_VUser_Info", localsh.fNq);
          localIntent3.putExtra("Contact_VUser_Info_Flag", localsh.fNp);
          localIntent3.putExtra("Contact_KWeibo_flag", localsh.fNt);
          localIntent3.putExtra("Contact_KWeibo", localsh.fNr);
          localIntent3.putExtra("Contact_KWeiboNick", localsh.fNs);
          localIntent3.putExtra("Contact_KSnsIFlag", localsh.fNv.cqz);
          localIntent3.putExtra("Contact_KSnsBgId", localsh.fNv.cqB);
          localIntent3.putExtra("Contact_KSnsBgUrl", localsh.fNv.cqA);
          if (localsh.fNw == null);
        }
      }
      try
      {
        localIntent3.putExtra("Contact_customInfo", localsh.fNw.toByteArray());
        label623: if ((0x8 & localsh.fNp) > 0)
          m.dZN.j(10298, str3 + ",3");
        this.gTl.startActivity(localIntent3);
        return;
        i locali1 = ChatroomContactUI.c(this.gTl).oD(i);
        if (locali1 == null)
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(ChatroomContactUI.c(this.gTl).getCount());
          arrayOfObject[1] = Integer.valueOf(i);
          aa.b("MicroMsg.ChatroomContactUI", "on Contact ListView ItemClick, the item contact shoud not be null. count:%d, pos:%d ", arrayOfObject);
          return;
        }
        String str2 = locali1.getUsername();
        Intent localIntent1 = new Intent(this.gTl, ContactInfoUI.class);
        localIntent1.putExtra("Contact_User", str2);
        localIntent1.putExtra("Contact_Scene", 3);
        if ((str2 == null) || (str2.length() <= 0))
          continue;
        this.gTl.startActivity(localIntent1);
        return;
        String str1 = ((i)ChatroomContactUI.e(this.gTl).getItem(i)).getUsername();
        ChatroomContactUI.b(this.gTl, str1);
        return;
      }
      catch (IOException localIOException)
      {
        break label623;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bd
 * JD-Core Version:    0.6.2
 */