package com.tencent.mm.plugin.wallet.ui;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.wallet.b.d;
import com.tencent.mm.plugin.wallet.b.e;
import com.tencent.mm.plugin.wallet.b.f;
import com.tencent.mm.plugin.wallet.b.g;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tenpay.android.wechat.MyKeyboardWindow;
import com.tenpay.android.wechat.TenpaySecureEditText;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public abstract class WalletBaseUI extends MMActivity
  implements m
{
  protected Dialog dID = null;
  private String dJf = null;
  private MyKeyboardWindow fcC;
  private Bundle fea = new Bundle();
  private int feb = 0;
  private int fec = 0;
  private String fed = null;
  private HashSet fee = new HashSet();
  private HashSet fef = new HashSet();

  private String a(com.tencent.mm.plugin.wallet.b.i parami)
  {
    if ((parami != null) && (!(parami instanceof f)))
    {
      if (((parami instanceof com.tencent.mm.plugin.wallet.b.c)) || ((parami instanceof d)))
        return getString(n.bFu);
      if ((parami instanceof e))
        return getString(n.bFv);
      return getString(n.bFw);
    }
    return getString(n.bFw);
  }

  protected boolean Vf()
  {
    return false;
  }

  protected boolean Vh()
  {
    return false;
  }

  public boolean Vi()
  {
    return true;
  }

  public void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "errType = " + paramInt1 + ", errCode = " + paramInt2 + ", errMsg = " + paramString);
    TenpaySecureEditText.setSalt(com.tencent.mm.plugin.wallet.e.a.aoO());
    if (cj.hX(paramString))
      paramString = getString(n.bHu);
    int j;
    com.tencent.mm.plugin.wallet.c.a locala;
    Object localObject1;
    label193: com.tencent.mm.plugin.wallet.b.i locali;
    label248: int k;
    if (this.fef.contains(paramx))
    {
      this.fef.remove(paramx);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "has find scene ");
      j = 1;
      if (!(paramx instanceof com.tencent.mm.plugin.wallet.c.a))
        break label890;
      locala = (com.tencent.mm.plugin.wallet.c.a)paramx;
      if (locala.anV())
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "order pay end!!!");
        this.fea.putInt("intent_pay_end_errcode", paramInt2);
        this.fea.putString("intent_pay_app_url", locala.anW());
        this.fea.putBoolean("intent_pay_end", true);
        com.tencent.mm.plugin.wallet.b.h.g(this, this.fea);
      }
      if (j != 0)
      {
        if (paramInt1 != 1000)
          break label974;
        if (!cj.hX(paramString))
          break label968;
        localObject1 = getString(n.bHu);
        locali = com.tencent.mm.plugin.wallet.b.h.m(this);
        switch (paramInt2)
        {
        case 406:
        default:
          k = 0;
        case 401:
        case 402:
        case 403:
        case 408:
        case 407:
        case 404:
        case 405:
        }
      }
    }
    while (true)
    {
      label251: if (k == 0)
        if (!a(paramInt1, paramInt2, (String)localObject1, (com.tencent.mm.plugin.wallet.c.a)paramx))
        {
          if ((paramInt1 != 0) || (paramInt2 != 0))
          {
            this.feb = paramInt1;
            this.fec = paramInt2;
            this.dJf = ((String)localObject1);
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "wallet base consume this response in the end!");
          }
        }
        else
        {
          if ((this.fef.isEmpty()) && (this.fee.isEmpty()))
          {
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "scenes & forcescenes isEmpty!");
            if (this.fec == 0)
              break label946;
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "showAlert! mErrCode : " + this.fec);
            com.tencent.mm.ui.base.h.a(aal(), this.dJf, null, false, new u(this));
            label383: if (this.dID != null)
            {
              this.dID.dismiss();
              this.dID = null;
            }
          }
          return;
          boolean bool = this.fee.contains(paramx);
          int i = 0;
          if (bool)
          {
            this.fee.remove(paramx);
            i = 1;
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "has find forcescenes ");
          }
          j = i;
          break;
          com.tencent.mm.ui.base.h.a(aal(), false, (String)localObject1, "", getString(n.bGk), getString(n.bds), new ad(this), new ae(this));
          k = 1;
          continue;
          if ((locali == null) || (!(locali instanceof g)) || (!locali.anQ()) || (this.fea.getParcelable("key_bankcard") == null))
            break label248;
          if (!cj.hX((String)localObject1))
            break label961;
        }
      label303: label946: label961: for (Object localObject2 = getString(n.bHd); ; localObject2 = localObject1)
      {
        com.tencent.mm.ui.base.h.a(this, (String)localObject2, "", getString(n.bHc), getString(n.bds), new af(this, paramInt2, locali), null);
        k = 1;
        localObject1 = localObject2;
        break label251;
        com.tencent.mm.plugin.wallet.c.b localb = new com.tencent.mm.plugin.wallet.c.b();
        be.uA().d(localb);
        com.tencent.mm.ui.base.h.a(aal(), (String)localObject1, null, false, new ag(this, paramInt2));
        k = 1;
        break label251;
        if ((locali != null) && ((locali instanceof g)))
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "404 pay error, cancel pay or change!");
          ArrayList localArrayList = com.tencent.mm.plugin.wallet.c.c.anX().aoa();
          if ((localArrayList == null) || (localArrayList.isEmpty()))
            com.tencent.mm.ui.base.h.a(this, (String)localObject1, "", getString(n.bGG), a(locali), new ah(this, locali), new p(this, locali));
          while (true)
          {
            k = 1;
            break;
            com.tencent.mm.ui.base.h.a(this, (String)localObject1, "", getString(n.bGW), a(locali), new q(this, locali), new r(this, locali));
          }
        }
        if ((locali == null) || (!(locali instanceof com.tencent.mm.plugin.wallet.b.b)))
          break;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "404 bind error, cancel bind!");
        com.tencent.mm.ui.base.h.a(aal(), (String)localObject1, null, a(locali), false, new s(this, locali));
        k = 1;
        break label251;
        com.tencent.mm.ui.base.h.a(this, (String)localObject1, "", getString(n.bHp), getString(n.bds), new t(this, locala), null);
        k = 1;
        break label251;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "wallet this response havn't error!");
        break label303;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "wallet base consume this response before subclass!");
        break label303;
        label890: if (c(paramInt1, paramInt2, paramString, paramx))
          break label303;
        if ((paramInt1 != 0) || (paramInt2 != 0))
        {
          this.feb = paramInt1;
          this.fec = paramInt2;
          this.dJf = paramString;
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "wallet base consume this response in the end!");
          break label303;
        }
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "wallet other scene this response havn't error!");
        break label303;
        if (Vh())
          break label383;
        gI(0);
        break label383;
      }
      label968: localObject1 = paramString;
      break label193;
      label974: localObject1 = paramString;
      k = 0;
    }
  }

  protected final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    this.fcC = ((MyKeyboardWindow)findViewById(com.tencent.mm.i.aMJ));
    EditText localEditText = (EditText)paramView.findViewById(com.tencent.mm.i.awb);
    if ((this.fcC == null) || (localEditText == null))
      return;
    com.tencent.mm.plugin.wallet.e.b.a(localEditText);
    localEditText.setOnFocusChangeListener(new x(this, paramBoolean, paramInt, localEditText));
  }

  public final void a(com.tencent.mm.n.x paramx, boolean paramBoolean)
  {
    this.fee.add(paramx);
    if ((paramBoolean) && ((this.dID == null) || ((this.dID != null) && (!this.dID.isShowing()))))
    {
      if (this.dID != null)
        this.dID.dismiss();
      this.dID = com.tencent.mm.plugin.wallet.e.b.a(aal(), anq(), new o(this));
    }
    be.uA().d(paramx);
  }

  public abstract boolean a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.plugin.wallet.c.a parama);

  protected final void anc()
  {
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    if (locali != null)
      if ((locali instanceof f))
        this.fed = getString(n.bHr);
    while (true)
    {
      SM();
      showDialog(1);
      return;
      if (((locali instanceof com.tencent.mm.plugin.wallet.b.c)) || ((locali instanceof d)))
      {
        this.fed = getString(n.bGq);
      }
      else if ((locali instanceof e))
      {
        this.fed = getString(n.bGl);
      }
      else
      {
        this.fed = getString(n.bGY);
        continue;
        this.fed = getString(n.bGY);
      }
    }
  }

  protected boolean anq()
  {
    return true;
  }

  protected boolean ant()
  {
    return false;
  }

  protected void aoA()
  {
  }

  public boolean aoB()
  {
    return false;
  }

  protected void aoC()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "cancelforceScene");
    aoL();
    finish();
  }

  public final Bundle aoJ()
  {
    return this.fea;
  }

  public final String aoK()
  {
    if (this.fea == null)
      return "";
    PayInfo localPayInfo = (PayInfo)this.fea.getParcelable("key_pay_info");
    if (localPayInfo != null)
      return localPayInfo.faP;
    return "";
  }

  public final void aoL()
  {
    if (this.dID != null)
    {
      this.dID.dismiss();
      this.dID = null;
    }
    Iterator localIterator1 = this.fee.iterator();
    while (localIterator1.hasNext())
    {
      com.tencent.mm.n.x localx2 = (com.tencent.mm.n.x)localIterator1.next();
      be.uA().c(localx2);
    }
    Iterator localIterator2 = this.fef.iterator();
    while (localIterator2.hasNext())
    {
      com.tencent.mm.n.x localx1 = (com.tencent.mm.n.x)localIterator2.next();
      be.uA().c(localx1);
    }
    this.fee.clear();
    this.fef.clear();
  }

  protected final void aoM()
  {
    PayInfo localPayInfo = (PayInfo)this.fea.getParcelable("key_pay_info");
    if (localPayInfo == null)
      localPayInfo = (PayInfo)getIntent().getParcelableExtra("key_pay_info");
    if ((localPayInfo != null) && (!cj.hX(localPayInfo.dnL)))
    {
      be.uA().d(new com.tencent.mm.plugin.wallet.pay.model.a(localPayInfo.dnL, localPayInfo.faP));
      localPayInfo.dnL = null;
    }
  }

  public final void b(com.tencent.mm.n.x paramx, boolean paramBoolean)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "isShowProgress " + paramBoolean);
    this.fef.add(paramx);
    if ((paramBoolean) && ((this.dID == null) || ((this.dID != null) && (!this.dID.isShowing()))))
    {
      if (this.dID != null)
        this.dID.dismiss();
      this.dID = com.tencent.mm.plugin.wallet.e.b.a(aal(), anq(), new aa(this));
    }
    be.uA().d(paramx);
  }

  public boolean c(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    return true;
  }

  protected final void gI(int paramInt)
  {
    if (!Vf())
    {
      getContentView().setVisibility(paramInt);
      if (paramInt == 0)
      {
        aFe();
        return;
      }
      aFd();
      return;
    }
    getContentView().setVisibility(0);
    aFe();
  }

  public final void k(com.tencent.mm.n.x paramx)
  {
    a(paramx, true);
  }

  public final void l(com.tencent.mm.n.x paramx)
  {
    b(paramx, true);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    gI(8);
    be.uA().a(385, this);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "current process:" + getIntent().getIntExtra("process_id", 0));
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "proc " + com.tencent.mm.plugin.wallet.b.h.m(this));
    this.fea = com.tencent.mm.plugin.wallet.b.h.l(this);
    if (this.fea == null)
      this.fea = new Bundle();
    if ((Vi()) && (!com.tencent.mm.plugin.wallet.b.h.k(this)))
    {
      Intent localIntent = new Intent();
      localIntent.addFlags(67108864);
      com.tencent.mm.ak.a.b(this, "mall", ".ui.MallIndexUI", localIntent);
      finish();
      return;
    }
    if (getLayoutId() > 0)
      com.tencent.mm.plugin.wallet.e.b.b(this);
    if (ant())
    {
      a(new ab(this));
      return;
    }
    a(new ac(this));
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return super.onCreateDialog(paramInt);
    case 1:
    }
    return com.tencent.mm.ui.base.h.a(this, this.fed, null, new v(this), new w(this));
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.uA().b(385, this);
    aoL();
    if (aoB())
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletBaseUI", "clean wallet cache");
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (ant()))
    {
      anc();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    if (com.tencent.mm.plugin.wallet.e.a.aoN())
    {
      com.tencent.mm.plugin.wallet.c.b localb = new com.tencent.mm.plugin.wallet.c.b();
      be.uA().d(localb);
    }
    if ((this.fef.isEmpty()) && (this.fee.isEmpty()))
      gI(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.WalletBaseUI
 * JD-Core Version:    0.6.2
 */