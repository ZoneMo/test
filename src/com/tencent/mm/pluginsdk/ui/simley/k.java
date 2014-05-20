package com.tencent.mm.pluginsdk.ui.simley;

import android.content.Context;
import android.content.Intent;
import android.support.v4.view.bz;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.pluginsdk.ui.aw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.w;
import com.tencent.mm.ui.base.MMDotView;
import com.tencent.mm.ui.base.MMRadioGroupView;
import com.tencent.mm.ui.base.MMRadioImageButton;
import com.tencent.mm.ui.base.MMSmoothHorizontalScrollView;
import com.tencent.mm.ui.base.cp;
import com.tencent.mm.ui.base.cr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class k
  implements bz, View.OnClickListener, p, cp, cr
{
  private final String TAG = "MicroMsg.SmileyPanel.UIDeal";
  private View aH;
  private MMDotView cUl;
  private g fsS;
  private MMSmoothHorizontalScrollView ftA;
  private MMRadioGroupView ftB;
  private MMRadioImageButton ftC;
  private List ftD;
  private ImageView ftE;
  private ImageButton ftF;
  private TextView ftG;
  private n ftH;
  private volatile boolean ftI = false;
  private volatile boolean ftJ = false;
  private volatile int ftK = -1;
  private SmileyPanelVP fty;
  private o ftz;
  private Context mContext;

  public k(Context paramContext, g paramg, n paramn)
  {
    this.mContext = paramContext;
    this.fsS = paramg;
    this.ftH = paramn;
  }

  private MMRadioImageButton a(w paramw, e parame)
  {
    MMRadioImageButton localMMRadioImageButton1;
    int i;
    label13: MMRadioImageButton localMMRadioImageButton2;
    if (parame == null)
    {
      localMMRadioImageButton1 = null;
      if (localMMRadioImageButton1 == null)
        break label93;
      i = 1;
      if (i != 0)
        break label99;
      localMMRadioImageButton2 = new MMRadioImageButton(this.mContext, null, com.tencent.mm.o.bIE);
      c(localMMRadioImageButton2);
      label42: localMMRadioImageButton2.setBackgroundResource(com.tencent.mm.h.acS);
      if ((parame == null) || (i == 0))
        break label317;
    }
    label315: label317: for (boolean bool = parame.a(this, this.fsS); ; bool = false)
    {
      if (bool)
        aa.d("MicroMsg.SmileyPanel.UIDeal", "pass reset btn && use cache. so fast~");
      while (true)
      {
        return localMMRadioImageButton2;
        localMMRadioImageButton1 = parame.atC();
        break;
        label93: i = 0;
        break label13;
        label99: if (localMMRadioImageButton1.getParent() != null)
          ((ViewGroup)localMMRadioImageButton1.getParent()).removeView(localMMRadioImageButton1);
        localMMRadioImageButton2 = localMMRadioImageButton1;
        break label42;
        aa.v("MicroMsg.SmileyPanel.UIDeal", "reset btn && not use cache. expence time~");
        i locali = this.fsS.a(localMMRadioImageButton2, paramw);
        if (parame != null)
          parame.a(locali);
        if (g.qT(paramw.aBb()) == j.ftw)
          if (!g.b(paramw))
          {
            localMMRadioImageButton2.setCheckable(false);
            if ((locali != null) && (locali.WE != null))
              localMMRadioImageButton2.setImageBitmap(com.tencent.mm.sdk.platformtools.h.a(locali.WE, this.fsS.atI(), this.fsS.atI(), false, false));
          }
        while (true)
        {
          if (i != 0)
            break label315;
          localMMRadioImageButton2.setTag(paramw.aBb());
          localMMRadioImageButton2.setTag(com.tencent.mm.n.bjb, paramw);
          localMMRadioImageButton2.setClickable(true);
          localMMRadioImageButton2.setId(g.ac(localMMRadioImageButton2));
          return localMMRadioImageButton2;
          localMMRadioImageButton2.setCheckable(true);
          break;
          if ((locali != null) && (locali.resource != 0))
            localMMRadioImageButton2.setImageResource(locali.resource);
        }
      }
    }
  }

  private void a(int paramInt, String paramString, MMRadioImageButton paramMMRadioImageButton)
  {
    this.fsS.a(paramString, this, paramMMRadioImageButton, paramMMRadioImageButton.isCheckable(), paramInt);
  }

  private void a(String paramString, MMRadioImageButton paramMMRadioImageButton)
  {
    this.fsS.a(paramString, this, paramMMRadioImageButton, paramMMRadioImageButton.isCheckable());
  }

  private void aO(int paramInt1, int paramInt2)
  {
    if (paramInt1 <= 1)
    {
      this.cUl.setVisibility(4);
      return;
    }
    this.cUl.setVisibility(0);
    this.cUl.mX(paramInt1);
    this.cUl.mY(paramInt2);
  }

  private void aur()
  {
    aa.d("MicroMsg.SmileyPanel.UIDeal", "- deal View");
    e locale2;
    int i;
    if (this.ftz == null)
    {
      this.ftz = new o(this.fsS);
      locale2 = this.fsS.atX();
      SmileyPanelVP localSmileyPanelVP = this.fty;
      o localo = this.ftz;
      if (locale2 == null)
      {
        i = 0;
        localSmileyPanelVP.a(localo, i);
        this.fty.n(1);
      }
    }
    e locale1;
    while (true)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(this.fsS.atO());
      arrayOfObject[1] = this.fsS.atJ();
      aa.d("MicroMsg.SmileyPanel.UIDeal", "init dot view: current show viewId: %d, show productId: %s", arrayOfObject);
      locale1 = this.fsS.atX();
      if (locale1 == null)
      {
        g localg = this.fsS;
        localg.qV("TAG_DEFAULT_TAB");
        locale1 = this.fsS.atX();
      }
      if (locale1 != null)
      {
        locale1.atC().setChecked(true);
        auB();
        this.fty.m(locale1.att());
        if (locale1 == null)
          break label231;
        String str = locale1.Lg();
        if (str.equals("TAG_DEFAULT_TAB"))
          break label231;
        aa.d("MicroMsg.SmileyPanel.UIDeal", "init set currentItem not default qq. ");
      }
      return;
      i = locale2.att();
      break;
      this.ftz.auF();
    }
    label231: aO(locale1.atw(), 0);
  }

  private MMRadioImageButton auu()
  {
    if (this.ftC == null)
    {
      this.ftC = new MMRadioImageButton(this.mContext, null, com.tencent.mm.o.bIE);
      c(this.ftC);
      this.ftC.setBackgroundResource(com.tencent.mm.h.acS);
      this.ftC.setImageResource(com.tencent.mm.h.aee);
      MMRadioImageButton localMMRadioImageButton1 = this.ftC;
      localMMRadioImageButton1.setTag("TAG_DEFAULT_TAB");
      MMRadioImageButton localMMRadioImageButton2 = this.ftC;
      localMMRadioImageButton2.setId(g.ac(this.ftC));
      this.ftC.setCheckable(true);
    }
    return this.ftC;
  }

  private ImageView auv()
  {
    if (this.ftE == null)
    {
      this.ftE = new ImageView(this.mContext);
      c(this.ftE);
      auw();
      this.ftE.setImageResource(com.tencent.mm.h.aeb);
      ImageView localImageView = this.ftE;
      localImageView.setTag("TAG_STORE_TAB");
      this.ftE.setOnClickListener(this);
    }
    return this.ftE;
  }

  private void auw()
  {
    if (this.ftE == null)
      return;
    if ((com.tencent.mm.i.i.rX().cd(262147)) || (com.tencent.mm.i.i.rX().cd(262149)));
    for (int i = 1; i != 0; i = 0)
    {
      this.ftE.setBackgroundResource(com.tencent.mm.h.acT);
      return;
    }
    this.ftE.setBackgroundResource(com.tencent.mm.h.acS);
  }

  private ImageButton aux()
  {
    if (this.ftF == null)
    {
      this.ftF = new ImageButton(this.mContext, null, com.tencent.mm.o.bIE);
      c(this.ftF);
      this.ftF.setClickable(false);
      this.ftF.setVisibility(8);
    }
    return this.ftF;
  }

  private void auy()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("entrance_scence", 0);
    localIntent.putExtra("check_clickflag", false);
    com.tencent.mm.ak.a.b(this.mContext, "emoji", ".ui.EmojiStoreUI", localIntent);
  }

  private ImageView c(ImageView paramImageView)
  {
    paramImageView.setMaxHeight(this.fsS.atH());
    paramImageView.setMinimumHeight(this.fsS.atH());
    paramImageView.setMaxWidth(this.fsS.atG());
    paramImageView.setMinimumWidth(this.fsS.atG());
    paramImageView.setScaleType(ImageView.ScaleType.CENTER);
    paramImageView.setClickable(true);
    return paramImageView;
  }

  private void d(w paramw)
  {
    if (paramw == null)
      return;
    Intent localIntent = new Intent();
    localIntent.putExtra("extra_id", paramw.aBb());
    localIntent.putExtra("extra_name", paramw.aBf());
    localIntent.putExtra("extra_copyright", paramw.aBl());
    localIntent.putExtra("extra_coverurl", paramw.aBe());
    localIntent.putExtra("extra_description", paramw.aBg());
    localIntent.putExtra("extra_price", paramw.aBi());
    localIntent.putExtra("extra_type", paramw.aBj());
    localIntent.putExtra("extra_flag", paramw.aBk());
    localIntent.putExtra("extra_flag", 1);
    localIntent.putExtra("preceding_scence", 1);
    localIntent.putExtra("call_by", 2);
    localIntent.putExtra("entrance_scence", 5);
    localIntent.putExtra("check_clickflag", false);
    com.tencent.mm.ak.a.b(this.mContext, "emoji", ".ui.EmojiStoreDetailUI", localIntent);
  }

  private View findViewById(int paramInt)
  {
    return this.aH.findViewById(paramInt);
  }

  private void kP(int paramInt)
  {
    int i = this.ftB.getMeasuredWidth();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    aa.d("MicroMsg.SmileyPanel.UIDeal", "tabAllWidth: %d", arrayOfObject);
    int j = i - this.ftA.getWidth();
    if (j <= 0);
    int k;
    int m;
    do
    {
      return;
      k = this.fsS.atG();
      m = this.ftA.getScrollX();
      if ((m > 0) && (m >= k * paramInt))
      {
        this.ftA.scrollTo(paramInt * k, 0);
        aa.d("MicroMsg.SmileyPanel.UIDeal", "adjusting tab site --- to left.");
      }
    }
    while ((m >= j) || (m + this.ftA.getWidth() >= k * (paramInt + 1)));
    this.ftA.scrollTo(k * (paramInt + 1) - this.ftA.getWidth(), 0);
    aa.d("MicroMsg.SmileyPanel.UIDeal", "adjusting tab site --- to right.");
  }

  public final void a(int paramInt, float paramFloat)
  {
  }

  public final void a(f paramf)
  {
    int i = 1;
    while (true)
    {
      long l1;
      f localf1;
      f localf2;
      int k;
      int m;
      try
      {
        if ((this.aH == null) || (!this.ftI))
        {
          aa.d("MicroMsg.SmileyPanel.UIDeal", "not view can't deal");
          return;
        }
        l1 = System.currentTimeMillis();
        this.fsS.cJ(false);
        aa.d("MicroMsg.SmileyPanel.UIDeal", "- deal Data");
        localf1 = paramf;
        this.ftB.removeAllViews();
        if ((this.fsS.aum() != null) && (this.fsS.aum().size() >= 0))
          break label1076;
        localf2 = f.fta;
        if (localf2 == f.fta)
          this.fsS.auj();
        switch (m.ftN[localf2.ordinal()])
        {
        default:
          aa.d("MicroMsg.SmileyPanel.UIDeal", "Init Tabs Group Use Cache: Degree UnKonw");
          aa.d("MicroMsg.SmileyPanel.UIDeal", "start add default");
          if (localf2 != f.fta)
            break;
          a("TAG_DEFAULT_TAB", auu());
          if (auu().getParent() != null)
            ((ViewGroup)auu().getParent()).removeView(auu());
          this.ftB.addView(auu());
          if (this.fsS.aug())
            break label978;
          aa.d("MicroMsg.SmileyPanel.UIDeal", "start add middle");
          if (localf2 != f.fta)
            break label723;
          this.ftD = null;
          if (this.ftD != null)
            break label714;
          if (this.ftD != null)
            break label611;
          this.ftD = new ArrayList();
          ArrayList localArrayList2 = this.fsS.atE();
          if (localArrayList2 == null)
            break label651;
          g localg3 = this.fsS;
          if (localg3.qW("TAG_STORE_TAB"))
            break label1089;
          g localg5 = this.fsS;
          if (localg5.qW("TAG_DEFAULT_TAB"))
            break label1089;
          k = i;
          Iterator localIterator3 = localArrayList2.iterator();
          if (!localIterator3.hasNext())
            break label623;
          w localw2 = (w)localIterator3.next();
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localw2.aBb();
          aa.f("MicroMsg.SmileyPanel.UIDeal", "create middle button: %s", arrayOfObject2);
          MMRadioImageButton localMMRadioImageButton4 = a(localw2, null);
          if ((k == 0) || (!this.fsS.qW(localw2.aBb())))
            break label1070;
          m = 0;
          if (localMMRadioImageButton4 == null)
            break label1083;
          this.ftD.add(localMMRadioImageButton4);
          break;
        case 1:
          aa.d("MicroMsg.SmileyPanel.UIDeal", "Init Tabs Group Use Cache: Degree First");
          continue;
        case 2:
        case 3:
        }
      }
      finally
      {
      }
      aa.d("MicroMsg.SmileyPanel.UIDeal", "Init Tabs Group Use Cache: Degree Second");
      continue;
      aa.d("MicroMsg.SmileyPanel.UIDeal", "Init Tabs Group Use Cache: Degree Third");
      continue;
      g localg1 = this.fsS;
      e locale1 = localg1.qX("TAG_DEFAULT_TAB");
      if (locale1 == null)
      {
        aa.d("MicroMsg.SmileyPanel.UIDeal", "use cache error default, so Change Degree Third");
        localf1 = f.fta;
      }
      else
      {
        if (localf2 == f.fsY);
        for (boolean bool = locale1.a(this, this.fsS); ; bool = locale1.b(this, this.fsS))
        {
          if (bool)
            break label589;
          this.ftC = auu();
          a(0, "TAG_DEFAULT_TAB", this.ftC);
          break;
        }
        label589: this.ftC = locale1.atC();
        this.ftC.setBackgroundResource(com.tencent.mm.h.acS);
        continue;
        label611: this.ftD.clear();
        continue;
        label623: if ((k != 0) && (i != 0))
        {
          g localg4 = this.fsS;
          localg4.qV("TAG_DEFAULT_TAB");
        }
        label651: label714: for (List localList = this.ftD; ; localList = this.ftD)
        {
          Iterator localIterator2 = localList.iterator();
          while (localIterator2.hasNext())
          {
            MMRadioImageButton localMMRadioImageButton3 = (MMRadioImageButton)localIterator2.next();
            this.ftB.addView(localMMRadioImageButton3);
            a((String)localMMRadioImageButton3.getTag(), localMMRadioImageButton3);
          }
        }
        label723: this.ftD = new ArrayList();
        ArrayList localArrayList1 = this.fsS.atU();
        if (localArrayList1 == null)
        {
          aa.v("MicroMsg.SmileyPanel.UIDeal", "Emoji Group Info Cache can't use & unuse cache retry");
          localf1 = f.fta;
        }
        else
        {
          Iterator localIterator1 = localArrayList1.iterator();
          if (localIterator1.hasNext())
          {
            w localw1 = (w)localIterator1.next();
            g localg2 = this.fsS;
            int j = i + 1;
            e locale2 = localg2.kK(i);
            MMRadioImageButton localMMRadioImageButton1;
            if (locale2 == null)
            {
              aa.d("MicroMsg.SmileyPanel.UIDeal", "use cache middle already release.... so new one");
              localMMRadioImageButton1 = a(localw1, null);
              a(j, (String)localMMRadioImageButton1.getTag(), localMMRadioImageButton1);
            }
            for (MMRadioImageButton localMMRadioImageButton2 = localMMRadioImageButton1; ; localMMRadioImageButton2 = a(localw1, locale2))
            {
              this.ftD.add(localMMRadioImageButton2);
              this.ftB.addView(localMMRadioImageButton2);
              i = j;
              break;
            }
          }
          if (auv().getParent() != null)
            ((ViewGroup)auv().getParent()).removeView(auv());
          this.ftB.addView(auv());
          if (aux().getParent() != null)
            ((ViewGroup)auv().getParent()).removeView(aux());
          this.ftB.addView(aux());
          this.ftB.a(this);
          label978: if (localf2 != f.fsY)
            this.fsS.aun();
          aa.d("MicroMsg.SmileyPanel.UIDeal", "end initTabGroup");
          if (this.fsS.auf())
            aur();
          while (true)
          {
            this.fsS.cJ(true);
            long l2 = System.currentTimeMillis();
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = Long.valueOf(l2 - l1);
            aa.f("MicroMsg.SmileyPanel.UIDeal", "start Deal expend: %d", arrayOfObject1);
            break;
            this.fsS.cK(true);
          }
          label1070: m = i;
          continue;
          label1076: localf2 = localf1;
          continue;
          label1083: i = m;
          continue;
          label1089: k = 0;
        }
      }
    }
  }

  public final void a(MMRadioGroupView paramMMRadioGroupView, int paramInt)
  {
    if ((this.aH == null) || (!this.ftI))
      aa.d("MicroMsg.SmileyPanel.UIDeal", "not end loading but catch check tab, current deal pass~");
    MMRadioImageButton localMMRadioImageButton;
    String str;
    do
    {
      ImageView localImageView;
      do
      {
        return;
        if ((this.fty == null) || (this.ftz == null))
        {
          aa.d("MicroMsg.SmileyPanel.UIDeal", "not end initView but catch check tab, current deal pass~");
          return;
        }
        localImageView = (ImageView)paramMMRadioGroupView.findViewById(paramInt);
      }
      while (!(localImageView instanceof MMRadioImageButton));
      localMMRadioImageButton = (MMRadioImageButton)localImageView;
      str = (String)localMMRadioImageButton.getTag();
    }
    while ((cj.hX(str)) || (this.fsS.qW(str)) || (str.equals("TAG_STORE_TAB")));
    if ((!str.equals(String.valueOf(w.ggW))) && (!str.equals(String.valueOf(w.ggX))) && (!str.equals("TAG_DEFAULT_TAB")))
    {
      w localw = (w)localMMRadioImageButton.getTag(com.tencent.mm.n.bjb);
      if (localw == null)
        break label284;
      if (g.c(localw))
      {
        d(localw);
        return;
      }
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = str;
    aa.e("MicroMsg.SmileyPanel.UIDeal", "check, viewId: %d, proId: %s", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(paramInt);
    arrayOfObject2[1] = str;
    aa.e("MicroMsg.SmileyPanel.UIDeal", "show TAB: viewId: %d, tabProductId: %s", arrayOfObject2);
    this.fsS.qV(str);
    auB();
    label284: if (this.ftJ)
    {
      this.ftJ = false;
      return;
    }
    this.fty.a(this.fsS.qX(str).att(), false);
  }

  public final aw aty()
  {
    if (this.ftH == null)
      return null;
    return this.ftH.aty();
  }

  public final SmileyPanelVP auA()
  {
    return this.fty;
  }

  public final void auB()
  {
    g localg = this.fsS;
    if (localg.qW("TAG_DEFAULT_TAB"))
    {
      if ((this.ftH != null) && (this.ftH.auE() != null))
        this.ftH.auE().bB(true);
      if (this.fsS.atV())
      {
        this.fsS.cI(false);
        aux().setVisibility(0);
        if ((this.ftG != null) && (this.ftG.getVisibility() != 0))
        {
          TranslateAnimation localTranslateAnimation = new TranslateAnimation(this.ftG.getWidth(), 0.0F, 0.0F, 0.0F);
          localTranslateAnimation.setDuration(250L);
          this.ftG.startAnimation(localTranslateAnimation);
          this.ftG.setVisibility(0);
        }
      }
      return;
    }
    if ((this.ftH != null) && (this.ftH.auE() != null))
      this.ftH.auE().bB(false);
    cM(true);
  }

  public final void auC()
  {
    if (this.ftA != null)
      this.ftA.setVisibility(8);
  }

  public final void auD()
  {
    boolean bool = true;
    try
    {
      if (this.fsS.auo())
        if (!this.fsS.atZ());
      while (true)
      {
        aa.i("MicroMsg.SmileyPanel.UIDeal", "catch Size & start deal");
        this.aH.post(new l(this, bool));
        return;
        this.fsS.aub();
        bool = false;
        continue;
        if (!this.fsS.auc())
        {
          this.fsS.aud();
          bool = false;
        }
      }
    }
    finally
    {
    }
  }

  public final void auq()
  {
    if (this.fsS.aue())
    {
      aa.d("MicroMsg.SmileyPanel.UIDeal", "check neeed refresh & refresh");
      this.fsS.cK(false);
      aur();
    }
  }

  public final void aus()
  {
    if (this.ftz != null)
      this.ftz.clear();
  }

  public final void aut()
  {
    if (this.ftz == null)
      return;
    this.ftz.aut();
  }

  public final com.tencent.mm.pluginsdk.ui.h auz()
  {
    if (this.ftH == null)
      return null;
    return this.ftH.auE();
  }

  public final void b(MMRadioGroupView paramMMRadioGroupView, int paramInt)
  {
    if (paramInt < 0);
    label4: w localw;
    do
    {
      MMRadioImageButton localMMRadioImageButton;
      String str;
      do
      {
        do
        {
          break label4;
          do
            return;
          while (!(paramMMRadioGroupView.findViewById(paramInt) instanceof MMRadioImageButton));
          localMMRadioImageButton = (MMRadioImageButton)paramMMRadioGroupView.findViewById(paramInt);
          str = (String)localMMRadioImageButton.getTag();
        }
        while (cj.hX(str));
        if (str.equals("TAG_STORE_TAB"))
        {
          auy();
          g.atD();
        }
      }
      while ((str.equals(String.valueOf(w.ggW))) || (str.equals(String.valueOf(w.ggX))));
      localw = (w)localMMRadioImageButton.getTag(com.tencent.mm.n.bjb);
    }
    while (!g.c(localw));
    d(localw);
  }

  public final void cM(boolean paramBoolean)
  {
    aux().setVisibility(8);
    if (this.ftG == null);
    while (this.ftG.getVisibility() != 0)
      return;
    if (paramBoolean)
    {
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, this.ftG.getWidth(), 0.0F, 0.0F);
      localTranslateAnimation.setDuration(250L);
      this.ftG.startAnimation(localTranslateAnimation);
    }
    this.ftG.setVisibility(8);
  }

  public final void cN(boolean paramBoolean)
  {
    if (this.ftG != null)
      this.ftG.setEnabled(paramBoolean);
  }

  public final void d(ViewGroup paramViewGroup)
  {
    if (paramViewGroup == null)
      return;
    if ((this.aH != null) && (paramViewGroup.getChildCount() > 0))
    {
      aa.d("MicroMsg.SmileyPanel.UIDeal", "already load view --- pass");
      return;
    }
    this.ftI = false;
    aa.d("MicroMsg.SmileyPanel.UIDeal", "async load view");
    TextView localTextView;
    if (this.aH == null)
    {
      this.aH = View.inflate(this.mContext, com.tencent.mm.k.aZH, null);
      this.fty = ((SmileyPanelVP)findViewById(com.tencent.mm.i.aKQ));
      this.fty.a(this.fsS);
      this.fty.a(this);
      this.fty.a(this);
      this.fsS.kJ(this.fty.getWidth());
      this.cUl = ((MMDotView)findViewById(com.tencent.mm.i.aKN));
      this.cUl.mX(1);
      this.ftA = ((MMSmoothHorizontalScrollView)findViewById(com.tencent.mm.i.aKR));
      this.ftB = ((MMRadioGroupView)findViewById(com.tencent.mm.i.aKL));
      this.ftG = ((TextView)findViewById(com.tencent.mm.i.aIU));
      this.ftB.a(this);
      this.ftG.setOnClickListener(this);
      localTextView = this.ftG;
      if (!this.fsS.atV())
        break label273;
    }
    label273: for (int i = 0; ; i = 8)
    {
      localTextView.setVisibility(i);
      paramViewGroup.addView(this.aH, new LinearLayout.LayoutParams(-1, -1));
      this.ftI = true;
      return;
      if (this.aH.getParent() == null)
        break;
      ((ViewGroup)this.aH.getParent()).removeView(this.aH);
      break;
    }
  }

  public final Context getContext()
  {
    return this.mContext;
  }

  public final void j(int paramInt)
  {
    if (this.ftK == paramInt);
    while (!this.ftI)
      return;
    this.ftK = paramInt;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.d("MicroMsg.SmileyPanel.UIDeal", "onPageSelected: %d", arrayOfObject1);
    e locale = this.fsS.kL(paramInt);
    if (locale == null)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.e("MicroMsg.SmileyPanel.UIDeal", "catch null tab in onPage Selected: %d", arrayOfObject2);
      return;
    }
    if (!this.fsS.qW(locale.Lg()))
    {
      this.ftJ = true;
      locale.atC().setChecked(true);
    }
    aO(locale.atw(), paramInt - locale.att());
    kP(this.fsS.kM(paramInt));
  }

  public final void k(int paramInt)
  {
  }

  public final void kQ(int paramInt)
  {
    if (paramInt > 0)
    {
      aa.i("MicroMsg.SmileyPanel.UIDeal", "tab size changed ,so adjusting tab site.");
      kP(this.fsS.atW());
    }
  }

  public final void onClick(View paramView)
  {
    if (paramView == this.ftE)
    {
      auy();
      g.atD();
      auw();
    }
    while ((paramView != this.ftG) || (this.ftH == null) || (this.ftH.auE() == null))
      return;
    this.ftH.auE().ahP();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.k
 * JD-Core Version:    0.6.2
 */