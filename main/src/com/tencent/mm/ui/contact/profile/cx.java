package com.tencent.mm.ui.contact.profile;

import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ad;
import com.tencent.mm.modelfriend.av;
import com.tencent.mm.modelfriend.aw;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.applet.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import java.util.LinkedList;
import junit.framework.Assert;

class cx extends cb
{
  public cx(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  protected void aLg()
  {
    boolean bool1 = true;
    boolean bool2;
    if (!v.cm(NormalUserFooterPreference.a(this.gXk).getUsername()))
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (w.db(NormalUserFooterPreference.a(this.gXk).getUsername()))
        break label149;
    }
    while (true)
    {
      Assert.assertTrue(bool1);
      NormalUserFooterPreference.o(this.gXk).setVisibility(8);
      NormalUserFooterPreference.p(this.gXk).setVisibility(8);
      if (!NormalUserFooterPreference.c(this.gXk))
        break label154;
      NormalUserFooterPreference.w(this.gXk).setOnClickListener(new cy(this));
      NormalUserFooterPreference.w(this.gXk).setVisibility(0);
      NormalUserFooterPreference.q(this.gXk).setVisibility(8);
      NormalUserFooterPreference.e(this.gXk).setVisibility(8);
      NormalUserFooterPreference.m(this.gXk).setVisibility(8);
      return;
      bool2 = false;
      break;
      label149: bool1 = false;
    }
    label154: NormalUserFooterPreference.q(this.gXk).setOnClickListener(new cz(this));
    if (!NormalUserFooterPreference.a(this.gXk).rb())
    {
      NormalUserFooterPreference.q(this.gXk).setVisibility(0);
      NormalUserFooterPreference.e(this.gXk).setVisibility(8);
    }
    while (NormalUserFooterPreference.a(this.gXk).rd())
    {
      NormalUserFooterPreference.m(this.gXk).setVisibility(0);
      return;
      NormalUserFooterPreference.q(this.gXk).setVisibility(8);
      NormalUserFooterPreference.e(this.gXk).setVisibility(0);
      if (be.uz().su().tQ(NormalUserFooterPreference.a(this.gXk).getUsername()))
      {
        NormalUserFooterPreference.h(this.gXk).setVisibility(0);
        NormalUserFooterPreference.a(this.gXk, NormalUserFooterPreference.a(this.gXk).getSource());
      }
    }
    NormalUserFooterPreference.m(this.gXk).setVisibility(8);
  }

  protected final void aLk()
  {
    if ((NormalUserFooterPreference.a(this.gXk).rj() == 0) && (be.uz().su().C(NormalUserFooterPreference.a(this.gXk)) != -1))
      NormalUserFooterPreference.a(this.gXk, be.uz().su().tO(NormalUserFooterPreference.a(this.gXk).getUsername()));
    av localav1;
    String str3;
    String str4;
    h localh1;
    if ((NormalUserFooterPreference.x(this.gXk)) || (NormalUserFooterPreference.i(this.gXk) == 12))
    {
      aa.d("MicroMsg.NormalUserFooterPreference", "qqNum " + NormalUserFooterPreference.y(this.gXk) + " qqReamrk " + NormalUserFooterPreference.z(this.gXk));
      if ((NormalUserFooterPreference.y(this.gXk) != 0L) && (NormalUserFooterPreference.z(this.gXk) != null) && (!NormalUserFooterPreference.z(this.gXk).equals("")))
      {
        localav1 = ax.Aq().C(NormalUserFooterPreference.y(this.gXk));
        if (localav1 == null)
        {
          av localav2 = new av();
          localav2.bt("");
          localav2.B(NormalUserFooterPreference.y(this.gXk));
          localav2.fJ(NormalUserFooterPreference.z(this.gXk));
          localav2.setUsername(NormalUserFooterPreference.a(this.gXk).getUsername());
          localav2.Aj();
          ax.Aq().a(localav2);
        }
      }
      else
      {
        String str1 = NormalUserFooterPreference.b(this.gXk).getIntent().getStringExtra("Contact_Mobile_MD5");
        String str2 = NormalUserFooterPreference.b(this.gXk).getIntent().getStringExtra("Contact_full_Mobile_MD5");
        str3 = au.hW(str1);
        str4 = au.hW(str2);
        if ((!str3.equals("")) || (!str4.equals("")))
        {
          localh1 = ax.Al().fs(str3);
          if (localh1 != null)
            break label539;
        }
      }
    }
    for (h localh2 = ax.Al().fs(str4); ; localh2 = localh1)
    {
      if (localh2 != null)
        ax.Al().a(str4, localh2);
      a locala = new a(this.gXk.getContext(), new da(this));
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(Integer.valueOf(NormalUserFooterPreference.i(this.gXk)));
      locala.e(NormalUserFooterPreference.a(this.gXk).getUsername(), localLinkedList);
      return;
      localav1.B(NormalUserFooterPreference.y(this.gXk));
      localav1.fJ(NormalUserFooterPreference.z(this.gXk));
      localav1.setUsername(NormalUserFooterPreference.a(this.gXk).getUsername());
      localav1.Aj();
      ax.Aq().a(NormalUserFooterPreference.y(this.gXk), localav1);
      break;
      if ((NormalUserFooterPreference.i(this.gXk) != 58) && (NormalUserFooterPreference.i(this.gXk) != 59) && (NormalUserFooterPreference.i(this.gXk) != 60))
        break;
      ax.At().t(NormalUserFooterPreference.a(this.gXk).getUsername(), 1);
      break;
      label539: str4 = str3;
    }
  }

  protected final void agI()
  {
    super.agI();
  }

  protected void onDetach()
  {
    super.onDetach();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cx
 * JD-Core Version:    0.6.2
 */