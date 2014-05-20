package com.tencent.mm.ui.contact;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.AlphabetScrollBar;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.ek;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.tools.eo;
import com.tencent.mm.ui.voicesearch.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public class SelectContactUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private boolean cQb = false;
  private String cWi;
  private String cZs;
  private String dKG;
  private AlphabetScrollBar dLK;
  private ek dLM = new dv(this);
  private ProgressDialog dRP;
  private eo diw;
  private String gRX;
  private List gRY;
  private ListView gSA;
  private TextView gSB;
  private j gSE;
  private String gSF;
  private int gSH;
  private LinearLayout gSI = null;
  private boolean gSJ = false;
  private boolean gSK = false;
  private boolean gSc = false;
  private boolean gUJ;
  private db gUQ;
  private String gUR;
  private String gUS;
  private String gUT;
  private boolean gUU = false;
  private boolean gUV = false;
  private boolean gUW = false;
  private String gUX;
  private String gUY;
  private boolean gUZ = false;
  private com.tencent.mm.plugin.chatroom.a.c gVa = null;
  private ce gVb;
  private Button gVc;
  private View gVd = null;
  private boolean gVe = true;
  private String gVf = "";
  private boolean gVg = true;
  private boolean gVh = false;
  private boolean gVi = false;
  private boolean gVj = false;
  private boolean gVk = false;
  private String gVl;
  private View.OnClickListener gVm = new du(this);
  com.tencent.mm.pluginsdk.ui.e goY = new com.tencent.mm.pluginsdk.ui.e(new dt(this));
  private TextView gpX;
  private boolean gpY = false;

  private static List aA(List paramList)
  {
    LinkedList localLinkedList = new LinkedList();
    if (!be.se())
      return localLinkedList;
    if (paramList == null)
      return localLinkedList;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      com.tencent.mm.storage.i locali = be.uz().su().tO(str);
      if ((locali != null) && (locali.rj() != 0))
        str = locali.rr();
      localLinkedList.add(str);
    }
    return localLinkedList;
  }

  private int aKW()
  {
    if (this.gSI != null)
      return -1 + this.gSI.getChildCount();
    return 0;
  }

  private void aKX()
  {
    ArrayList localArrayList = this.gUQ.dU(false);
    Intent localIntent = new Intent();
    localIntent.putExtra("Select_Contact", au.a(localArrayList, ","));
    localIntent.putExtra("extra_id", this.cZs);
    localIntent.putExtra("consume_id", getIntent().getStringExtra("consume_id"));
    localIntent.putExtra("extra_coverurl", getIntent().getStringExtra("extra_coverurl"));
    localIntent.putExtra("extra_name", getIntent().getStringExtra("extra_name"));
    localIntent.putExtra("extra_price", getIntent().getStringExtra("extra_price"));
    localIntent.putExtra("extra_price_num", getIntent().getStringExtra("extra_price_num"));
    localIntent.putExtra("extra_price_type", getIntent().getStringExtra("extra_price_type"));
    localIntent.putExtra("google_price", getIntent().getStringExtra("google_price"));
    localIntent.putExtra("extra_flag", getIntent().getIntExtra("extra_flag", -1));
    localIntent.putExtra("extra_type", getIntent().getIntExtra("extra_type", -1));
    localIntent.putExtra("is_google_play", getIntent().getStringExtra("is_google_play"));
    a.b(this, "emoji", ".ui.EmojiStoreGiftUI", localIntent);
    finish();
  }

  private void akH()
  {
    if (this.gUQ != null)
      this.gUQ.ca(null);
    if (this.gSE != null)
      this.gSE.ca(null);
  }

  private void bf(String paramString1, String paramString2)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramString2);
    g(paramString1, localLinkedList);
  }

  private void bg(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, SendContactCardUI.class);
    if (paramString1 != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("cardNameToSend is null", bool);
      localIntent.putExtra("be_send_card_name", paramString1);
      localIntent.putExtra("received_card_name", paramString2);
      localIntent.putExtra("Is_Chatroom", true);
      localIntent.addFlags(67108864);
      startActivityForResult(localIntent, 6);
      return;
    }
  }

  private void g(String paramString, List paramList)
  {
    Intent localIntent;
    if (paramList.size() > 0)
    {
      localIntent = new Intent();
      localIntent.setClass(this, SendContactCardUI.class);
      if (this.gUX == null)
        break label93;
    }
    label93: for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("cardNameToSend is null", bool);
      localIntent.putExtra("be_send_card_name", paramString);
      localIntent.putExtra("received_card_name", au.a(paramList, ","));
      localIntent.putExtra("Is_Chatroom", false);
      localIntent.addFlags(67108864);
      startActivityForResult(localIntent, 6);
      return;
    }
  }

  private void q(int paramInt, boolean paramBoolean)
  {
    com.tencent.mm.z.i locali = new com.tencent.mm.z.i(paramInt);
    new Handler().post(new dw(this, locali));
    if (paramBoolean)
    {
      getString(2131167675);
      this.cIr = h.a(this, getString(2131167727), true, new dx(this, locali));
    }
  }

  private void wR(String paramString)
  {
    if (au.hX(paramString));
    do
    {
      do
        return;
      while (this.gRY.contains(paramString));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(this.gVg);
      aa.f("MicroMsg.SelectContactUI", "search finish %B", arrayOfObject);
    }
    while (this.gSI == null);
    int i = this.gSI.getChildCount();
    for (int j = 0; ; j++)
    {
      if (j >= i - 1)
        break label113;
      if (paramString.equals(this.gSI.getChildAt(j).getTag()))
      {
        if (!this.gVg)
          break;
        this.gSI.removeViewAt(j);
        return;
      }
    }
    label113: ImageView localImageView = new ImageView(this);
    com.tencent.mm.pluginsdk.ui.c.a(localImageView, paramString);
    localImageView.setTag(paramString);
    localImageView.setOnClickListener(this.gVm);
    this.gSI.addView(localImageView, i - 1);
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localImageView.getLayoutParams();
    localLayoutParams.height = getResources().getDimensionPixelSize(2131558461);
    localLayoutParams.width = getResources().getDimensionPixelSize(2131558461);
    localLayoutParams.rightMargin = getResources().getDimensionPixelSize(2131558427);
    localImageView.setLayoutParams(localLayoutParams);
    ((HorizontalScrollView)this.gSI.getParent()).smoothScrollTo(this.gSI.getMeasuredWidth(), 0);
  }

  private void wS(String paramString)
  {
    boolean bool = getIntent().getBooleanExtra("Need_Result", false);
    Intent localIntent = new Intent();
    if (bool)
    {
      localIntent.putExtra("Select_Conv_User", paramString);
      setResult(-1, localIntent);
    }
    while (true)
    {
      finish();
      return;
      localIntent.setClass(this, ChattingUI.class);
      localIntent.putExtra("Chat_User", paramString);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
    }
  }

  protected final void FR()
  {
    int i = 1;
    if ((this.gSA != null) && (this.gVd != null))
      this.gSA.removeHeaderView(this.gVd);
    findViewById(2131363964).setVisibility(8);
    this.gSA = ((ListView)findViewById(2131361903));
    this.gSB = ((TextView)findViewById(2131361905));
    this.gSB.setText(2131166182);
    this.gpX = ((TextView)findViewById(2131361904));
    this.gpX.setText(2131166183);
    this.gUQ = new db(this, this.dKG, this.gRX, this.gSH, this.gSc);
    db localdb = this.gUQ;
    label525: label705: dp localdp;
    if ((this.gSH != 0) || (!this.gVj))
    {
      int j = i;
      localdb.dT(j);
      this.gSA.setAdapter(null);
      this.gUQ.a(new dh(this));
      if ((this.gUW) && (this.gUT != null) && (!"".equals(this.gUT.trim())))
      {
        String[] arrayOfString = this.gUT.split(",");
        Object[] arrayOfObject = new Object[i];
        arrayOfObject[0] = Arrays.toString(arrayOfString);
        aa.e("MicroMsg.SelectContactUI", "chatroom members name=[%s]", arrayOfObject);
        this.gUQ.a("", arrayOfString, i);
      }
      this.gSE = new j(aal(), i);
      this.gSE.eB(i);
      if (((this.gSH == 0) || (this.gSH == i) || (this.gSH == 3) || (this.gSH == 5) || (this.gSH == 8) || (this.gSH == 10)) && ((this.gSH != 0) || (!this.gVj)))
      {
        this.gSI = ((LinearLayout)findViewById(2131361909));
        findViewById(2131361908).setVisibility(0);
        this.gSK = i;
      }
      aa.d("MicroMsg.SelectContactUI", "listType is " + this.gSH);
      this.diw = new eo();
      this.diw.a(new ds(this));
      a(i, this.diw);
      if ("@biz.contact".equals(this.dKG))
        a(new ed(this));
      if ((this.gSH != 0) || (!this.gVe))
        break label1173;
      this.gVd = View.inflate(this, 2130903357, null);
      View localView4 = this.gVd.findViewById(2131362847);
      if (localView4 != null)
        localView4.setOnClickListener(new ee(this));
      this.gSA.addHeaderView(this.gVd);
      this.gUQ.a(this);
      this.gSA.setAdapter(this.gUQ);
      this.gUQ.a(new ei(this));
      this.gSA.setOnItemClickListener(new ej(this));
      if (this.gSH == 2)
        registerForContextMenu(this.gSA);
      this.gSA.setOnItemLongClickListener(new di(this));
      this.gSA.setOnTouchListener(new dj(this));
      this.gSA.setOnScrollListener(this.goY);
      if ((this.gSH == 2) && ((this.dKG == null) || (this.dKG.equals("@micromsg.qq.com"))))
        a(0, 2130838789, new dk(this));
      this.gVc = ((Button)findViewById(2131361911));
      Button localButton1 = this.gVc;
      if (aKW() <= 0)
        break label1443;
      int m = i;
      localButton1.setEnabled(m);
      if ((this.gSH == 3) || (this.gSH == 0) || (this.gSH == i) || (this.gSH == 5) || (this.gSH == 7) || (this.gSH == 8) || (this.gSH == 10))
      {
        this.gVc.setVisibility(0);
        if (this.gSH != i)
          break label1449;
        dg(this.gUQ.aKU());
        this.gVc.setOnClickListener(new dl(this));
      }
      label812: if ((this.gSH == 3) || (this.gSH == 0) || (this.gSH == i) || (this.gSH == 5) || (this.gSH == 7) || (this.gSH == 10))
      {
        this.gVc.setText(getString(2131167684) + "(" + aKW() + ")");
        Button localButton2 = this.gVc;
        if (aKW() <= 0)
          break label1505;
        int i1 = i;
        localButton2.setEnabled(i1);
      }
      label923: vT(this.gSF);
      new do(this);
      localdp = new dp(this);
      if ((this.gSH != 4) && (this.gSH != 0) && (this.gSH != i) && (this.gSH != 3) && (this.gSH != 5) && (this.gSH != 7) && (this.gSH != 8) && (this.gSH != 10))
        break label1511;
      a(localdp);
      label1029: this.dLK = ((AlphabetScrollBar)findViewById(2131361906));
      if (!this.gSE.aPm())
        break label1558;
      this.dLK.setVisibility(8);
      label1062: if (!"@t.qq.com".equals(this.dKG))
        break label1585;
      if (w.tN())
        break label1580;
      q(9, i);
    }
    label1173: label1443: label1449: label1505: label1511: boolean bool;
    label1558: label1580: label1585: 
    while (!"@qqim".equals(this.dKG))
      while (true)
      {
        if (this.gSH == 7)
          a(0, getString(2131167684), new dq(this));
        if ((this.gSH == 7) && (this.gUJ))
          dh(false);
        if (this.gSH == 9)
          a(0, getString(2131167684), new dr(this));
        return;
        int k = 0;
        break;
        if ((this.gSH == i) && (this.gVe))
        {
          this.gVd = View.inflate(this, 2130903357, null);
          View localView3 = this.gVd.findViewById(2131362847);
          if (localView3 != null)
            localView3.setOnClickListener(new ef(this));
          ((TextView)this.gVd.findViewById(2131362847)).setText(2131166194);
          this.gSA.addHeaderView(this.gVd);
          break label525;
        }
        if ((this.gSH == 5) && (this.gVe))
        {
          this.gVd = View.inflate(this, 2130903357, null);
          View localView2 = this.gVd.findViewById(2131362847);
          if (localView2 != null)
            localView2.setOnClickListener(new eg(this));
          this.gSA.addHeaderView(this.gVd);
          break label525;
        }
        if ((this.gSH == 3) && (this.gVe))
        {
          this.gVd = View.inflate(this, 2130903357, null);
          View localView1 = this.gVd.findViewById(2131362847);
          if (localView1 != null)
            localView1.setOnClickListener(new eh(this));
          this.gSA.addHeaderView(this.gVd);
          break label525;
        }
        if ((this.gSH == 4) || (this.gSH != 8))
          break label525;
        this.gVd = View.inflate(this, 2130903357, null);
        this.gVd.findViewById(2131362847);
        break label525;
        int n = 0;
        break label705;
        if (this.gSH == 8)
        {
          this.gVc.setOnClickListener(new dm(this));
          break label812;
        }
        dg(this.gUQ.aKU());
        this.gVc.setOnClickListener(new dn(this));
        break label812;
        int i2 = 0;
        break label923;
        if ((!"@black.android".equals(this.dKG)) && (!"@domain.android".equals(this.dKG)) && (!"@t.qq.com".equals(this.dKG)))
          break label1029;
        a(localdp);
        break label1029;
        this.dLK.setVisibility(0);
        this.dLK.a(this.dLM);
        break label1062;
        bool = false;
      }
    if (!w.tO());
    while (true)
    {
      q(10, bool);
      break;
      bool = false;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    int i = 0;
    if (paramx.getType() == 119)
      if (this.gVa != null);
    do
    {
      do
      {
        return;
        this.gVa = null;
        this.gUU = false;
        if (this.cIr != null)
        {
          this.cIr.dismiss();
          this.cIr = null;
        }
      }
      while ((!au.ag(this)) || (cx.a(this, paramInt1, paramInt2, 4)));
      if ((paramInt1 == 0) && (paramInt2 == 0))
        break;
    }
    while (paramx.getType() != 119);
    com.tencent.mm.plugin.chatroom.a.c localc1 = (com.tencent.mm.plugin.chatroom.a.c)paramx;
    String str1 = "";
    String str2 = "";
    String str3 = al.getContext().getString(2131166738);
    if (paramInt2 == -23)
    {
      str1 = getString(2131167598);
      str2 = getString(2131167596);
    }
    List localList1 = localc1.Kj();
    if ((localList1 != null) && (localList1.size() > 0) && (localc1.Kk() == localList1.size()))
    {
      LinkedList localLinkedList1 = new LinkedList();
      for (int j = 0; j < localList1.size(); j++)
        localLinkedList1.add(localList1.get(j));
      boolean bool;
      String str4;
      Object[] arrayOfObject5;
      if (localLinkedList1.size() > 0)
      {
        bool = true;
        Assert.assertTrue(bool);
        str4 = al.getContext().getString(2131166738);
        if (localLinkedList1.size() != 1)
          break label315;
        arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = au.a(aA(localLinkedList1), str4);
      }
      label315: Object[] arrayOfObject4;
      for (String str5 = getString(2131165301, arrayOfObject5); ; str5 = getString(2131165300, arrayOfObject4))
      {
        h.a(this, str5, getString(2131166734), new eb(this, localLinkedList1));
        return;
        bool = false;
        break;
        arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = au.a(aA(localLinkedList1), str4);
      }
    }
    List localList2 = localc1.Kh();
    if ((localList2 != null) && (localList2.size() > 0))
    {
      str1 = getString(2131166734);
      StringBuilder localStringBuilder2 = new StringBuilder().append(str2);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = au.a(aA(localList2), str3);
      str2 = getString(2131165290, arrayOfObject3);
    }
    List localList3 = localc1.Kg();
    if ((localList3 != null) && (localList3.size() > 0))
    {
      str1 = getString(2131166734);
      StringBuilder localStringBuilder1 = new StringBuilder().append(str2);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = au.a(aA(localList3), str3);
      str2 = getString(2131165291, arrayOfObject2);
    }
    if ((str1 != null) && (str1.length() > 0))
    {
      h.p(this, str2, str1);
      return;
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(2131165280, arrayOfObject1), 0).show();
    return;
    switch (paramx.getType())
    {
    default:
      return;
    case 38:
      akH();
      return;
    case 119:
    }
    this.cWi = ((com.tencent.mm.plugin.chatroom.a.c)paramx).Kl();
    bv.a(this.cWi, this.gUQ.aKT(), getString(2131166736), false, "");
    com.tencent.mm.plugin.chatroom.a.c localc2 = (com.tencent.mm.plugin.chatroom.a.c)paramx;
    List localList4 = localc2.Kj();
    if ((localList4 != null) && (localList4.size() > 0))
    {
      LinkedList localLinkedList2 = new LinkedList();
      while (i < localList4.size())
      {
        localLinkedList2.add(localList4.get(i));
        i++;
      }
      String str6 = localc2.Kl();
      String str7 = "weixin://findfriend/verifycontact/" + str6 + "/";
      bv.a(str6, localLinkedList2, getString(2131166737), true, str7);
    }
    wS(this.cWi);
  }

  protected final String aEZ()
  {
    if ("@biz.contact".equals(this.dKG))
      return "_bizContact";
    return "";
  }

  public final void aKY()
  {
    ArrayList localArrayList = this.gUQ.dU(false);
    Intent localIntent = new Intent();
    localIntent.putExtra("Select_Contact", au.a(localArrayList, ","));
    localIntent.putExtra("extra_id", this.cZs);
    localIntent.putExtra("consume_id", getIntent().getStringExtra("consume_id"));
    localIntent.putExtra("extra_coverurl", getIntent().getStringExtra("extra_coverurl"));
    localIntent.putExtra("extra_name", getIntent().getStringExtra("extra_name"));
    localIntent.putExtra("extra_price", getIntent().getStringExtra("extra_price"));
    localIntent.putExtra("extra_price_num", getIntent().getStringExtra("extra_price_num"));
    localIntent.putExtra("extra_price_type", getIntent().getStringExtra("extra_price_type"));
    localIntent.putExtra("google_price", getIntent().getStringExtra("google_price"));
    localIntent.putExtra("extra_flag", getIntent().getIntExtra("extra_flag", -1));
    localIntent.putExtra("extra_type", getIntent().getIntExtra("extra_type", -1));
    localIntent.putExtra("is_google_play", getIntent().getStringExtra("is_google_play"));
    localIntent.putExtra("share_desc", getIntent().getStringExtra("share_desc"));
    setResult(-1, localIntent);
    finish();
  }

  public final com.tencent.mm.pluginsdk.ui.e aKu()
  {
    return this.goY;
  }

  protected final int getLayoutId()
  {
    return 2130903069;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    aa.d("MicroMsg.SelectContactUI", "onAcvityResult requestCode: %d", arrayOfObject);
    if ((paramInt1 == 6) && (paramInt2 == -1))
    {
      setResult(-1);
      finish();
    }
    String str;
    do
    {
      do
        return;
      while (paramInt2 != -1);
      switch (paramInt1)
      {
      default:
        return;
      case 4:
        setResult(-1, paramIntent);
        finish();
        return;
      case 5:
      }
      str = paramIntent.getStringExtra("Select_Contact");
    }
    while (cj.hX(str));
    if (this.gUY.endsWith("@chatroom"))
    {
      bg(str, this.gUY);
      return;
    }
    bf(str, this.gUY);
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    super.onContextItemSelected(paramMenuItem);
    com.tencent.mm.storage.i locali2;
    switch (paramMenuItem.getItemId())
    {
    default:
      return true;
    case 1:
    case 2:
      locali2 = be.uz().su().tO(this.gVf);
      locali2.qJ();
      w.n(locali2);
      if (w.cp(this.gVf))
      {
        be.uz().su().tU(this.gVf);
        be.uz().sA().tx(this.gVf);
        be.uA().d(new com.tencent.mm.z.i(5));
      }
      break;
    case 7:
    }
    while (true)
    {
      akH();
      return true;
      this.cQb = false;
      getString(2131167675);
      this.dRP = h.a(this, getString(2131167726), true, new dz(this));
      bv.a(this.gVf, new ea(this));
      be.uz().su().a(this.gVf, locali2);
      be.uz().sx().tX(this.gVf);
      break;
      com.tencent.mm.storage.i locali1 = be.uz().su().tO(this.gVf);
      locali1.qJ();
      w.n(locali1);
      be.uA().d(new com.tencent.mm.z.i(5));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gUJ = v.ts();
    be.uA().a(119, this);
    be.uA().a(30, this);
    be.uA().a(38, this);
    this.dKG = getIntent().getStringExtra("Contact_GroupFilter_Type");
    if (au.hW(this.dKG).length() <= 0)
      this.dKG = "@micromsg.qq.com";
    this.gRX = getIntent().getStringExtra("Contact_GroupFilter_Str");
    this.gSF = getIntent().getStringExtra("Contact_GroupFilter_DisplayName");
    this.gVj = getIntent().getBooleanExtra("single_chat", false);
    this.gUT = getIntent().getStringExtra("Chatroom_member_list");
    this.gUW = getIntent().getBooleanExtra("Show_Chatroom_member", false);
    this.gUR = getIntent().getStringExtra("Block_list");
    this.gUS = getIntent().getStringExtra("Disabled_Selected_list");
    this.gSH = getIntent().getIntExtra("List_Type", 2);
    this.gUV = getIntent().getBooleanExtra("Add_SendCard", false);
    this.gVe = getIntent().getBooleanExtra("Need_Group_Item", true);
    if (((this.gVe) && (w.tM().size() == 0)) || ((this.gSH == 0) && (this.gVj)))
      this.gVe = false;
    this.gVk = getIntent().getBooleanExtra("recommend_friends", false);
    this.gVh = getIntent().getBooleanExtra("Need_Voice_Search", false);
    this.gVi = getIntent().getBooleanExtra("to_talk_room", false);
    this.gSc = getIntent().getBooleanExtra("favour_include_biz", false);
    this.cZs = getIntent().getStringExtra("extra_id");
    this.gVl = getIntent().getStringExtra("share_desc");
    String str = getIntent().getStringExtra("Add_address_titile");
    if ((str != null) && (!str.equals("")))
      vT(str);
    if ((this.gUV) || (this.gVk))
    {
      this.gUX = au.R(getIntent().getStringExtra("be_send_card_name"), "");
      this.gUY = au.R(getIntent().getStringExtra("received_card_name"), "");
    }
    if (this.gSH == 0)
      if (this.gVj)
        this.gSF = getString(2131166173);
    while (true)
    {
      if ("@biz.contact".equals(this.dKG))
        this.gSF = getString(2131166200);
      FR();
      return;
      this.gSF = getString(2131166172);
      continue;
      if ((this.gSH == 5) || (this.gSH == 7) || (this.gSH == 9))
      {
        this.gSF = getString(2131166174);
      }
      else if (this.gSH == 1)
      {
        this.gSF = getString(2131166175);
      }
      else if (this.gSH == 6)
      {
        this.gSF = getString(2131166174);
        this.gSH = 1;
      }
      else if ((this.gSH == 3) || (this.gSH == 10))
      {
        this.gSF = getString(2131166174);
      }
      else if (this.gSH == 4)
      {
        this.gSF = getString(2131166174);
        this.gUZ = getIntent().getBooleanExtra("select_contact_pick_result", false);
      }
      else if (au.hW(this.gSF).length() <= 0)
      {
        this.gSF = getString(2131165185);
      }
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    com.tencent.mm.storage.i locali = be.uz().su().tO(this.gVf);
    if (locali == null)
      aa.e("MicroMsg.SelectContactUI", "onCreateContextMenu, contact is null, username = " + this.gVf);
    do
    {
      do
        return;
      while (("@domain.android".equals(this.dKG)) || ("@black.android".equals(this.dKG)) || ("@t.qq.com".equals(this.dKG)) || (v.th().equals(locali.getUsername())));
      if (w.cr(this.gVf))
      {
        paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.e(this, locali.rr(), -1));
        paramContextMenu.add(localAdapterContextMenuInfo.position, 2, 0, 2131166181);
        return;
      }
    }
    while (w.cH(this.gVf));
    paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.e(this, locali.rr(), -1));
    paramContextMenu.add(localAdapterContextMenuInfo.position, 1, 0, 2131166180);
  }

  protected void onDestroy()
  {
    aa.v("MicroMsg.SelectContactUI", "onDestory");
    be.uA().b(119, this);
    be.uA().b(30, this);
    be.uA().b(38, this);
    this.dLK.aHU();
    this.gUQ.closeCursor();
    this.gUQ.detach();
    this.gUQ.aDU();
    if (this.gVb != null)
      this.gVb.dismiss();
    if (this.gSE != null)
    {
      this.gSE.detach();
      this.gSE.closeCursor();
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    if (this.gVb != null)
      this.gVb.dismiss();
    be.uz().sr().set(12296, Boolean.valueOf(this.gSJ));
    if (this.gSE != null)
      this.gSE.onPause();
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    LinkedList localLinkedList = new LinkedList();
    String str = this.gUR;
    Object localObject = null;
    if (str != null)
    {
      boolean bool2 = this.gUR.equals("");
      localObject = null;
      if (!bool2)
        localObject = au.c(this.gUR.split(","));
    }
    label188: boolean bool1;
    if ((localObject != null) && (((List)localObject).size() != 0))
      if ((this.gSH == 0) || (this.gSH == 1) || (this.gSH == 5) || (this.gSH == 7) || (this.gSH == 8) || (this.gSH == 9))
      {
        this.gUQ.aD((List)localObject);
        switch (this.gSH)
        {
        case 6:
        case 7:
        case 8:
        case 9:
        default:
          if (!((List)localObject).contains("officialaccounts"))
            ((List)localObject).add("officialaccounts");
          ((List)localObject).add("helper_entry");
          if ("@t.qq.com".equals(this.dKG))
            ((List)localObject).add("weixin");
          if (this.gUQ != null)
            this.gUQ.aB((List)localObject);
          if (this.gSE != null)
            this.gSE.aB(localLinkedList);
          if ((this.gSH == 3) || (this.gSH == 0) || (this.gSH == 1) || (this.gSH == 5))
          {
            this.gVc.setText(getString(2131167684) + "(" + aKW() + ")");
            Button localButton = this.gVc;
            if (aKW() > 0)
            {
              bool1 = true;
              label366: localButton.setEnabled(bool1);
              label373: if (this.gSH == 0)
                vT(this.gSF);
              if ((this.gUS == null) || (this.gUS.equals("")))
                break label798;
            }
          }
          break;
        case 0:
        case 1:
        case 3:
        case 10:
        case 4:
        case 5:
        case 2:
        }
      }
    label798: for (this.gRY = au.c(this.gUS.split(",")); ; this.gRY = new LinkedList())
    {
      if ((this.gRY != null) && (this.gRY.size() != 0))
        this.gUQ.aE(this.gRY);
      this.gSJ = ((Boolean)be.uz().sr().get(12296, Boolean.valueOf(false))).booleanValue();
      if (this.gSH == 2)
      {
        com.tencent.mm.storage.i locali = be.uz().su().tO(v.th());
        if ((locali != null) && ((!locali.rb()) || (!au.hX(locali.ru())) || (!au.hX(locali.rw())) || (!au.hX(locali.rv()))))
        {
          locali.qI();
          locali.bH("");
          locali.bJ("");
          locali.bI("");
          be.uz().su().a(v.th(), locali);
        }
      }
      akH();
      if (this.gSE != null)
        this.gSE.onResume();
      return;
      if ((this.gSH == 3) || (this.gSH != 4))
        break;
      break;
      localObject = new LinkedList();
      break;
      ((List)localObject).add("helper_entry");
      ((List)localObject).add("officialaccounts");
      ((List)localObject).add("filehelper");
      if (!((List)localObject).contains("helper_entry"))
        ((List)localObject).add("helper_entry");
      localLinkedList.addAll((Collection)localObject);
      break label188;
      ((List)localObject).add("helper_entry");
      ((List)localObject).add("officialaccounts");
      String[] arrayOfString = w.chR;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        ((List)localObject).add(arrayOfString[j]);
      localLinkedList.addAll((Collection)localObject);
      break label188;
      localLinkedList.addAll((Collection)localObject);
      break label188;
      bool1 = false;
      break label366;
      vT(this.gSF);
      break label373;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.SelectContactUI
 * JD-Core Version:    0.6.2
 */