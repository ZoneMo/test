package com.tencent.mm.plugin.scanner.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.model.al;
import com.tencent.mm.model.am;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.scanner.a.g;
import com.tencent.mm.protocal.a.jz;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.q;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class ProductUI extends MMPreference
  implements com.tencent.mm.n.m, com.tencent.mm.platformtools.w
{
  private long bMS;
  protected com.tencent.mm.ui.base.preference.n cIG;
  protected ProgressDialog cIr = null;
  private TextView cXK;
  private ImageView ecQ;
  private TextView ecR;
  private TextView ecS;
  private com.tencent.mm.plugin.scanner.b.n ecT;
  private int ecU = 0;
  private boolean ecV = false;
  private ah ecW;
  private boolean ecX = false;
  private HashMap ecY;
  private t ecZ;
  private v eda = new ae(this);
  private List edb;
  private boolean edc = true;
  private am edd;

  private void a(com.tencent.mm.plugin.scanner.b.n paramn, boolean paramBoolean)
  {
    if (paramn == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "refreshViewByProduct(), pd == null");
      finish();
      return;
    }
    this.ecU = this.ecT.field_functionType;
    if (paramn.field_xmlType == 3)
    {
      this.cXK.setText(paramn.field_title);
      this.ecR.setText(paramn.field_subtitle);
      this.ecS.setText(paramn.field_source);
      if (paramn.field_type == 1)
      {
        this.ecQ = ((ImageView)findViewById(com.tencent.mm.i.aEt));
        if (!cj.hX(paramn.field_playurl))
        {
          ImageView localImageView = (ImageView)findViewById(com.tencent.mm.i.aEs);
          localImageView.setVisibility(0);
          localImageView.setOnClickListener(new z(this, paramn));
        }
        a(0, com.tencent.mm.h.afQ, new aa(this));
        if ((!cj.hX(paramn.field_productid)) && (!this.ecV))
        {
          be.uA().d(new com.tencent.mm.plugin.scanner.a.c(paramn.field_productid, getIntent().getIntExtra("key_ProductUI_getProductInfoScene", 0)));
          this.ecV = true;
          if (paramBoolean)
            com.tencent.mm.sdk.platformtools.an.i(new ab(this, paramn));
        }
      }
    }
    while (true)
    {
      this.ecQ.setVisibility(0);
      a(new ac(this));
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.scanner.ProductUI", "start postToMainThread initBodyView");
      com.tencent.mm.sdk.platformtools.an.i(new ad(this, paramn));
      return;
      this.ecQ = ((ImageView)findViewById(com.tencent.mm.i.aEu));
      break;
      if (paramn.field_xmlType == 4)
      {
        this.ecQ = ((ImageView)findViewById(com.tencent.mm.i.aEu));
        this.ecQ.setImageResource(com.tencent.mm.h.ahW);
        this.cXK.setText(com.tencent.mm.n.bxl);
        ListView localListView = (ListView)findViewById(16908298);
        ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)localListView.getLayoutParams();
        localMarginLayoutParams.topMargin = com.tencent.mm.sdk.platformtools.e.a(this, 10.0F);
        localListView.setLayoutParams(localMarginLayoutParams);
      }
    }
  }

  private void aap()
  {
    this.bMS = getIntent().getLongExtra("key_ProductUI_chatting_msgId", 0L);
    if ((this.bMS > 0L) && (be.se()))
    {
      ak localak = be.uz().sw().bU(this.bMS);
      if ((localak != null) && (localak.Bo() > 0L))
      {
        localak.uN(this.ecW.Fr());
        be.uz().sw().a(this.bMS, localak);
      }
    }
  }

  private void aaq()
  {
    if ((this.ecT == null) || (this.ecT.egv == null) || (this.ecT.egv.size() == 0) || (this.cIG == null))
      return;
    for (int i = 0; i < this.ecT.egv.size(); i++)
    {
      com.tencent.mm.plugin.scanner.a.a locala = (com.tencent.mm.plugin.scanner.a.a)this.ecT.egv.get(i);
      if ((locala != null) && (locala.cxN != null) && (locala.cxN.size() != 0))
      {
        int j = 0;
        if (j < locala.cxN.size())
        {
          com.tencent.mm.plugin.scanner.a.b localb = (com.tencent.mm.plugin.scanner.a.b)locala.cxN.get(j);
          MusicPreference localMusicPreference;
          if (localb.type == 5)
          {
            String str = j + i * 100;
            localMusicPreference = (MusicPreference)this.cIG.wn(str);
            if (localMusicPreference != null)
            {
              Object[] arrayOfObject = new Object[2];
              arrayOfObject[0] = localb.eaU;
              arrayOfObject[1] = str;
              if (mB(String.format("%s_cd_%s", arrayOfObject)))
                break label213;
              localMusicPreference.be(false);
            }
          }
          while (true)
          {
            j++;
            break;
            label213: localMusicPreference.be(true);
          }
        }
      }
    }
    this.cIG.notifyDataSetChanged();
  }

  private static boolean mB(String paramString)
  {
    return (be.nS() != null) && (be.nS().op() != null) && (be.nS().oo() == 5) && (paramString.equals(be.nS().op()));
  }

  protected final void FR()
  {
    mn(com.tencent.mm.n.bxs);
    this.cIG = aIj();
    this.cXK = ((TextView)findViewById(com.tencent.mm.i.aEz));
    this.ecR = ((TextView)findViewById(com.tencent.mm.i.aEy));
    this.ecS = ((TextView)findViewById(com.tencent.mm.i.aEx));
    String str1 = getIntent().getStringExtra("key_Product_ID");
    if (!cj.hX(str1))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "productId = [%s]", new Object[] { str1 });
      this.ecT = com.tencent.mm.plugin.scanner.b.ZB().mn(str1);
      if (this.ecT == null)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "initView(), product == null");
        finish();
      }
    }
    else
    {
      this.ecT = g.O(getIntent().getStringExtra("key_Product_xml"), getIntent().getIntExtra("key_Product_funcType", 0));
      if (this.ecT == null)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "initView(), product == null");
        finish();
        return;
      }
      if (((this.ecT.egv == null) || (this.ecT.egv.size() <= 0) || (((com.tencent.mm.plugin.scanner.a.a)this.ecT.egv.get(0)).cxN == null) || (((com.tencent.mm.plugin.scanner.a.a)this.ecT.egv.get(0)).cxN.size() <= 0)) && (!cj.hX(this.ecT.field_productid)))
      {
        String str2 = this.ecT.field_productid;
        com.tencent.mm.plugin.scanner.b.n localn = com.tencent.mm.plugin.scanner.b.ZB().mn(str2);
        if (localn != null)
          this.ecT = localn;
      }
    }
    this.ecY = new HashMap();
    this.ecZ = new w(this);
    a(this.ecT, getIntent().getBooleanExtra("key_ProductUI_addToDB", true));
  }

  public final int Gc()
  {
    return q.bJT;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx == null)
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.scanner.ProductUI", "scene == null");
    do
    {
      com.tencent.mm.plugin.scanner.b.n localn;
      do
      {
        jz localjz;
        do
        {
          return;
          if (paramx.getType() != 435)
            break;
          if ((paramInt1 != 0) || (paramInt2 != 0))
          {
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = Integer.valueOf(paramInt1);
            arrayOfObject1[1] = Integer.valueOf(paramInt2);
            com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.scanner.ProductUI", "onSceneEnd() errType = [%s], errCode = [%s]", arrayOfObject1);
            return;
          }
          if (this.ecT == null)
          {
            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.scanner.ProductUI", "onSceneEnd product == null");
            return;
          }
          localjz = ((com.tencent.mm.plugin.scanner.a.c)paramx).ZC();
          if (localjz == null)
          {
            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.scanner.ProductUI", "onSceneEnd productInfo == null");
            return;
          }
        }
        while (localjz.fLU == null);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.scanner.ProductUI", "onSceneEnd  productInfo.DescXML != null");
        localn = g.O(localjz.fLU, this.ecU);
      }
      while ((this.ecT == null) || (this.ecT.field_xml == null) || (localn == null) || (localn.field_xml == null) || (this.ecT.field_xml.equals(localn.field_xml)));
      try
      {
        com.tencent.mm.plugin.scanner.b.ZB().a(this.ecT.field_productid, this.ecT);
        this.ecT = localn;
        a(this.ecT, true);
        return;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localException.getMessage();
        com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.scanner.ProductUI", "error occur: insert product [%s]", arrayOfObject2);
        return;
      }
    }
    while (paramx.getType() != 106);
    sj localsj = ((aj)paramx).CB();
    if ((this.cIr != null) && (this.cIr.isShowing()))
      this.cIr.dismiss();
    if ((this.cIr != null) && (this.cIr.isShowing()))
      this.cIr.dismiss();
    String str = com.tencent.mm.platformtools.an.a(localsj.fEI);
    af.vJ().c(str, com.tencent.mm.platformtools.an.a(localsj.fzx));
    if (cj.hX(str))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "SearchContac user is null");
      return;
    }
    com.tencent.mm.storage.i locali = be.uz().su().tO(str);
    if ((locali != null) && (locali.rb()) && (locali.aAp()))
    {
      com.tencent.mm.p.a locala = com.tencent.mm.p.ab.ye().eG(str);
      if ((locala != null) && (locala.xD()))
      {
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("Chat_User", str);
        localIntent2.putExtra("finish_direct", true);
        com.tencent.mm.plugin.scanner.a.Tm().d(localIntent2, this);
        return;
      }
    }
    Intent localIntent1 = new Intent();
    com.tencent.mm.pluginsdk.ui.tools.c.a(localIntent1, localsj, 47);
    if ((locali != null) && (!locali.rb()))
      localIntent1.putExtra("Contact_IsLBSFriend", true);
    if ((0x8 & localsj.fNp) > 0)
      com.tencent.mm.plugin.d.c.m.dZN.j(10298, str + ",47");
    com.tencent.mm.plugin.scanner.a.Tm().c(localIntent1, this);
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = paramPreference.getKey();
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "onPreferenceTreeClick item: [%s]", arrayOfObject1);
    if ((this.ecT == null) || (this.ecT.egv == null))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "product == null || product.actionlist == null");
      return false;
    }
    com.tencent.mm.plugin.scanner.a.b localb;
    try
    {
      int i = Integer.valueOf(paramPreference.getKey()).intValue();
      int j = i / 100;
      int k = i % 100;
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Integer.valueOf(i);
      arrayOfObject3[1] = Integer.valueOf(j);
      arrayOfObject3[2] = Integer.valueOf(k);
      com.tencent.mm.sdk.platformtools.aa.f("MicroMsg.scanner.ProductUI", "keyId=[%s], ii=[%s], jj=[%s]", arrayOfObject3);
      if ((j < 0) || (j >= this.ecT.egv.size()))
      {
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(j);
        arrayOfObject4[1] = Integer.valueOf(this.ecT.egv.size());
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.scanner.ProductUI", "index out of bounds, ii=[%s], list Size=[%s]", arrayOfObject4);
        return false;
      }
      com.tencent.mm.plugin.scanner.a.a locala = (com.tencent.mm.plugin.scanner.a.a)this.ecT.egv.get(j);
      if (locala == null)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.scanner.ProductUI", "actionList == null");
        return false;
      }
      if ((k < 0) || (k >= locala.cxN.size()))
      {
        Object[] arrayOfObject5 = new Object[2];
        arrayOfObject5[0] = Integer.valueOf(k);
        arrayOfObject5[1] = Integer.valueOf(locala.cxN.size());
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.scanner.ProductUI", "index out of bounds, jj=[%s], actions Size=[%s]", arrayOfObject5);
        return false;
      }
      localb = (com.tencent.mm.plugin.scanner.a.b)locala.cxN.get(k);
      if (localb == null)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.scanner.ProductUI", "action == null");
        return false;
      }
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = Integer.valueOf(localb.type);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "action.type = [%s]", arrayOfObject6);
      if ((localb.type == 1) || (localb.type == 3))
      {
        if (!cj.hX(localb.cxM))
        {
          Intent localIntent1 = new Intent();
          localIntent1.putExtra("rawUrl", localb.cxM);
          com.tencent.mm.plugin.scanner.a.Tm().h(localIntent1, this);
        }
      }
      else if ((localb.type == 2) || (localb.type == 4))
      {
        if (cj.hX(localb.username))
          break label674;
        com.tencent.mm.storage.i locali = be.uz().su().tO(localb.username);
        if ((locali != null) && (locali.rj() > 0))
        {
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("show_bottom", false);
          localIntent2.putExtra("Contact_User", localb.username);
          localIntent2.putExtra("Contact_Nick", localb.crH);
          com.tencent.mm.plugin.scanner.a.Tm().c(localIntent2, this);
        }
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localException.getMessage();
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.scanner.ProductUI", "onPreferenceTreeClick, [%s]", arrayOfObject2);
      return false;
    }
    aj localaj = new aj(localb.username);
    be.uA().d(localaj);
    getString(com.tencent.mm.n.ber);
    this.cIr = com.tencent.mm.ui.base.h.b(this, getString(com.tencent.mm.n.bxo), new ag(this, localaj));
    break label674;
    if (localb.type == 5)
    {
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("rawUrl", localb.eaV);
      com.tencent.mm.plugin.scanner.a.Tm().h(localIntent3, this);
      if (be.nS() == null)
        break label674;
      be.nS().release();
      aaq();
    }
    label674: return true;
  }

  public final int aao()
  {
    return com.tencent.mm.k.aXO;
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aEr;
  }

  public final void i(String paramString, Bitmap paramBitmap)
  {
    if (paramString != null)
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = paramString;
      boolean bool;
      if (paramBitmap == null)
        bool = true;
      while (true)
      {
        arrayOfObject1[1] = Boolean.valueOf(bool);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "onGetPictureFinish pic, url = [%s], bitmap is null ? [%B]", arrayOfObject1);
        try
        {
          if (this.ecQ != null)
          {
            this.ecQ.setImageBitmap(paramBitmap);
            aap();
          }
          this.ecX = true;
          return;
          bool = false;
        }
        catch (Exception localException)
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localException.getLocalizedMessage();
          com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.scanner.ProductUI", "onGetPictureFinish : [%s]", arrayOfObject2);
          return;
        }
      }
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.scanner.ProductUI", "onUpdate pic, url  is null ");
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.platformtools.v.b(this);
    FR();
  }

  protected void onDestroy()
  {
    com.tencent.mm.platformtools.v.c(this);
    be.nS().c(this.edd);
    super.onDestroy();
  }

  protected void onPause()
  {
    be.uA().b(435, this);
    be.uA().b(106, this);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(435, this);
    be.uA().a(106, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ProductUI
 * JD-Core Version:    0.6.2
 */