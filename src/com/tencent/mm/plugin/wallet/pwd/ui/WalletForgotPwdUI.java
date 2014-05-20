package com.tencent.mm.plugin.wallet.pwd.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.bind.model.f;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.plugin.wallet.ui.l;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class WalletForgotPwdUI extends WalletBaseUI
  implements l
{
  private Button dLL;
  private ListView eHV;
  private int eZt = 1;
  private ArrayList fds = new ArrayList();
  private List fdt = new LinkedList();
  private Bankcard fdu;
  private d fdv;
  private LinearLayout fdw;
  private EditHintView fdx;
  private EditHintView fdy;

  private boolean UW()
  {
    if ((this.eHV.getVisibility() == 0) || ((this.fdx.U(null)) && (this.fdy.U(null))))
    {
      this.dLL.setEnabled(true);
      this.dLL.setClickable(true);
      return true;
    }
    this.dLL.setEnabled(false);
    this.dLL.setClickable(false);
    return false;
  }

  public final void FR()
  {
    this.eHV = ((ListView)findViewById(com.tencent.mm.i.aJH));
    this.fdw = ((LinearLayout)findViewById(com.tencent.mm.i.atL));
    this.fdx = ((EditHintView)findViewById(com.tencent.mm.i.aCm));
    this.fdy = ((EditHintView)findViewById(com.tencent.mm.i.aoX));
    this.fdx.a(this);
    this.fdy.a(this);
    this.dLL = ((Button)findViewById(com.tencent.mm.i.aCN));
    this.dLL.setOnClickListener(new b(this));
    this.fds = com.tencent.mm.plugin.wallet.c.c.anX().aoa();
    if ((this.fds != null) && (this.fds.size() > 0))
      this.fds = Bankcard.v(this.fds);
    if (!com.tencent.mm.plugin.wallet.c.c.anX().aoe())
    {
      aa.d("MicroMsg.WalletForgotPwdUI", "No bound bankcard process or overseas process!");
      this.fds = new ArrayList();
      this.fdw.setVisibility(0);
      this.eHV.setVisibility(8);
      this.fdx.setVisibility(8);
      this.fdy.setBackgroundResource(com.tencent.mm.h.ady);
    }
    while (true)
    {
      UW();
      a(this.fdy, 0, false);
      return;
      if ((this.fds == null) || (this.fds.size() == 0))
      {
        aa.d("MicroMsg.WalletForgotPwdUI", "No bound bankcard process or overseas process!");
        this.fds = new ArrayList();
        this.fdw.setVisibility(0);
        this.eHV.setVisibility(8);
        this.fdx.pM(com.tencent.mm.plugin.wallet.e.b.pR(com.tencent.mm.plugin.wallet.c.c.anX().aoc()));
      }
      else
      {
        aa.d("MicroMsg.WalletForgotPwdUI", "domestic process!");
        com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
        if (locali != null)
          k(new f(locali.anM(), null));
        this.fdw.setVisibility(8);
        this.dLL.setEnabled(true);
        this.dLL.setClickable(true);
        this.fdv = new d(this, this);
        this.eHV.setAdapter(this.fdv);
        this.eHV.setOnItemClickListener(new c(this));
        this.fdv.ai(this.fds);
        this.eHV.setItemChecked(0, true);
        this.fdu = this.fdv.jD(0);
        this.fdv.notifyDataSetChanged();
      }
    }
  }

  public final boolean Vi()
  {
    return true;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    aa.d("MicroMsg.WalletForgotPwdUI", " errCode: " + paramInt2 + " errMsg :" + paramString);
    if ((paramInt1 == 0) && (paramInt2 == 0) && ((parama instanceof f)))
    {
      f localf = (f)parama;
      Bundle localBundle = new Bundle();
      if (localf.anl())
      {
        this.fdt = localf.anm();
        return true;
      }
      if (localf.anm().size() > 0)
      {
        ElementQuery localElementQuery = (ElementQuery)localf.anm().get(0);
        if (localElementQuery.isError())
        {
          com.tencent.mm.ui.base.h.c(this, n.bFo, n.ber);
          return true;
        }
        com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
        if ((locali != null) && (!locali.jK(localElementQuery.eWV)))
        {
          if (locali.anN())
          {
            aa.w("MicroMsg.WalletForgotPwdUI", "Overseas user try to bind domestic card!");
            com.tencent.mm.ui.base.h.c(this, n.bFn, n.ber);
          }
          while (true)
          {
            this.fdy.UP();
            return true;
            aa.w("MicroMsg.WalletForgotPwdUI", "Domestic user try to bind international card!");
            com.tencent.mm.ui.base.h.c(this, n.bFm, n.ber);
          }
        }
        if ((this.fds == null) || (this.fds.size() == 0))
        {
          localBundle.putString("bank_name", ((ElementQuery)localf.anm().get(0)).eXe);
          localBundle.putParcelable("elemt_query", (Parcelable)localf.anm().get(0));
          localBundle.putString("Kcard_id", this.fdy.getText());
          com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
          return true;
        }
      }
    }
    return false;
  }

  public final void aN(boolean paramBoolean)
  {
    UW();
  }

  protected final boolean anq()
  {
    return false;
  }

  protected final boolean ant()
  {
    return true;
  }

  protected final int getLayoutId()
  {
    return k.bbD;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bGD);
    FR();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (paramIntent.getBooleanExtra("intent_finish", true))
      finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.WalletForgotPwdUI
 * JD-Core Version:    0.6.2
 */