package com.tencent.mm.ui.voicetranstext;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.modelvoice.bc;
import com.tencent.mm.modelvoice.bg;
import com.tencent.mm.modelvoice.bh;
import com.tencent.mm.modelvoice.bi;
import com.tencent.mm.modelvoice.br;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.protocal.a.qu;
import com.tencent.mm.protocal.a.yi;
import com.tencent.mm.protocal.a.zk;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.ci;
import com.tencent.mm.ui.MMActivity;

public class VoiceTransTextUI extends MMActivity
  implements View.OnClickListener, com.tencent.mm.n.m
{
  private final String TAG = "MicroMsg.VoiceTransTextUI";
  private int dC;
  private long dWX = 0L;
  private long ehW;
  private Button fcA = null;
  private ScrollView gOg = null;
  private boolean gOl = false;
  private boolean gOm = false;
  private View.OnTouchListener huA;
  private View.OnClickListener huB = new e(this);
  private ClipboardManager huC;
  private View.OnLongClickListener huD = new f(this);
  private View hug = null;
  private View huh = null;
  private View hui = null;
  private LinearLayout huj = null;
  private TextView huk = null;
  private a hul;
  private c hum;
  private b hun;
  private volatile boolean huo = false;
  private ay hup;
  private int huq = 6;
  private boolean hur = false;
  private boolean hus = false;
  private bh hut;
  private ci huu;
  private ak huv;
  private com.tencent.mm.modelvoice.b huw;
  private g hux;
  private int huy;
  private int huz;
  private Handler mHandler = new l(this);
  private int mLastY;

  private int AH()
  {
    if (this.hut == null)
      return -1;
    return this.hut.AH();
  }

  private void a(p paramp)
  {
    aPu();
    switch (o.huJ[paramp.ordinal()])
    {
    default:
      return;
    case 1:
      aa.i("MicroMsg.VoiceTransTextUI", "net check");
      if (AH() > 0)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(AH());
        aa.d("MicroMsg.VoiceTransTextUI", "has msg svr id: %d", arrayOfObject2);
      }
      for (this.hul = new a(aPv(), vR(), aPw().getFormat(), AH()); ; this.hul = new a(aPv(), vR()))
      {
        be.uA().d(this.hul);
        be.uA().a(this.hul.getType(), this);
        if (this.hux != null)
          break;
        if (this.hux == null)
          this.hux = new j(this);
        com.tencent.mm.sdk.b.a.ayH().a("NotifyCanPullVoiceTransRes", this.hux);
        return;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(AH());
        aa.d("MicroMsg.VoiceTransTextUI", "not existex msg svr id: %d", arrayOfObject1);
      }
    case 2:
      aa.i("MicroMsg.VoiceTransTextUI", "net upload");
      if (this.hul == null)
      {
        aa.d("MicroMsg.VoiceTransTextUI", "request upload must after check!");
        return;
      }
      if (aPw() == null)
      {
        aa.d("MicroMsg.VoiceTransTextUI", "can't get FileOperator!");
        return;
      }
      String str1 = aPv();
      yi localyi = this.hul.aPo();
      int i = aPw().getFormat();
      if (this.hut != null);
      for (String str2 = this.hut.getFileName(); ; str2 = this.huv.ot())
      {
        this.hum = new c(str1, localyi, i, str2);
        be.uA().d(this.hum);
        ac localac3 = be.uA();
        localac3.a(547, this);
        return;
      }
    case 3:
      aa.i("MicroMsg.VoiceTransTextUI", "net upload more");
      if (this.hum == null)
      {
        aa.d("MicroMsg.VoiceTransTextUI", "upload more need has upload netScene!");
        return;
      }
      this.hum = new c(this.hum);
      be.uA().d(this.hum);
      ac localac2 = be.uA();
      localac2.a(547, this);
      return;
    case 4:
    }
    this.hus = false;
    if (this.huo)
    {
      aa.i("MicroMsg.VoiceTransTextUI", "pulling so pass");
      return;
    }
    aa.i("MicroMsg.VoiceTransTextUI", "net get");
    if (this.hul == null)
    {
      aa.d("MicroMsg.VoiceTransTextUI", "request get must after check!");
      return;
    }
    this.huo = true;
    this.hun = new b(aPv());
    be.uA().d(this.hun);
    ac localac1 = be.uA();
    localac1.a(548, this);
  }

  private void a(q paramq, String paramString)
  {
    switch (o.huK[paramq.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      if ((paramq != q.huQ) && (paramq != q.huS))
        break label229;
      this.gOg.setOnTouchListener(this.huA);
      this.hug.setOnClickListener(this.huB);
      return;
      if (com.tencent.mm.sdk.platformtools.cj.hX(paramString))
      {
        paramq = q.huS;
        paramString = null;
        break;
      }
      this.huj.setVisibility(0);
      this.huh.setVisibility(8);
      this.fcA.setVisibility(4);
      this.hui.setVisibility(8);
      this.huk.setText(paramString);
      eC(true);
      continue;
      this.huj.setVisibility(0);
      this.huh.setVisibility(0);
      this.fcA.setVisibility(0);
      if (paramString != null)
      {
        this.huk.setText(paramString);
        eC(false);
        continue;
        this.huj.setVisibility(8);
        this.huh.setVisibility(8);
        this.fcA.setHeight(0);
        this.fcA.setVisibility(8);
        this.hui.setVisibility(0);
      }
    }
    label229: this.gOg.setOnTouchListener(null);
    this.hug.setOnClickListener(null);
  }

  private void aPu()
  {
    aa.d("MicroMsg.VoiceTransTextUI", "cancel all net");
    if (this.hul != null)
    {
      be.uA().c(this.hul);
      be.uA().b(this.hul.getType(), this);
    }
    if (this.hum != null)
    {
      be.uA().c(this.hum);
      ac localac2 = be.uA();
      localac2.b(547, this);
    }
    if (this.hun != null)
    {
      be.uA().c(this.hun);
      ac localac1 = be.uA();
      localac1.b(548, this);
    }
  }

  private String aPv()
  {
    if (this.hut != null)
      return this.hut.EB();
    return this.huv.aCl() + this.huv.Bo() + "T" + this.huv.DL();
  }

  private com.tencent.mm.modelvoice.b aPw()
  {
    if (this.huw == null)
    {
      if (this.hut == null)
        break label33;
      this.huw = bi.hq(this.hut.getFileName());
    }
    while (true)
    {
      return this.huw;
      label33: if (this.huv != null)
        this.huw = bi.hq(this.huv.ot());
      else
        aa.d("MicroMsg.VoiceTransTextUI", "error why get fileOperator, already has transContent. ");
    }
  }

  private void eC(boolean paramBoolean)
  {
    if ((this.gOg == null) || (this.huj == null))
      return;
    this.mHandler.postDelayed(new m(this, paramBoolean), 5L);
  }

  private int vR()
  {
    if (this.hut != null)
      return this.hut.vR();
    return bg.hb(this.huv.ot());
  }

  private void yc(String paramString)
  {
    this.hur = true;
    if (!com.tencent.mm.sdk.platformtools.cj.hX(paramString))
    {
      com.tencent.mm.storage.cj localcj = bc.Es();
      ci localci = new ci();
      localci.bT(this.ehW);
      localci.vH(aPv());
      localci.vI(paramString);
      localcj.a(localci);
    }
    a(q.huQ, paramString);
  }

  protected final void FR()
  {
    mn(2131167430);
    this.fcA.setOnClickListener(this);
    if ((this.huu != null) && (!com.tencent.mm.sdk.platformtools.cj.hX(this.huu.aDq())))
    {
      a(q.huQ, this.huu.aDq());
      if ((this.gOg != null) && (this.huj != null));
    }
    for (int i = 1; ; i = 0)
    {
      if (i == 0)
        break label97;
      return;
      this.mHandler.postDelayed(new n(this), 5L);
      break;
    }
    label97: a(q.huR, null);
    a(p.huL);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      switch (paramx.getType())
      {
      default:
      case 546:
      case 547:
      case 548:
      }
      int i;
      do
      {
        do
        {
          return;
          if (this.hul.getState() == a.hua)
          {
            aa.i("MicroMsg.VoiceTransTextUI", "check result: done");
            boolean bool2 = this.hul.aPr();
            String str3 = null;
            if (bool2)
              str3 = this.hul.aPn().fZG;
            yc(str3);
            return;
          }
          if (this.hul.getState() == a.htZ)
          {
            if ((this.hul.aPn() != null) && (com.tencent.mm.sdk.platformtools.cj.hX(this.hul.aPn().fZG)))
              a(q.huR, this.hul.aPn().fZG);
            aa.i("MicroMsg.VoiceTransTextUI", "check result: processing");
            a(p.huO);
            return;
          }
          if (this.hul.getState() == a.htY)
          {
            aa.i("MicroMsg.VoiceTransTextUI", "check result: not exist");
            a(p.huM);
            return;
          }
        }
        while (this.hul.aPp() == null);
        this.huq = this.hul.aPp().fTi;
        return;
        if (this.hum.aPt())
        {
          aa.i("MicroMsg.VoiceTransTextUI", "succeed upload");
          a(p.huO);
          return;
        }
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(this.hum.aPo().fEd);
        arrayOfObject3[1] = Integer.valueOf(this.hum.aPo().fAU);
        aa.e("MicroMsg.VoiceTransTextUI", "start upload more: start:%d, len:%d", arrayOfObject3);
        a(p.huN);
        return;
        this.huq = this.hun.getInterval();
        this.huo = false;
        if ((!this.hun.isComplete()) && (this.hun.aPr()))
        {
          String str2 = this.hun.aPn().fZG;
          a(q.huR, str2);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.hun.aPn().fZG;
          aa.e("MicroMsg.VoiceTransTextUI", "result valid:%s", arrayOfObject2);
        }
        while (this.hun.isComplete())
        {
          aa.i("MicroMsg.VoiceTransTextUI", "succeed get");
          boolean bool1 = this.hun.aPr();
          String str1 = null;
          if (bool1)
            str1 = this.hun.aPn().fZG;
          yc(str1);
          return;
          if (!this.hun.aPr())
            aa.d("MicroMsg.VoiceTransTextUI", "result not valid");
        }
        if (this.hus)
        {
          aa.i("MicroMsg.VoiceTransTextUI", "do get now! --- Notify new result");
          a(p.huO);
          return;
        }
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.huq);
        aa.d("MicroMsg.VoiceTransTextUI", "do get again after:%ds", arrayOfObject1);
        i = this.huq;
      }
      while (this.hur);
      if (this.hup == null)
        this.hup = new ay(new i(this, i), false);
      this.hup.bO(i * 1000);
      return;
    }
    this.hur = true;
    a(q.huS, null);
  }

  protected final int getLayoutId()
  {
    return 2130903824;
  }

  public void onClick(View paramView)
  {
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.dC = ViewConfiguration.get(aal()).getScaledTouchSlop();
    this.huC = ((ClipboardManager)getSystemService("clipboard"));
    this.hug = findViewById(2131364090);
    this.huh = findViewById(2131364095);
    this.hui = findViewById(2131364097);
    this.huk = ((TextView)findViewById(2131364094));
    this.fcA = ((Button)findViewById(2131364092));
    this.huj = ((LinearLayout)findViewById(2131364091));
    this.gOg = ((ScrollView)findViewById(2131362329));
    this.huA = new h(this);
    this.huk.setOnLongClickListener(this.huD);
    this.huk.setOnClickListener(this.huB);
    this.ehW = getIntent().getExtras().getLong("voice_trans_text_msg_id", -1L);
    int i;
    if (this.ehW < 0L)
      i = 0;
    while (true)
      if (i == 0)
      {
        aa.d("MicroMsg.VoiceTransTextUI", "error invalid msgId");
        return;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Long.valueOf(this.ehW);
        aa.d("MicroMsg.VoiceTransTextUI", "msg Id:%d", arrayOfObject);
        this.huu = bc.Es().bZ(this.ehW);
        if ((this.huu != null) && (!com.tencent.mm.sdk.platformtools.cj.hX(this.huu.aDq())))
        {
          aa.i("MicroMsg.VoiceTransTextUI", "get voiceTransText");
          i = 1;
        }
        else
        {
          String str = getIntent().getExtras().getString("voice_trans_text_img_path");
          if (com.tencent.mm.sdk.platformtools.cj.hX(str))
          {
            i = 0;
          }
          else
          {
            this.hut = bc.Er().hB(str);
            if (this.hut != null)
            {
              aa.i("MicroMsg.VoiceTransTextUI", "get voiceInfo");
              i = 1;
            }
            else
            {
              this.huv = be.uz().sw().bU(this.ehW);
              if (this.huv != null)
              {
                aa.i("MicroMsg.VoiceTransTextUI", "get MsgInfo");
                i = 1;
              }
            }
          }
        }
      }
      else
      {
        ActionBar localActionBar = aW();
        if (localActionBar != null)
          localActionBar.hide();
        FR();
        return;
        i = 0;
      }
  }

  protected void onDestroy()
  {
    aPu();
    if (this.hup != null)
      this.hup.azn();
    if (this.hux != null)
    {
      com.tencent.mm.sdk.b.a.ayH().b("NotifyCanPullVoiceTransRes", this.hux);
      this.hux = null;
    }
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.VoiceTransTextUI
 * JD-Core Version:    0.6.2
 */