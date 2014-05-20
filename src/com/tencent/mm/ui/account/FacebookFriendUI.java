package com.tencent.mm.ui.account;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.m.p;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.eo;

public class FacebookFriendUI extends MMActivity
  implements p, com.tencent.mm.n.m
{
  private ListView cIo;
  private View cIq;
  private ProgressDialog cIr = null;
  private String cIs;
  private ac gpW;
  private TextView gpX = null;
  private boolean gpY = false;

  private void S(String paramString1, String paramString2)
  {
    h.a(this, paramString2, paramString1, new ai(this), null);
  }

  protected final void FR()
  {
    this.cIo = ((ListView)findViewById(i.aBK));
    this.gpX = ((TextView)findViewById(i.asG));
    this.gpX.setText(n.bkn);
    TextView localTextView = (TextView)findViewById(i.asL);
    localTextView.setText(n.bkl);
    eo localeo = new eo();
    localeo.a(new af(this));
    a(true, localeo);
    this.gpW = new ac(this, new aj(this, localTextView));
    this.gpW.a(new ak(this));
    this.cIo.setAdapter(this.gpW);
    this.cIq = findViewById(i.aBL);
    this.cIo.setOnItemClickListener(new al(this));
    aa.d("MicroMsg.FacebookFriendUI", "isBindForFacebookApp:" + v.tE());
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
        new fm(locale, new am(this)).aFV();
      }
      com.tencent.mm.modelfriend.al localal = new com.tencent.mm.modelfriend.al();
      localal.zN();
      localay = new ay(new an(this, localal), false);
      if (cj.c((Integer)be.uz().sr().get(65829)) > 0)
      {
        be.uz().sr().set(65829, Integer.valueOf(1));
        be.uA().d(localal);
        Activity localActivity = aal();
        getString(n.ber);
        this.cIr = h.a(localActivity, getString(n.bto), true, new ao(this, localay, localal));
        a(0, getString(n.blV), new ap(this));
      }
    }
    while (true)
    {
      a(new ag(this));
      new ah(this);
      return;
      localay.bO(5000L);
      break;
      this.cIo.setVisibility(8);
      this.cIq.setVisibility(0);
      ((TextView)findViewById(i.aBM)).setText(n.blT);
      this.cIq.setOnClickListener(new aq(this));
    }
  }

  public final void FS()
  {
    if (this.gpW != null)
      this.gpW.ih(this.cIs);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.FacebookFriendUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
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
      S(getString(n.ber), paramString);
      return;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.gpW.ca(null);
      return;
    }
    Toast.makeText(this, n.brC, 0).show();
  }

  public final void ei(String paramString)
  {
    this.gpW.notifyDataSetChanged();
  }

  protected final int getLayoutId()
  {
    return k.aUi;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.blU);
    be.uA().a(32, this);
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(32, this);
    this.gpW.closeCursor();
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    com.tencent.mm.m.af.vJ().e(this);
  }

  protected void onResume()
  {
    super.onResume();
    com.tencent.mm.m.af.vJ().d(this);
    this.gpW.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.FacebookFriendUI
 * JD-Core Version:    0.6.2
 */