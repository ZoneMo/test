package com.tencent.mm.pluginsdk.ui.preference;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ah.f;
import com.tencent.mm.ah.j;
import com.tencent.mm.an.a;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ab;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ce;
import com.tencent.mm.storage.cf;
import com.tencent.mm.storage.ch;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.preference.Preference;
import junit.framework.Assert;

public class NormalUserHeaderPreference extends Preference
  implements p, com.tencent.mm.sdk.e.ar, ch
{
  private MMActivity bLH;
  private com.tencent.mm.storage.i cQI;
  private int elN;
  private ImageView elp;
  private ImageView frR;
  private TextView frS;
  private TextView frT;
  private TextView frU;
  private TextView frV;
  private TextView frW;
  private Button frX;
  private Button frY;
  private TextView frZ;
  private String frx;
  private ImageView fsa;
  private CheckBox fsb;
  private ImageView fsc;
  private ImageView fsd;
  private Button fse;
  private FMessageListView fsf;
  private boolean fsg = false;
  private boolean fsh;
  private int fsi = 0;
  private boolean fsj = false;
  private boolean fsk = false;
  private boolean fsl = false;
  private boolean fsm = false;
  private boolean fsn = false;
  private boolean fso = false;
  private boolean fsp = false;
  private boolean fsq = false;
  private boolean fsr = false;
  private String fss;
  private boolean fst = false;

  public NormalUserHeaderPreference(Context paramContext)
  {
    super(paramContext);
    this.bLH = ((MMActivity)paramContext);
    this.fsg = false;
  }

  public NormalUserHeaderPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.bLH = ((MMActivity)paramContext);
    this.fsg = false;
  }

  public NormalUserHeaderPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.bLH = ((MMActivity)paramContext);
    this.fsg = false;
  }

  private void FR()
  {
    if (!ati())
    {
      aa.w("MicroMsg.ContactInfoHeader", "initView : bindView = " + this.fsg + "contact = " + this.cQI);
      return;
    }
    if (this.fst)
    {
      this.frZ.setVisibility(0);
      this.frS.setText(com.tencent.mm.ao.b.e(this.bLH, cj.hW(this.cQI.rq()) + " ", (int)this.frS.getTextSize()));
      atj();
      this.fse.setVisibility(8);
      this.frT.setVisibility(8);
      this.fsf.setVisibility(8);
      this.frX.setVisibility(8);
      this.frY.setVisibility(8);
      this.fsb.setVisibility(8);
      return;
    }
    boolean bool1 = com.tencent.mm.storage.i.tC(this.cQI.getUsername());
    label275: Bitmap localBitmap;
    int m;
    if (bool1)
    {
      this.frS.setText("");
      if (com.tencent.mm.storage.i.tE(com.tencent.mm.model.v.th()).equals(this.cQI.getUsername()))
      {
        this.fse.setVisibility(0);
        this.fse.setOnClickListener(new q(this));
      }
      this.elp.setVisibility(0);
      this.fsl = true;
      if (this.cQI.rk() != 1)
        break label690;
      this.elp.setImageDrawable(a.k(this.bLH, com.tencent.mm.h.afe));
      if (this.cQI.rJ() != 0)
      {
        this.fsa.setVisibility(0);
        localBitmap = com.tencent.mm.sdk.platformtools.e.e(com.tencent.mm.model.ar.ub().cp(this.cQI.rJ()), 2.0F);
        this.fsa.setImageBitmap(localBitmap);
        if (localBitmap != null)
          break label748;
        m = 0;
        label331: this.fsi = m;
      }
      atj();
      this.frR.setOnClickListener(new r(this));
      if (!com.tencent.mm.storage.i.tA(this.cQI.getUsername()))
        break label758;
      this.frT.setText(getContext().getString(com.tencent.mm.n.bdR) + this.cQI.rs());
      label409: if (!w.cX(this.cQI.getUsername()))
        break label1064;
      this.frW.setVisibility(0);
      label430: atn();
      atm();
      ato();
      if (!cj.hX(this.fss))
        break label1076;
      this.frU.setVisibility(8);
    }
    while (true)
    {
      this.frX.setOnClickListener(new s(this));
      this.frY.setOnClickListener(new t(this));
      boolean bool2 = this.fsl;
      int i = 0;
      if (bool2)
        i = 0 + a.fromDPToPix(this.bLH, 17);
      int j = i + this.fsi;
      if (this.fsj)
        j += a.fromDPToPix(this.bLH, 27);
      if (this.fsk)
        j += a.fromDPToPix(this.bLH, 27);
      if (this.fsm)
        j += a.fromDPToPix(this.bLH, 30);
      int k = j + a.fromDPToPix(this.bLH, 65) + a.fromDPToPix(this.bLH, 50);
      DisplayMetrics localDisplayMetrics = this.bLH.getResources().getDisplayMetrics();
      this.frS.setMaxWidth(localDisplayMetrics.widthPixels - k);
      return;
      this.frS.setText(com.tencent.mm.ao.b.e(this.bLH, cj.hW(this.cQI.rq()) + " ", (int)this.frS.getTextSize()));
      break;
      label690: if (this.cQI.rk() == 2)
      {
        this.elp.setImageDrawable(a.k(this.bLH, com.tencent.mm.h.afd));
        break label275;
      }
      if (this.cQI.rk() != 0)
        break label275;
      this.elp.setVisibility(8);
      this.fsl = false;
      break label275;
      label748: m = localBitmap.getWidth();
      break label331;
      label758: if (com.tencent.mm.storage.i.ty(this.cQI.getUsername()))
      {
        this.frT.setText(getContext().getString(com.tencent.mm.n.bdX) + this.cQI.rs());
        break label409;
      }
      if (this.fsh)
      {
        if (this.cQI.rb())
        {
          atk();
          break label409;
        }
        if ((this.cQI.rE() == null) || (this.cQI.rE().equals("")))
        {
          this.frT.setText(com.tencent.mm.n.bdF);
          break label409;
        }
        this.frT.setText(this.cQI.rE());
        break label409;
      }
      if (bool1)
      {
        this.frT.setText((cj.hW(w.dj(this.cQI.rC())) + " " + cj.hW(this.cQI.rD())).trim());
        break label409;
      }
      if ((!com.tencent.mm.storage.i.tz(this.cQI.getUsername())) && (this.bLH.getIntent().getBooleanExtra("Contact_ShowUserName", true)))
      {
        if ((cj.hX(this.cQI.rp())) && ((com.tencent.mm.storage.i.tD(this.cQI.getUsername())) || (w.cs(this.cQI.getUsername()))))
        {
          this.frT.setVisibility(8);
          break label409;
        }
        if (this.cQI.rb())
        {
          atk();
          break label409;
        }
      }
      this.frT.setVisibility(8);
      break label409;
      label1064: this.frW.setVisibility(8);
      break label430;
      label1076: if ((!com.tencent.mm.model.v.cm(this.cQI.getUsername())) && (cj.hW(this.cQI.ru()).length() > 0))
        this.frT.setVisibility(8);
      this.frU.setVisibility(0);
      this.frU.setText(this.bLH.getString(com.tencent.mm.n.bhD) + this.fss);
    }
  }

  private boolean ati()
  {
    return (this.fsg) && (this.cQI != null);
  }

  private void atj()
  {
    Bitmap localBitmap = c.a(this.cQI.getUsername(), false, -1);
    if (localBitmap == null)
    {
      this.frR.setImageResource(com.tencent.mm.h.adI);
      return;
    }
    this.frR.setImageBitmap(localBitmap);
  }

  private void atk()
  {
    this.frT.setVisibility(0);
    if (!cj.hX(this.cQI.rp()))
    {
      this.frT.setText(getContext().getString(com.tencent.mm.n.bdT) + this.cQI.rp());
      return;
    }
    if ((!com.tencent.mm.storage.i.tD(this.cQI.getUsername())) && (!w.cs(this.cQI.getUsername())))
    {
      String str = cj.hW(this.cQI.rs());
      this.frT.setText(getContext().getString(com.tencent.mm.n.bdT) + str);
      return;
    }
    this.frT.setVisibility(8);
  }

  private void atm()
  {
    boolean bool1 = true;
    boolean bool4;
    int j;
    label77: boolean bool2;
    label138: label152: ImageView localImageView1;
    int i;
    if ((this.fsc != null) && (this.cQI.rb()) && (w.co(this.cQI.getUsername())))
    {
      if ((this.cQI.rh()) && ((0x8000 & com.tencent.mm.model.v.tq()) == 0))
      {
        bool4 = bool1;
        this.fsk = bool4;
        ImageView localImageView2 = this.fsc;
        if (!this.fsk)
          break label191;
        j = 0;
        localImageView2.setVisibility(j);
      }
    }
    else if ((this.fsd != null) && (this.cQI.rb()) && (w.co(this.cQI.getUsername())))
    {
      String str = this.cQI.getUsername();
      if (aq.apB() == null)
        break label198;
      bool2 = aq.apB().oG(str);
      if ((!bool2) || ((0x8000 & com.tencent.mm.model.v.tq()) != 0))
        break label203;
      this.fsj = bool1;
      localImageView1 = this.fsd;
      boolean bool3 = this.fsj;
      i = 0;
      if (!bool3)
        break label208;
    }
    while (true)
    {
      localImageView1.setVisibility(i);
      return;
      bool4 = false;
      break;
      label191: j = 8;
      break label77;
      label198: bool2 = false;
      break label138;
      label203: bool1 = false;
      break label152;
      label208: i = 8;
    }
  }

  private void atn()
  {
    if ((com.tencent.mm.model.v.cm(this.cQI.getUsername())) || (cj.hW(this.cQI.ru()).length() <= 0))
    {
      this.frV.setVisibility(8);
      this.frS.setText(com.tencent.mm.ao.b.e(this.bLH, cj.hW(this.cQI.rq()) + " ", (int)this.frS.getTextSize()));
      if (this.fsp)
      {
        this.frX.setVisibility(0);
        if ((!this.fsq) || (!this.cQI.rb()))
          break label313;
        this.frY.setVisibility(0);
      }
    }
    while (true)
    {
      if (com.tencent.mm.storage.i.tC(this.cQI.getUsername()))
        this.frS.setText("");
      return;
      if (this.fsn)
      {
        this.frX.setVisibility(0);
        break;
      }
      this.frX.setVisibility(8);
      break;
      this.frS.setText(com.tencent.mm.ao.b.e(this.bLH, cj.hW(this.cQI.ru()) + " ", (int)this.frS.getTextSize()));
      this.frV.setVisibility(0);
      TextView localTextView = this.frV;
      localTextView.setText(com.tencent.mm.ao.b.e(this.bLH, getContext().getString(com.tencent.mm.n.bie) + this.cQI.rq(), (int)this.frV.getTextSize()));
      this.frX.setVisibility(8);
      break;
      label313: if (this.fso)
        this.frY.setVisibility(0);
      else
        this.frY.setVisibility(8);
    }
  }

  private void ato()
  {
    this.fsb.setClickable(false);
    if ((w.co(this.cQI.getUsername())) && (this.cQI.rb()) && (!com.tencent.mm.model.v.cm(this.cQI.getUsername())))
    {
      this.fsb.setVisibility(0);
      if (this.cQI.re())
      {
        this.fsb.setChecked(true);
        this.fsm = true;
        return;
      }
      this.fsb.setChecked(false);
      this.fsb.setVisibility(8);
      this.fsm = false;
      return;
    }
    this.fsm = false;
    this.fsb.setVisibility(8);
  }

  public final void I(String paramString, boolean paramBoolean)
  {
    if ((paramString != null) && (paramString.equals(this.cQI.getUsername())))
      this.fsn = paramBoolean;
  }

  public final void J(String paramString, boolean paramBoolean)
  {
    if ((paramString != null) && (paramString.equals(this.cQI.getUsername())))
      this.fso = paramBoolean;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = paramao;
    arrayOfObject1[2] = paramObject;
    aa.e("MicroMsg.ContactInfoHeader", "onNotifyChange event:%d stg:%s obj:%s", arrayOfObject1);
    if ((paramObject == null) || (!(paramObject instanceof String)))
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      arrayOfObject2[1] = paramao;
      arrayOfObject2[2] = paramObject;
      aa.b("MicroMsg.ContactInfoHeader", "onNotifyChange obj not String event:%d stg:%s obj:%s", arrayOfObject2);
    }
    String str;
    do
    {
      return;
      str = (String)paramObject;
      aa.d("MicroMsg.ContactInfoHeader", "onNotifyChange username = " + str + ", contact = " + this.cQI);
      if (!ati())
      {
        aa.e("MicroMsg.ContactInfoHeader", "initView : bindView = " + this.fsg + "contact = " + this.cQI);
        return;
      }
    }
    while ((cj.hW(str).length() <= 0) || (this.cQI == null) || (!this.cQI.getUsername().equals(str)));
    this.cQI = be.uz().su().tO(str);
    an.i(new u(this));
  }

  public final void a(ce paramce)
  {
    new Handler().post(new v(this, paramce));
  }

  public final void a(com.tencent.mm.storage.i parami, int paramInt, String paramString)
  {
    int i = 1;
    onDetach();
    be.uz().su().a(this);
    be.uz().sv().a(this);
    af.vJ().d(this);
    this.cQI = parami;
    this.elN = paramInt;
    this.frx = paramString;
    this.fsh = this.bLH.getIntent().getBooleanExtra("Contact_IsLBSFriend", false);
    this.fsr = this.bLH.getIntent().getBooleanExtra("Contact_ShowFMessageList", false);
    this.fsn = this.bLH.getIntent().getBooleanExtra("Contact_NeedShowChangeRemarkButton", false);
    this.fso = this.bLH.getIntent().getBooleanExtra("Contact_NeedShowChangeSnsPreButton", false);
    this.fsp = this.bLH.getIntent().getBooleanExtra("Contact_AlwaysShowRemarkBtn", false);
    this.fsq = this.bLH.getIntent().getBooleanExtra("Contact_AlwaysShowSnsPreBtn", false);
    this.fss = this.bLH.getIntent().getStringExtra("Contact_RoomNickname");
    if (parami.field_deleteFlag == i)
    {
      int k = i;
      this.fst = k;
      if (cj.hW(parami.getUsername()).length() <= 0)
        break label225;
    }
    while (true)
    {
      Assert.assertTrue("initView: contact username is null", i);
      FR();
      return;
      int m = 0;
      break;
      label225: int j = 0;
    }
  }

  public final void atl()
  {
    com.tencent.mm.storage.i locali = be.uz().su().tO(this.cQI.getUsername());
    if ((locali != null) && (locali.rj() != 0) && (locali.getUsername().equals(this.cQI.getUsername())))
      this.cQI = locali;
    if (!this.cQI.rb())
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClassName(getContext(), "com.tencent.mm.ui.contact.ModRemarkNameUI");
      localIntent1.putExtra("Contact_Scene", this.elN);
      localIntent1.putExtra("Contact_mode_name_type", 0);
      localIntent1.putExtra("Contact_ModStrangerRemark", true);
      localIntent1.putExtra("Contact_User", this.cQI.getUsername());
      localIntent1.putExtra("Contact_Nick", this.cQI.kn());
      localIntent1.putExtra("Contact_RemarkName", this.cQI.ru());
      ((Activity)getContext()).startActivity(localIntent1);
      return;
    }
    Intent localIntent2 = new Intent();
    localIntent2.setClassName(getContext(), "com.tencent.mm.ui.contact.ContactRemarkInfoModUI");
    localIntent2.putExtra("Contact_Scene", this.elN);
    localIntent2.putExtra("Contact_User", this.cQI.getUsername());
    ((Activity)getContext()).startActivity(localIntent2);
  }

  public final void ei(String paramString)
  {
    if (!ati())
      aa.e("MicroMsg.ContactInfoHeader", "initView : bindView = " + this.fsg + "contact = " + this.cQI);
    do
    {
      return;
      if (cj.hW(paramString).length() <= 0)
      {
        aa.e("MicroMsg.ContactInfoHeader", "notifyChanged: user = " + paramString);
        return;
      }
    }
    while (!paramString.equals(this.cQI.getUsername()));
    FR();
  }

  public final void onBindView(View paramView)
  {
    aa.d("MicroMsg.ContactInfoHeader", "onBindView");
    this.frS = ((TextView)paramView.findViewById(com.tencent.mm.i.aqi));
    this.frT = ((TextView)paramView.findViewById(com.tencent.mm.i.aqq));
    this.frZ = ((TextView)paramView.findViewById(com.tencent.mm.i.aqc));
    this.frU = ((TextView)paramView.findViewById(com.tencent.mm.i.aqe));
    this.frV = ((TextView)paramView.findViewById(com.tencent.mm.i.aqj));
    this.frX = ((Button)paramView.findViewById(com.tencent.mm.i.aqk));
    this.frY = ((Button)paramView.findViewById(com.tencent.mm.i.aqo));
    this.frW = ((TextView)paramView.findViewById(com.tencent.mm.i.aqh));
    this.fse = ((Button)paramView.findViewById(com.tencent.mm.i.aqf));
    this.fsf = ((FMessageListView)paramView.findViewById(com.tencent.mm.i.aqg));
    g localg = new g();
    localg.bNl = this.cQI.getUsername();
    localg.bLN = this.elN;
    localg.frx = this.frx;
    localg.type = 0;
    if (this.elN == 18)
    {
      localg.type = 1;
      this.fsf.a(localg);
      this.frR = ((ImageView)paramView.findViewById(com.tencent.mm.i.aqd));
      this.elp = ((ImageView)paramView.findViewById(com.tencent.mm.i.aql));
      this.fsa = ((ImageView)paramView.findViewById(com.tencent.mm.i.aqr));
      this.fsb = ((CheckBox)paramView.findViewById(com.tencent.mm.i.aqp));
      this.fsc = ((ImageView)paramView.findViewById(com.tencent.mm.i.aqn));
      this.fsd = ((ImageView)paramView.findViewById(com.tencent.mm.i.aqm));
      this.fsg = true;
      FR();
      if (this.fsr)
        break label351;
      aa.d("MicroMsg.ContactInfoHeader", "initAddContent, showFMessageList false");
      this.fsf.setVisibility(8);
    }
    label599: 
    while (true)
    {
      super.onBindView(paramView);
      return;
      if (!bv.cu(this.elN))
        break;
      localg.type = 2;
      break;
      label351: if ((this.frx == null) || (this.frx.length() == 0))
      {
        aa.d("MicroMsg.ContactInfoHeader", "initAddContent, FMessageListView gone, addScene = " + this.elN + ", verifyTicket = " + this.frx);
        this.fsf.setVisibility(8);
      }
      else
      {
        aa.d("MicroMsg.ContactInfoHeader", "initAddContent, scene = " + this.elN);
        n[] arrayOfn;
        if (this.elN == 18)
        {
          aa.d("MicroMsg.ContactInfoHeader", "initAddContent, scene is lbs");
          com.tencent.mm.ah.g[] arrayOfg = com.tencent.mm.ah.k.Dz().gL(this.cQI.getUsername());
          arrayOfn = n.a(this.bLH, arrayOfg);
        }
        while (true)
        {
          if ((arrayOfn != null) && (arrayOfn.length != 0))
            break label599;
          aa.e("MicroMsg.ContactInfoHeader", "initAddContent, providerList is null");
          this.fsf.setVisibility(8);
          break;
          if (bv.cu(this.elN))
          {
            aa.d("MicroMsg.ContactInfoHeader", "initAddContent, scene is shake");
            com.tencent.mm.ah.i[] arrayOfi = com.tencent.mm.ah.k.DA().gP(this.cQI.getUsername());
            arrayOfn = n.a(this.bLH, arrayOfi);
          }
          else
          {
            aa.d("MicroMsg.ContactInfoHeader", "initAddContent, scene is other");
            com.tencent.mm.ah.e[] arrayOfe = com.tencent.mm.ah.k.Dx().gG(this.cQI.getUsername());
            arrayOfn = n.a(this.bLH, arrayOfe);
          }
        }
        aa.d("MicroMsg.ContactInfoHeader", "initAddContent, providerList size = " + arrayOfn.length);
        int i = arrayOfn.length;
        for (int j = 0; j < i; j++)
        {
          n localn2 = arrayOfn[j];
          if (localn2 != null)
            aa.d("MicroMsg.ContactInfoHeader", "initAddContent, username = " + localn2.username + ", nickname = " + localn2.crH + ", digest = " + localn2.chj + ", addScene = " + localn2.elN);
        }
        this.fsf.setVisibility(0);
        int k = arrayOfn.length;
        for (int m = 0; m < k; m++)
        {
          n localn1 = arrayOfn[m];
          this.fsf.a(localn1);
        }
      }
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    if (this.fsf != null)
      this.fsf.detach();
    return super.onCreateView(paramViewGroup);
  }

  public final void onDetach()
  {
    if (this.fsf != null)
      this.fsf.detach();
    if (this.fsr)
      com.tencent.mm.ah.k.Dy().gA(this.cQI.getUsername());
    this.bLH.getIntent().putExtra("Contact_NeedShowChangeRemarkButton", this.fsn);
    this.bLH.getIntent().putExtra("Contact_NeedShowChangeSnsPreButton", this.fso);
    be.uz().su().b(this);
    af.vJ().e(this);
    be.uz().sv().b(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.NormalUserHeaderPreference
 * JD-Core Version:    0.6.2
 */