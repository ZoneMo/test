package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.animation.TranslateAnimation;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.ao.c;
import com.tencent.mm.g;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.o;
import com.tencent.mm.pluginsdk.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.w;
import com.tencent.mm.ui.base.MMDotView;
import com.tencent.mm.ui.base.MMFlipper;
import com.tencent.mm.ui.base.MMRadioGroupView;
import com.tencent.mm.ui.base.MMRadioImageButton;
import com.tencent.mm.ui.base.MMSmoothHorizontalScrollView;
import com.tencent.mm.ui.base.cp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class SmileyPanel extends ChatFooterPanel
  implements j
{
  private static int efa = 179;
  private static int efb = 122;
  private MMFlipper cUk;
  private MMDotView cUl;
  private ArrayList dbC;
  private boolean ekH = false;
  private boolean flI = false;
  private boolean flJ = false;
  private int fmA = -1;
  private int fmb;
  private int fmc;
  private int fmd;
  private ArrayList fme;
  private final HashMap fmf = new HashMap();
  private boolean fmg = false;
  private int fmh;
  private int fmi;
  private boolean fmj = false;
  private int fmk = -1;
  private int fml = 0;
  private String fmm = "TAG_DEFAULT_TAB";
  private TextView fmn;
  private MMRadioGroupView fmo;
  private MMRadioImageButton fmp;
  private MMSmoothHorizontalScrollView fmq;
  private boolean fmr = false;
  private ImageButton fms;
  private ab fmt;
  private final cp fmu = new ar(this);
  private final View.OnClickListener fmv = new as(this);
  private final View.OnClickListener fmw = new at(this);
  private final int fmx = 3;
  private final int fmy = 2;
  private boolean fmz = true;
  private Context mContext;
  private Handler mHandler = new aq(this);

  public SmileyPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    inflate(paramContext, k.aZF, this);
    this.fmc = getResources().getDimensionPixelSize(g.abq);
    this.fmb = getResources().getDimensionPixelSize(g.abs);
    this.fmd = getResources().getDimensionPixelSize(g.abr);
    this.fmr = ((Boolean)be.uz().sr().get(66832, Boolean.valueOf(false))).booleanValue();
    this.fmn = ((TextView)findViewById(com.tencent.mm.i.aIU));
    this.fmn.setOnClickListener(this.fmw);
    this.cUk = ((MMFlipper)findViewById(com.tencent.mm.i.aKO));
    this.cUl = ((MMDotView)findViewById(com.tencent.mm.i.aKN));
    this.fmq = ((MMSmoothHorizontalScrollView)findViewById(com.tencent.mm.i.aKR));
    this.fmo = ((MMRadioGroupView)this.fmq.findViewById(com.tencent.mm.i.aKL));
    TextView localTextView = this.fmn;
    if (this.fmr);
    for (int i = 0; ; i = 8)
    {
      localTextView.setVisibility(i);
      arC();
      arA();
      this.fmo.a(this.fmu);
      return;
    }
  }

  private void H(String paramString, boolean paramBoolean)
  {
    int i = 1;
    int j = 2;
    int k = 0;
    if ((!this.fmf.containsKey(paramString)) || (paramBoolean) || (paramString.equals(String.valueOf(w.ggX))))
    {
      ArrayList localArrayList = new ArrayList();
      if ((this.fmh == 0) || (this.fmi == 0))
        return;
      int m = com.tencent.mm.an.a.fromDPToPix(this.mContext, 80);
      int n = this.fmh / m;
      int i1 = this.fmi / m;
      Object[] arrayOfObject1 = new Object[j];
      arrayOfObject1[0] = Integer.valueOf(this.fmh);
      arrayOfObject1[i] = Integer.valueOf(this.fmi);
      aa.e("MicroMsg.SmileyPanel", "mGridViewWidth:%d,mGridViewHeight:%d", arrayOfObject1);
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(m);
      arrayOfObject2[i] = Integer.valueOf(n);
      arrayOfObject2[j] = Integer.valueOf(i1);
      aa.e("MicroMsg.SmileyPanel", "itemSizeInPix:%d,numColumns:%d,numRows:%d", arrayOfObject2);
      int i2;
      int i3;
      int i4;
      if (i1 > j)
      {
        i2 = (this.fmi - m * j) / (j + 1);
        i3 = n * j;
        if (!paramString.equals(String.valueOf(w.ggX)))
          break label338;
        i4 = 25;
        if (be.uz().isSDCardAvailable())
          i = 1 + com.tencent.mm.pluginsdk.h.apj().KY();
      }
      while (true)
      {
        int i5 = (int)Math.ceil(i / i3);
        while (k < i5)
        {
          SmileySubGrid localSmileySubGrid2 = (SmileySubGrid)inflate(this.mContext, k.aZJ, null);
          localSmileySubGrid2.a(i4, k, i, i3, i5, n, paramString, this.fmh);
          localSmileySubGrid2.V(this.cUk);
          SmileySubGrid.arv();
          localSmileySubGrid2.kg(i2);
          localArrayList.add(localSmileySubGrid2);
          k++;
        }
        j = i1;
        break;
        label338: i4 = 23;
        if (be.uz().isSDCardAvailable())
          i = com.tencent.mm.pluginsdk.h.apj().jd(paramString);
        else
          i = 0;
      }
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        SmileySubGrid localSmileySubGrid1 = (SmileySubGrid)localIterator.next();
        localSmileySubGrid1.a(this.fki);
        localSmileySubGrid1.a((aw)this.fkj);
      }
      this.fmf.put(paramString, localArrayList);
      if (paramBoolean)
      {
        this.cUk.removeAllViews();
        this.cUk.aGN();
        this.cUk.removeAllViews();
      }
    }
    y((ArrayList)this.fmf.get(paramString));
  }

  private void arA()
  {
    this.fmm = String.valueOf(be.uz().sr().get(-29414086));
    if ((TextUtils.isEmpty(this.fmm)) || (this.fmm.equals("null")))
      this.fmm = "TAG_DEFAULT_TAB";
    Object localObject = be.uz().sr().get(-29414083);
    if (localObject != null);
    try
    {
      this.fml = ((Integer)localObject).intValue();
      this.dbC = com.tencent.mm.pluginsdk.h.apj().KX();
      arz();
      if (!this.ekH)
      {
        this.ekH = true;
        this.fmm = "TAG_DEFAULT_TAB";
        this.fmp.setChecked(true);
      }
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      while (true)
        aa.e("MicroMsg.SmileyPanel", "Get ConfigStg Last Smiley Page fail.");
    }
  }

  private int arB()
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    if (localDisplay.getWidth() < localDisplay.getHeight())
      return 1;
    return 2;
  }

  private void arC()
  {
    this.cUk.removeAllViews();
    this.cUk.a(new au(this));
    this.cUk.a(new av(this));
    this.fmz = true;
    Object localObject1;
    Object localObject2;
    int j;
    Object localObject3;
    if (arB() == 2)
    {
      View localView2 = findViewById(com.tencent.mm.i.aKM);
      LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)localView2.getLayoutParams();
      int m = com.tencent.mm.an.a.fromDPToPix(this.mContext, efb);
      localObject1 = localView2;
      localObject2 = localLayoutParams2;
      j = m;
      localObject3 = localLayoutParams2;
      ((LinearLayout.LayoutParams)localObject3).height = j;
      ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    }
    do
    {
      while (true)
        if (arB() == 2)
        {
          if ((this.fme != null) && (this.fme.size() > 0))
            this.fme.clear();
          if ((this.fmf != null) && (this.fmf.size() > 0))
            this.fmf.clear();
          return;
          if (this.fmz)
          {
            this.fmz = false;
            View localView1 = findViewById(com.tencent.mm.i.aKM);
            LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView1.getLayoutParams();
            if (this.fmA > 0)
            {
              int k = this.fmA;
              localObject1 = localView1;
              localObject2 = localLayoutParams1;
              j = k;
              localObject3 = localLayoutParams1;
              break;
            }
            int i = com.tencent.mm.an.a.fromDPToPix(this.mContext, efa);
            localObject1 = localView1;
            localObject2 = localLayoutParams1;
            j = i;
            localObject3 = localLayoutParams1;
            break;
          }
        }
      if ((this.fme != null) && (this.fme.size() > 0))
      {
        Iterator localIterator3 = this.fme.iterator();
        while (localIterator3.hasNext())
          ((SmileyGrid)localIterator3.next()).release();
        this.fme.clear();
      }
    }
    while ((this.fmf == null) || (this.fmf.size() <= 0));
    Iterator localIterator1 = this.fmf.values().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((ArrayList)localIterator1.next()).iterator();
      while (localIterator2.hasNext())
        ((SmileySubGrid)localIterator2.next()).release();
    }
  }

  private void arz()
  {
    this.fmo.removeAllViews();
    this.fmp = new MMRadioImageButton(getContext(), null, o.bIE);
    this.fmp.setMaxHeight(this.fmc);
    this.fmp.setMinimumHeight(this.fmc);
    this.fmp.setMaxWidth(this.fmb);
    this.fmp.setMinimumWidth(this.fmb);
    this.fmp.setBackgroundResource(com.tencent.mm.h.acS);
    this.fmp.setScaleType(ImageView.ScaleType.CENTER);
    this.fmp.setImageResource(com.tencent.mm.h.aee);
    this.fmp.setTag("TAG_DEFAULT_TAB");
    this.fmp.setClickable(true);
    this.fmo.addView(this.fmp);
    if ((TextUtils.isEmpty(this.fmm)) || ((!TextUtils.isEmpty(this.fmm)) && (this.fmm.equals("TAG_DEFAULT_TAB"))))
    {
      this.ekH = true;
      this.fmp.setChecked(true);
    }
    if (this.dbC == null)
    {
      aa.w("MicroMsg.SmileyPanel", "emoji group info list is null, return");
      return;
    }
    Iterator localIterator = this.dbC.iterator();
    while (localIterator.hasNext())
    {
      w localw = (w)localIterator.next();
      MMRadioImageButton localMMRadioImageButton = new MMRadioImageButton(getContext(), null, o.bIE);
      localMMRadioImageButton.setMaxHeight(this.fmc);
      localMMRadioImageButton.setMinimumHeight(this.fmc);
      localMMRadioImageButton.setMaxWidth(this.fmb);
      localMMRadioImageButton.setMinimumWidth(this.fmb);
      localMMRadioImageButton.setBackgroundResource(com.tencent.mm.h.acS);
      localMMRadioImageButton.setScaleType(ImageView.ScaleType.CENTER);
      if (localw.aBb().equals(String.valueOf(w.ggW)))
        localMMRadioImageButton.setImageResource(com.tencent.mm.h.aea);
      label446: label575: 
      do
      {
        while (true)
        {
          localMMRadioImageButton.setTag(localw.aBb());
          localMMRadioImageButton.setTag(n.bjb, localw);
          localMMRadioImageButton.setClickable(true);
          this.fmo.addView(localMMRadioImageButton);
          if ((TextUtils.isEmpty(this.fmm)) || (!this.fmm.equals(localw.aBb())))
            break;
          if ((!this.fmm.equals(String.valueOf(w.ggX))) && (!this.fmm.equals(String.valueOf(w.ggW))))
            break label623;
          this.ekH = true;
          localMMRadioImageButton.setChecked(true);
          break;
          if (!localw.aBb().equals(String.valueOf(w.ggX)))
            break label446;
          localMMRadioImageButton.setImageResource(com.tencent.mm.h.aec);
        }
        Bitmap localBitmap;
        if (localw.aBn() != 1)
        {
          com.tencent.mm.pluginsdk.i locali2 = com.tencent.mm.pluginsdk.h.apj();
          String str2 = localw.aBb();
          String str3 = localw.aBd();
          com.tencent.mm.an.a.getDensity(getContext());
          localBitmap = locali2.e(str2, 5, str3);
          localMMRadioImageButton.setCheckable(false);
        }
        while (true)
        {
          if (localBitmap == null)
            break label575;
          localMMRadioImageButton.setImageBitmap(com.tencent.mm.sdk.platformtools.h.a(localBitmap, this.fmd, this.fmd, false, true));
          break;
          com.tencent.mm.pluginsdk.i locali1 = com.tencent.mm.pluginsdk.h.apj();
          String str1 = localw.aBb();
          com.tencent.mm.an.a.getDensity(getContext());
          localBitmap = locali1.e(str1, 6, "");
          localMMRadioImageButton.setCheckable(true);
        }
      }
      while (!TextUtils.isEmpty(localw.aBd()));
      com.tencent.mm.pluginsdk.h.apj().jg(localw.aBb());
      if (this.fmm.equals(localw.aBb()))
      {
        this.fmm = "TAG_DEFAULT_TAB";
        continue;
        label623: if (localw.aBn() == 1)
        {
          this.ekH = true;
          localMMRadioImageButton.setChecked(true);
        }
      }
    }
    boolean bool1 = com.tencent.mm.i.i.rX().cd(262147);
    boolean bool2 = com.tencent.mm.i.i.rX().cd(262149);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(bool1);
    aa.e("MicroMsg.SmileyPanel", "Has new [%b]", arrayOfObject);
    ImageView localImageView = new ImageView(getContext());
    localImageView.setMaxHeight(this.fmc);
    localImageView.setMinimumHeight(this.fmc);
    localImageView.setMaxWidth(this.fmb);
    localImageView.setMinimumWidth(this.fmb);
    localImageView.setScaleType(ImageView.ScaleType.CENTER);
    if (bool1)
      localImageView.setBackgroundResource(com.tencent.mm.h.acT);
    while (true)
    {
      localImageView.setImageResource(com.tencent.mm.h.aeb);
      localImageView.setTag("TAG_STORE_TAB");
      localImageView.setClickable(false);
      localImageView.setOnClickListener(this.fmv);
      this.fmo.addView(localImageView);
      this.fms = new ImageButton(getContext(), null, o.bIE);
      this.fms.setBackgroundResource(com.tencent.mm.h.acU);
      this.fms.setClickable(false);
      this.fms.setVisibility(8);
      this.fmo.addView(this.fms);
      return;
      if (bool2)
        localImageView.setBackgroundResource(com.tencent.mm.h.acT);
      else
        localImageView.setBackgroundResource(com.tencent.mm.h.acS);
    }
  }

  private void cl(boolean paramBoolean)
  {
    int i = 3;
    com.tencent.mm.an.a.fromDPToPix(this.mContext, 43);
    int j = com.tencent.mm.an.a.fromDPToPix(this.mContext, 48);
    int k = this.fmi / j;
    int m;
    int n;
    label87: int i1;
    int i2;
    if (k > i)
    {
      m = (this.fmi - j * i) / (i + 1);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(m);
      aa.e("MicroMsg.SmileyPanel", "jacks spacing2 = %d", arrayOfObject);
      if (!paramBoolean)
        break label242;
      n = 7;
      i1 = n * i;
      if (!this.flI)
        break label249;
      i2 = 0;
      label103: if (!this.flJ)
        break label261;
    }
    int i4;
    int i5;
    label261: for (int i3 = 0; ; i3 = c.bI(this.mContext))
    {
      i4 = i2 + i3;
      i5 = (int)Math.ceil(i4 / i1);
      if ((this.fme != null) && (this.fme.size() != 0))
        break label273;
      for (int i6 = 0; i6 < i5; i6++)
      {
        SmileyGrid localSmileyGrid2 = (SmileyGrid)inflate(this.mContext, k.aZC, null);
        localSmileyGrid2.n(this.flI, this.flJ);
        localSmileyGrid2.kg(m);
        localSmileyGrid2.a(20, i6, i4, i1, i5, n, "", this.fmh);
        this.fme.add(localSmileyGrid2);
      }
      i = k;
      break;
      label242: n = 14;
      break label87;
      label249: i2 = c.bH(this.mContext);
      break label103;
    }
    label273: for (int i7 = 0; i7 < this.fme.size(); i7++)
    {
      SmileyGrid localSmileyGrid3 = (SmileyGrid)this.fme.get(i7);
      localSmileyGrid3.n(this.flI, this.flJ);
      localSmileyGrid3.a(20, i7, i4, i1, i5, n, "", this.fmh);
    }
    if (this.fme != null)
    {
      Iterator localIterator = this.fme.iterator();
      while (localIterator.hasNext())
      {
        SmileyGrid localSmileyGrid1 = (SmileyGrid)localIterator.next();
        localSmileyGrid1.a(this.fki);
        localSmileyGrid1.a((aw)this.fkj);
      }
    }
  }

  private void x(ArrayList paramArrayList)
  {
    this.cUk.removeAllViews();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      GridView localGridView = (GridView)localIterator.next();
      this.cUk.addView(localGridView, new LinearLayout.LayoutParams(-1, -1));
    }
    if (paramArrayList.size() <= 1)
    {
      this.cUl.setVisibility(4);
      return;
    }
    this.cUl.setVisibility(0);
    this.cUl.mX(paramArrayList.size());
    this.cUl.mY(0);
  }

  private void y(ArrayList paramArrayList)
  {
    this.cUk.removeAllViews();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      GridView localGridView = (GridView)localIterator.next();
      this.cUk.addView(localGridView, new LinearLayout.LayoutParams(-1, -1));
    }
    if (paramArrayList.size() <= 1)
    {
      this.cUl.setVisibility(4);
      return;
    }
    this.cUl.setVisibility(0);
    this.cUl.mX(paramArrayList.size());
    this.cUl.mY(0);
  }

  public final void G(String paramString, boolean paramBoolean)
  {
    aa.d("MicroMsg.SmileyPanel", "[swicthToPanel] productId:%s", new Object[] { paramString });
    if (TextUtils.isEmpty(paramString));
    do
    {
      return;
      if (!paramString.equals("TAG_DEFAULT_TAB"))
        break;
    }
    while ((this.fmh == 0) || (this.fmi == 0));
    if ((this.fme == null) || (this.fme.size() <= 0))
    {
      this.fme = new ArrayList();
      if (arB() != 2)
        break label98;
      cl(false);
    }
    while (true)
    {
      x(this.fme);
      return;
      label98: cl(true);
    }
    H(paramString, paramBoolean);
  }

  public final void LD()
  {
    aa.i("MicroMsg.SmileyPanel", "finishDownloadImage, reload radio group view");
    this.mHandler.sendEmptyMessage(0);
  }

  public final void aqY()
  {
    this.fmg = false;
    arC();
  }

  public final void aqZ()
  {
    this.fmt = null;
    this.fki = null;
    if ((this.fmf != null) && (this.fmf.size() > 0))
    {
      Iterator localIterator1 = this.fmf.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((ArrayList)localIterator1.next()).iterator();
        while (localIterator2.hasNext())
          ((SmileySubGrid)localIterator2.next()).arG();
      }
      this.fmf.clear();
    }
  }

  public final void arD()
  {
    if (this.fmr)
    {
      if (this.fms != null)
        this.fms.setVisibility(4);
      if (this.fmn != null)
      {
        TranslateAnimation localTranslateAnimation = new TranslateAnimation(this.fmn.getWidth(), 0.0F, 0.0F, 0.0F);
        localTranslateAnimation.setDuration(250L);
        this.fmn.startAnimation(localTranslateAnimation);
        this.fmn.setVisibility(0);
      }
    }
  }

  public final void ara()
  {
    this.ekH = false;
    arA();
  }

  public final void arb()
  {
    if (this.fmo != null)
      this.fmo.setVisibility(8);
  }

  public final void ch(boolean paramBoolean)
  {
    if (this.fmn != null)
      this.fmn.setEnabled(paramBoolean);
  }

  public final void ci(boolean paramBoolean)
  {
    this.flI = paramBoolean;
    this.flJ = false;
  }

  public final void cj(boolean paramBoolean)
  {
    if (this.fms != null)
      this.fms.setVisibility(8);
    if ((this.fmn != null) && (this.fmn.getVisibility() == 0))
    {
      if (paramBoolean)
      {
        TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, this.fmn.getWidth(), 0.0F, 0.0F);
        localTranslateAnimation.setDuration(250L);
        this.fmn.startAnimation(localTranslateAnimation);
      }
      this.fmn.setVisibility(8);
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if ((paramConfiguration.orientation == 1) || (paramConfiguration.orientation == 2))
      aqY();
  }

  public final void onPause()
  {
    this.fmj = true;
    this.ekH = false;
    be.uz().sr().set(-29414086, this.fmm);
    be.uz().sr().set(-29414083, Integer.valueOf(this.cUk.aGP()));
    com.tencent.mm.pluginsdk.h.apj().b(this);
  }

  public final void onResume()
  {
    if ((!cj.hX(this.fmm)) && (this.fmm.equals(String.valueOf(w.ggX))))
      H(this.fmm, true);
    if (this.fmj)
    {
      arA();
      this.fmj = false;
    }
    com.tencent.mm.pluginsdk.h.apj().a(this);
  }

  public final void reset()
  {
    if ((!TextUtils.isEmpty(this.fmm)) && (this.fmm.equals("TAG_DEFAULT_TAB")))
    {
      if (this.fki != null)
        this.fki.bB(true);
      arD();
      return;
    }
    if (this.fki != null)
      this.fki.bB(false);
    cj(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.SmileyPanel
 * JD-Core Version:    0.6.2
 */