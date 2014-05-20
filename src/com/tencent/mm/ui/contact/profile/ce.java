package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.transmit.SelectConversationUI;

final class ce
  implements cd
{
  ce(cc paramcc)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return;
    case 2:
      if (NormalUserFooterPreference.a(this.gXm.gXl.gXk).re())
      {
        w.h(NormalUserFooterPreference.a(this.gXm.gXl.gXk));
        h.an(NormalUserFooterPreference.b(this.gXm.gXl.gXk), NormalUserFooterPreference.b(this.gXm.gXl.gXk).getString(2131166252));
      }
      while (true)
      {
        NormalUserFooterPreference.a(this.gXm.gXl.gXk, be.uz().su().tO(NormalUserFooterPreference.a(this.gXm.gXl.gXk).getUsername()));
        be.uA().d(new com.tencent.mm.z.i(5));
        return;
        w.g(NormalUserFooterPreference.a(this.gXm.gXl.gXk));
        h.an(NormalUserFooterPreference.b(this.gXm.gXl.gXk), NormalUserFooterPreference.b(this.gXm.gXl.gXk).getString(2131166251));
      }
    case 3:
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("sns_permission_userName", NormalUserFooterPreference.a(this.gXm.gXl.gXk).getUsername());
      localIntent2.putExtra("sns_permission_anim", true);
      com.tencent.mm.ak.a.b(NormalUserFooterPreference.b(this.gXm.gXl.gXk), "sns", ".ui.SnsPermissionUI", localIntent2);
      return;
    case 4:
      cb localcb2 = this.gXm.gXl;
      Intent localIntent1 = new Intent(localcb2.gXk.getContext(), SelectConversationUI.class);
      localIntent1.putExtra("Select_Talker_Name", NormalUserFooterPreference.a(localcb2.gXk).getUsername());
      localIntent1.putExtra("Select_block_List", NormalUserFooterPreference.a(localcb2.gXk).getUsername());
      localIntent1.putExtra("Select_Send_Card", true);
      localcb2.gXk.getContext().startActivity(localIntent1);
      return;
    case 1:
      this.gXm.gXl.gXk.ckD.ah("hide_btn");
      this.gXm.gXl.gXk.ckD.Ei();
      this.gXm.gXl.atl();
      return;
    case 5:
      if (NormalUserFooterPreference.a(this.gXm.gXl.gXk).rd())
      {
        cb.a(this.gXm.gXl);
        return;
      }
      h.a(this.gXm.gXl.gXk.getContext(), this.gXm.gXl.gXk.getContext().getString(2131166239), this.gXm.gXl.gXk.getContext().getString(2131166237), new cf(this), null);
      return;
    case 6:
      Context localContext1 = this.gXm.gXl.gXk.getContext();
      Context localContext3;
      Object[] arrayOfObject2;
      if (w.cr(NormalUserFooterPreference.a(this.gXm.gXl.gXk).getUsername()))
      {
        localContext3 = this.gXm.gXl.gXk.getContext();
        arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = NormalUserFooterPreference.a(this.gXm.gXl.gXk).rr();
      }
      Context localContext2;
      Object[] arrayOfObject1;
      for (String str = localContext3.getString(2131166280, arrayOfObject2); ; str = localContext2.getString(2131166279, arrayOfObject1))
      {
        h.a(localContext1, str, "", this.gXm.gXl.gXk.getContext().getString(2131167687), this.gXm.gXl.gXk.getContext().getString(2131167681), new cg(this), null);
        return;
        localContext2 = this.gXm.gXl.gXk.getContext();
        arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = NormalUserFooterPreference.a(this.gXm.gXl.gXk).rr();
      }
    case 7:
    }
    cb localcb1 = this.gXm.gXl;
    aa.d("MicroMsg.NormalUserFooterPreference", "dealAddShortcut, username = " + NormalUserFooterPreference.a(localcb1.gXk).getUsername());
    com.tencent.mm.plugin.base.a.a.B(NormalUserFooterPreference.b(localcb1.gXk), NormalUserFooterPreference.a(localcb1.gXk).getUsername());
    an.b(new ck(localcb1), 1000L);
    h.an(NormalUserFooterPreference.b(localcb1.gXk), NormalUserFooterPreference.b(localcb1.gXk).getString(2131167703));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ce
 * JD-Core Version:    0.6.2
 */