package com.tencent.mm.plugin.accountsync.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.al;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.fm;
import com.tencent.mm.ui.tools.eo;

public class InviteFacebookFriendsUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private ListView cIo;
  private r cIp;
  private View cIq;
  private ProgressDialog cIr = null;
  private String cIs;
  private final int cIt = 5;

  private void S(String paramString1, String paramString2)
  {
    com.tencent.mm.ui.base.h.a(this, paramString2, paramString1, new f(this), null);
  }

  protected final void FR()
  {
    this.cIo = ((ListView)findViewById(com.tencent.mm.i.aBK));
    TextView localTextView = (TextView)findViewById(com.tencent.mm.i.asL);
    localTextView.setText(com.tencent.mm.n.bkl);
    eo localeo = new eo();
    localeo.a(new e(this));
    a(true, localeo);
    this.cIp = new r(this, new g(this, localTextView));
    this.cIo.setAdapter(this.cIp);
    this.cIq = findViewById(com.tencent.mm.i.aBL);
    this.cIo.setOnItemClickListener(new h(this));
    aa.d("MicroMsg.InviteFacebookFriendsUI", "isBindForFacebookApp:" + v.tE());
    al localal;
    ay localay;
    if (v.tE())
    {
      this.cIo.setVisibility(0);
      this.cIq.setVisibility(8);
      long l = cj.a((Long)be.uz().sr().get(65831));
      String str = cj.hW((String)be.uz().sr().get(65830));
      if ((cj.N(l) > 86400000L) && (str.length() > 0))
      {
        com.tencent.mm.ui.a.a.e locale = new com.tencent.mm.ui.a.a.e("290293790992170");
        locale.xh(str);
        new fm(locale, new i(this)).aFV();
      }
      localal = new al();
      localal.zN();
      localay = new ay(new j(this, localal), false);
      if (cj.c((Integer)be.uz().sr().get(65829)) <= 0)
        break label426;
      be.uz().sr().set(65829, Integer.valueOf(1));
      be.uA().d(localal);
    }
    while (true)
    {
      Activity localActivity = aal();
      getString(com.tencent.mm.n.ber);
      this.cIr = com.tencent.mm.ui.base.h.a(localActivity, getString(com.tencent.mm.n.bto), true, new k(this, localay, localal));
      a(new l(this));
      new m(this);
      a(0, getString(com.tencent.mm.n.bkp), new n(this));
      dh(false);
      return;
      label426: localay.bO(5000L);
    }
  }

  public final void FS()
  {
    if (this.cIp != null)
      this.cIp.ih(this.cIs);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.InviteFacebookFriendsUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (paramx.getType() != 32)
      return;
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 4) && (paramInt2 == -68))
    {
      if (cj.hX(paramString))
        paramString = "error";
      S(getString(com.tencent.mm.n.ber), paramString);
      return;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.cIp.ca(null);
      return;
    }
    Toast.makeText(this, com.tencent.mm.n.brC, 0).show();
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aUi;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(com.tencent.mm.n.bks);
    be.uA().a(32, this);
    FR();
  }

  protected void onDestroy()
  {
    be.uA().b(32, this);
    this.cIp.closeCursor();
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.InviteFacebookFriendsUI
 * JD-Core Version:    0.6.2
 */