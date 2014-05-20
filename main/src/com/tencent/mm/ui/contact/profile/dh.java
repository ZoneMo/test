package com.tencent.mm.ui.contact.profile;

import android.app.ProgressDialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.an.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.bm;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.af;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import java.util.List;

class dh extends cx
  implements m
{
  private ProgressDialog cIr;

  public dh(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  private void onStart()
  {
    onStop();
    be.uA().a(30, this);
  }

  private void onStop()
  {
    be.uA().b(30, this);
  }

  public void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object localObject = null;
    aa.d("MicroMsg.NormalUserFooterPreference", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
    if (paramx.getType() != 30);
    int j;
    do
    {
      List localList;
      do
      {
        int k;
        do
        {
          do
          {
            return;
            onStop();
            if (this.cIr != null)
            {
              this.cIr.dismiss();
              this.cIr = null;
            }
          }
          while (!au.ag(this.gXk.getContext()));
          if ((paramInt1 != 0) || (paramInt2 != 0))
            break;
          k = ((com.tencent.mm.pluginsdk.model.j)paramx).apI();
          aa.d("MicroMsg.NormalUserFooterPreference", "VerifyBaseHandler onSceneEnd, opCode = " + k);
        }
        while ((k != 1) && (k != 3));
        localList = ((com.tencent.mm.pluginsdk.model.j)paramx).apH();
      }
      while ((localList != null) && (!localList.contains(NormalUserFooterPreference.a(this.gXk).getUsername())));
      NormalUserFooterPreference localNormalUserFooterPreference = this.gXk;
      i locali1 = be.uz().su().tO(NormalUserFooterPreference.a(this.gXk).getUsername());
      if ((locali1 == null) || (locali1.rj() == 0))
      {
        i locali2 = NormalUserFooterPreference.a(this.gXk);
        if (be.uz().su().C(locali2) == -1)
          aa.e("MicroMsg.NormalUserFooterPreference", "insert contact failed, username = " + locali2.getUsername());
      }
      while (true)
      {
        NormalUserFooterPreference.a(localNormalUserFooterPreference, (i)localObject);
        if (NormalUserFooterPreference.a(this.gXk) != null)
          w.k(NormalUserFooterPreference.a(this.gXk));
        aLm();
        return;
        locali1 = be.uz().su().tO(NormalUserFooterPreference.a(this.gXk).getUsername());
        localObject = locali1;
      }
      if ((paramInt1 != 4) || (paramInt2 != -302))
        break;
      j = ((com.tencent.mm.pluginsdk.model.j)paramx).apI();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      aa.c("MicroMsg.NormalUserFooterPreference", "VerifyBaseHandler onSceneEnd, verify relation out of date, opCode = %d", arrayOfObject2);
    }
    while (j != 3);
    h.a(NormalUserFooterPreference.b(this.gXk), NormalUserFooterPreference.b(this.gXk).getString(2131166393), NormalUserFooterPreference.b(this.gXk).getString(2131167675), NormalUserFooterPreference.b(this.gXk).getString(2131167700), NormalUserFooterPreference.b(this.gXk).getString(2131167681), new dl(this), null);
    return;
    int i;
    switch (paramInt1)
    {
    case 3:
    default:
      i = 0;
    case 1:
    case 2:
    case 4:
    }
    while (i != 0)
    {
      return;
      if (be.uA().wT())
      {
        af.k(this.gXk.getContext(), be.uA().getNetworkServerIp(), String.valueOf(paramInt2));
        i = 1;
      }
      else if (bm.ac(this.gXk.getContext()))
      {
        af.aZ(this.gXk.getContext());
        i = 1;
      }
      else
      {
        i = 0;
        continue;
        Context localContext1 = this.gXk.getContext();
        Context localContext2 = this.gXk.getContext();
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(2);
        arrayOfObject1[1] = Integer.valueOf(paramInt2);
        Toast.makeText(localContext1, localContext2.getString(2131165276, arrayOfObject1), 3000).show();
        i = 1;
        continue;
        if (paramInt2 != -100)
          break label669;
        h.a(this.gXk.getContext(), com.tencent.mm.protocal.j.awH(), a.m(this.gXk.getContext(), 2131167675), new dj(this), new dk(this));
        i = 1;
      }
    }
    label669: String str;
    if ((paramInt1 == 4) && (paramInt2 == -34))
      str = NormalUserFooterPreference.b(this.gXk).getString(2131167853);
    while (true)
    {
      Toast.makeText(NormalUserFooterPreference.b(this.gXk), str, 1).show();
      break;
      if ((paramInt1 == 4) && (paramInt2 == -94))
        str = NormalUserFooterPreference.b(this.gXk).getString(2131167854);
      else
        str = NormalUserFooterPreference.b(this.gXk).getString(2131167850);
    }
  }

  protected void aLg()
  {
    onDetach();
    onStart();
    super.aLg();
  }

  protected final void aLl()
  {
    onStart();
    Context localContext = this.gXk.getContext();
    this.gXk.getContext().getString(2131167675);
    this.cIr = h.a(localContext, this.gXk.getContext().getString(2131166322), true, new di(this));
    be.uA().d(new com.tencent.mm.pluginsdk.model.j(NormalUserFooterPreference.a(this.gXk).getUsername(), NormalUserFooterPreference.n(this.gXk), NormalUserFooterPreference.i(this.gXk)));
  }

  protected void aLm()
  {
    if (NormalUserFooterPreference.r(this.gXk) != null)
      NormalUserFooterPreference.r(this.gXk).onDetach();
    NormalUserFooterPreference.a(this.gXk, new cx(this.gXk));
    NormalUserFooterPreference.r(this.gXk).agI();
  }

  protected void onDetach()
  {
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (NormalUserFooterPreference.o(this.gXk) != null)
      NormalUserFooterPreference.o(this.gXk).setVisibility(8);
    if (NormalUserFooterPreference.p(this.gXk) != null)
      NormalUserFooterPreference.p(this.gXk).setVisibility(0);
    if (NormalUserFooterPreference.e(this.gXk) != null)
      NormalUserFooterPreference.e(this.gXk).setVisibility(8);
    if (NormalUserFooterPreference.q(this.gXk) != null)
      NormalUserFooterPreference.q(this.gXk).setVisibility(8);
    if (NormalUserFooterPreference.m(this.gXk) != null)
      NormalUserFooterPreference.m(this.gXk).setVisibility(8);
    onStop();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.dh
 * JD-Core Version:    0.6.2
 */