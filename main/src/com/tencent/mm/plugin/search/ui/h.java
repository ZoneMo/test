package com.tencent.mm.plugin.search.ui;

import android.app.Dialog;
import android.content.Intent;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.k;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.pluginsdk.ui.tools.c;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.RegionCodeDecoder;
import java.util.LinkedList;

final class h
  implements m
{
  h(e parame, int paramInt)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    be.uA().b(106, this);
    if (e.a(this.ejj) != null)
    {
      e.a(this.ejj).dismiss();
      e.b(this.ejj);
    }
    if ((paramInt1 == 4) && (paramInt2 == -4))
      com.tencent.mm.ui.base.h.a(e.c(this.ejj), n.bdh, 0, true, null);
    sj localsj;
    do
    {
      return;
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        Toast.makeText(e.c(this.ejj), e.c(this.ejj).getString(n.bnl), 0).show();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        aa.w("MicroMsg.SearchContactUI", String.format("Search contact failed: %d, %d.", arrayOfObject));
        return;
      }
      localsj = ((aj)paramx).CB();
      if (localsj.fKH > 0)
      {
        if (localsj.fKI.isEmpty())
        {
          com.tencent.mm.ui.base.h.a(e.c(this.ejj), n.bdh, 0, true, null);
          return;
        }
        Intent localIntent2 = new Intent();
        sh localsh = (sh)localsj.fKI.getFirst();
        int i = this.ejk;
        String str = an.a(localsh.fEI);
        localIntent2.putExtra("Contact_User", str);
        localIntent2.putExtra("Contact_Nick", an.a(localsh.fNa));
        localIntent2.putExtra("Contact_PyInitial", an.a(localsh.fEG));
        localIntent2.putExtra("Contact_QuanPin", an.a(localsh.fEH));
        localIntent2.putExtra("Contact_Alias", localsh.cqt);
        localIntent2.putExtra("Contact_Sex", localsh.cqq);
        localIntent2.putExtra("Contact_VUser_Info", localsh.fNq);
        localIntent2.putExtra("Contact_VUser_Info_Flag", localsh.fNp);
        localIntent2.putExtra("Contact_KWeibo_flag", localsh.fNt);
        localIntent2.putExtra("Contact_KWeibo", localsh.fNr);
        localIntent2.putExtra("Contact_KWeiboNick", localsh.fNs);
        localIntent2.putExtra("Contact_Scene", i);
        localIntent2.putExtra("Contact_KHideExpose", true);
        localIntent2.putExtra("Contact_RegionCode", RegionCodeDecoder.w(localsh.cqx, localsh.Tu, localsh.Tv));
        localIntent2.putExtra("Contact_Signature", localsh.cqr);
        localIntent2.putExtra("Contact_BrandList", localsh.cqy);
        localIntent2.putExtra("Contact_KSnsIFlag", localsh.fNv.cqz);
        localIntent2.putExtra("Contact_KSnsBgId", localsh.fNv.cqB);
        localIntent2.putExtra("Contact_KSnsBgUrl", localsh.fNv.cqA);
        com.tencent.mm.p.a locala = new com.tencent.mm.p.a();
        locala.field_username = str;
        locala.field_brandList = localsh.cqy;
        dl localdl = localsh.fNw;
        if (localdl != null)
        {
          locala.field_brandFlag = localdl.cqC;
          locala.field_brandInfo = localdl.cqE;
          locala.field_extInfo = localdl.cqD;
          locala.field_brandIconURL = localdl.cqF;
        }
        if (!ab.ye().b(locala))
          ab.ye().a(locala);
        com.tencent.mm.plugin.search.a.cHS.c(localIntent2, e.c(this.ejj));
        return;
      }
    }
    while (cj.hW(an.a(localsj.fEI)).length() <= 0);
    Intent localIntent1 = new Intent();
    c.a(localIntent1, localsj, this.ejk);
    com.tencent.mm.plugin.search.a.cHS.c(localIntent1, e.c(this.ejj));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.h
 * JD-Core Version:    0.6.2
 */