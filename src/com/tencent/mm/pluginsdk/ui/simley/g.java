package com.tencent.mm.pluginsdk.ui.simley;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.tencent.mm.ao.c;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.SmileyGrid;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.w;
import com.tencent.mm.ui.base.MMRadioImageButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
{
  private final String TAG = "MicroMsg.SmileyPanel.Stg";
  private float cYS = com.tencent.mm.an.a.getDensity(this.mContext);
  private int fmb = this.mContext.getResources().getDimensionPixelSize(com.tencent.mm.g.abs);
  private int fmc = this.mContext.getResources().getDimensionPixelSize(com.tencent.mm.g.abq);
  private int fmd = this.mContext.getResources().getDimensionPixelSize(com.tencent.mm.g.abr);
  private int ftc = com.tencent.mm.an.a.fromDPToPix(this.mContext, SmileyGrid.flx);
  private int ftd = com.tencent.mm.an.a.fromDPToPix(this.mContext, 80);
  private int fte = com.tencent.mm.an.a.fromDPToPix(this.mContext, 48);
  private b ftf = a.fsB;
  private String ftg = "";
  private int fth;
  private boolean fti;
  private boolean ftj;
  private boolean ftk;
  private boolean ftl;
  private boolean ftm;
  private boolean ftn;
  private boolean fto;
  private int ftp;
  private final int ftq = 4;
  private Context mContext = al.getContext();

  public g()
  {
    atL();
    atM();
    a.atq();
  }

  public static int ac(View paramView)
  {
    int i = paramView.hashCode();
    if (i < 0)
      i &= 2147483647;
    return i;
  }

  public static void atD()
  {
    com.tencent.mm.i.i.rX().e(262147, false);
    com.tencent.mm.i.i.rX().e(262149, false);
  }

  private int[] aup()
  {
    int[] arrayOfInt = new int[2];
    if ((this.mContext instanceof Activity))
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((Activity)this.mContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      arrayOfInt[0] = localDisplayMetrics.widthPixels;
      arrayOfInt[1] = localDisplayMetrics.heightPixels;
      return arrayOfInt;
    }
    Display localDisplay = ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay();
    arrayOfInt[0] = localDisplay.getWidth();
    arrayOfInt[1] = localDisplay.getHeight();
    return arrayOfInt;
  }

  public static boolean b(w paramw)
  {
    return (paramw != null) && (paramw.aBn() == 1);
  }

  public static boolean c(w paramw)
  {
    return (paramw != null) && (paramw.aBn() == 0);
  }

  public static j qT(String paramString)
  {
    if (paramString == null)
      return j.ftw;
    if (paramString.equals("TAG_DEFAULT_TAB"))
      return j.ftt;
    if (paramString.equals(String.valueOf(w.ggW)))
      return j.ftu;
    if (paramString.equals(String.valueOf(w.ggX)))
      return j.ftv;
    return j.ftw;
  }

  private int qU(String paramString)
  {
    if ("TAG_DEFAULT_TAB".equals(paramString))
      return this.fte;
    return this.ftc;
  }

  public final i a(ImageView paramImageView, w paramw)
  {
    if (paramw == null)
      return null;
    i locali = new i();
    switch (h.ftr[qT(paramw.aBb()).ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return locali;
      locali.resource = com.tencent.mm.h.aee;
      continue;
      locali.resource = com.tencent.mm.h.aea;
      continue;
      locali.resource = com.tencent.mm.h.aec;
      continue;
      if (!b(paramw))
        locali.WE = com.tencent.mm.pluginsdk.h.apj().a(paramImageView, paramw.aBb(), 5, paramw.aBd(), this.fmd);
      else
        locali.WE = com.tencent.mm.pluginsdk.h.apj().a(paramImageView, paramw.aBb(), 6, "", this.fmd);
    }
  }

  public final void a(String paramString, k paramk, MMRadioImageButton paramMMRadioImageButton, boolean paramBoolean)
  {
    if (this.ftf.fsC == null)
      return;
    Object localObject;
    if (paramMMRadioImageButton == null)
    {
      localObject = null;
      this.ftf.fsC.add(localObject);
      aa.d("MicroMsg.SmileyPanel.Stg", "add Tab: %s", new Object[] { paramString });
      return;
    }
    int i = this.ftf.fsC.size();
    if (i <= 0);
    for (q localq = null; ; localq = (q)this.ftf.fsC.get(i - 1))
    {
      if (paramMMRadioImageButton != null)
        break label106;
      localObject = null;
      break;
    }
    label106: if (localq == null);
    for (int j = 0; ; j = localq.att() + localq.atw())
    {
      localObject = new q(paramString, j, this, paramk, paramMMRadioImageButton, paramBoolean);
      break;
    }
  }

  public final void a(String paramString, k paramk, MMRadioImageButton paramMMRadioImageButton, boolean paramBoolean, int paramInt)
  {
    if (this.ftf.fsC == null);
    label160: label186: 
    while (true)
    {
      return;
      int i;
      if ((paramInt <= 0) || (this.ftf.fsC.size() <= 1))
      {
        i = 0;
        if (paramMMRadioImageButton != null)
          break label160;
      }
      for (Object localObject = null; ; localObject = new q(paramString, i, this, paramk, paramMMRadioImageButton, paramBoolean))
      {
        if (localObject == null)
          break label186;
        this.ftf.fsC.remove(paramInt);
        this.ftf.fsC.add(paramInt, localObject);
        aa.d("MicroMsg.SmileyPanel.Stg", "replace Tab: %s", new Object[] { paramString });
        return;
        int j = this.ftf.fsC.size();
        if (paramInt > j);
        while (true)
        {
          q localq = (q)this.ftf.fsC.get(j - 1);
          i = localq.att() + localq.atw();
          break;
          j = paramInt;
        }
        if (i < 0)
          i = 0;
      }
    }
  }

  public final int ab(String paramString, int paramInt)
  {
    return (this.ftf.fsH - paramInt * qU(paramString)) / (paramInt + 1);
  }

  public final ArrayList atE()
  {
    ArrayList localArrayList = com.tencent.mm.pluginsdk.h.apj().KX();
    this.ftf.fsE = System.currentTimeMillis();
    this.ftf.fsD = localArrayList;
    return localArrayList;
  }

  public final long atF()
  {
    return this.ftf.fsE;
  }

  public final int atG()
  {
    return this.fmb;
  }

  public final int atH()
  {
    return this.fmc;
  }

  public final int atI()
  {
    return this.fmd;
  }

  public final String atJ()
  {
    return this.ftg;
  }

  public final void atK()
  {
    if (cj.hX(this.ftg));
    while (this.ftn)
      return;
    aa.d("MicroMsg.SmileyPanel.Stg", "save product Id");
    be.uz().sr().set(-29414086, this.ftg);
  }

  public final void atL()
  {
    this.ftg = ((String)be.uz().sr().get(-29414086, "TAG_DEFAULT_TAB"));
  }

  public final void atM()
  {
    this.fth = ((Integer)be.uz().sr().get(-29414083, Integer.valueOf(0))).intValue();
  }

  public final void atN()
  {
    if (this.ftn)
      return;
    aa.d("MicroMsg.SmileyPanel.Stg", "save index Id");
    be.uz().sr().set(-29414083, Integer.valueOf(this.fth));
  }

  public final int atO()
  {
    return this.fth;
  }

  public final int atP()
  {
    return c.bH(this.mContext);
  }

  public final int atQ()
  {
    return c.bI(this.mContext);
  }

  public final boolean atR()
  {
    return this.fti;
  }

  public final boolean atS()
  {
    return this.ftj;
  }

  public final void atT()
  {
    this.ftj = false;
  }

  public final ArrayList atU()
  {
    return this.ftf.fsD;
  }

  public final boolean atV()
  {
    return (((Boolean)be.uz().sr().get(66832, Boolean.valueOf(false))).booleanValue()) && (!this.fto);
  }

  public final int atW()
  {
    String str = this.ftg;
    if (this.ftf.fsC != null)
      for (int i = 0; i < this.ftf.fsC.size(); i++)
      {
        e locale = (e)this.ftf.fsC.get(i);
        if ((locale != null) && (locale.Lg().equals(str)))
          return i;
      }
    return 0;
  }

  public final e atX()
  {
    return qX(this.ftg);
  }

  public final boolean atY()
  {
    return this.ftk;
  }

  public final boolean atZ()
  {
    return this.ftf.fsJ;
  }

  public final void aua()
  {
    this.ftf.fsK = false;
    this.ftf.fsJ = false;
  }

  public final void aub()
  {
    this.ftf.fsJ = true;
    this.ftf.fsK = false;
  }

  public final boolean auc()
  {
    return this.ftf.fsK;
  }

  public final void aud()
  {
    this.ftf.fsK = true;
    this.ftf.fsJ = false;
  }

  public final boolean aue()
  {
    return this.ftl;
  }

  public final boolean auf()
  {
    return this.ftm;
  }

  public final boolean aug()
  {
    return this.ftn;
  }

  public final void auh()
  {
    this.ftn = true;
  }

  public final int aui()
  {
    return this.ftp;
  }

  public final void auj()
  {
    this.ftf.clear();
  }

  public final void auk()
  {
  }

  public final int aul()
  {
    if (this.ftn)
      return qX("TAG_DEFAULT_TAB").atw();
    return this.ftf.fsG;
  }

  public final List aum()
  {
    return this.ftf.fsC;
  }

  public final void aun()
  {
    this.ftf.fsG = 0;
    if (this.ftf.fsC == null)
      return;
    Iterator localIterator = this.ftf.fsC.iterator();
    while (localIterator.hasNext())
    {
      e locale2 = (e)localIterator.next();
      b localb = this.ftf;
      localb.fsG += locale2.atw();
    }
    if (this.ftf.fsC != null)
    {
      this.ftf.fsF = new int[this.ftf.fsG];
      int i = 0;
      int j = 0;
      while (i < this.ftf.fsC.size())
      {
        e locale1 = (e)this.ftf.fsC.get(i);
        int k = 0;
        while (k < locale1.atw())
        {
          if (j >= this.ftf.fsG)
            break label204;
          int[] arrayOfInt = this.ftf.fsF;
          int m = j + 1;
          arrayOfInt[j] = i;
          k++;
          j = m;
        }
        i++;
      }
    }
    label204: Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.ftf.fsG);
    aa.e("MicroMsg.SmileyPanel.Stg", "refreshAllCount count: %d", arrayOfObject);
  }

  public final boolean auo()
  {
    int[] arrayOfInt = aup();
    if (arrayOfInt[0] < arrayOfInt[1]);
    for (int i = 1; i == 1; i = 2)
      return true;
    return false;
  }

  public final void cH(boolean paramBoolean)
  {
    this.fti = paramBoolean;
  }

  public final void cI(boolean paramBoolean)
  {
    this.fto = paramBoolean;
  }

  public final void cJ(boolean paramBoolean)
  {
    this.ftk = paramBoolean;
  }

  public final void cK(boolean paramBoolean)
  {
    this.ftl = paramBoolean;
  }

  public final void cL(boolean paramBoolean)
  {
    this.ftm = paramBoolean;
  }

  public final void kI(int paramInt)
  {
    this.ftf.fsH = paramInt;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.SmileyPanel.Stg", "set viewpager height px: %d", arrayOfObject);
  }

  public final void kJ(int paramInt)
  {
    this.ftf.fsI = paramInt;
  }

  public final e kK(int paramInt)
  {
    if ((this.ftf.fsC == null) || (paramInt >= this.ftf.fsC.size()))
      return null;
    return (e)this.ftf.fsC.get(paramInt);
  }

  public final e kL(int paramInt)
  {
    if (this.ftf.fsC == null)
      return null;
    return (e)this.ftf.fsC.get(kM(paramInt));
  }

  public final int kM(int paramInt)
  {
    if ((paramInt >= this.ftf.fsF.length) || (paramInt <= 0))
      return 0;
    return this.ftf.fsF[paramInt];
  }

  public final void kN(int paramInt)
  {
    this.ftp = paramInt;
  }

  public final View kO(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.SmileyPanel.Stg", "get Item: %d", arrayOfObject);
    q localq = (q)this.ftf.fsC.get(kM(paramInt));
    if (localq == null);
    for (Object localObject = new SmileyGrid(this.mContext); ; localObject = localq.getItem(paramInt - localq.att()))
      return (View)localObject;
  }

  public final void qV(String paramString)
  {
    if (cj.hX(paramString))
      return;
    this.ftg = paramString;
  }

  public final boolean qW(String paramString)
  {
    return (paramString != null) && (this.ftg.equals(paramString));
  }

  public final e qX(String paramString)
  {
    if ((this.ftf.fsC == null) || (paramString == null))
      return null;
    Iterator localIterator = this.ftf.fsC.iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      if (locale == null)
        aa.e("MicroMsg.SmileyPanel.Stg", "get null tab");
      else if (locale.Lg() == null)
        aa.e("MicroMsg.SmileyPanel.Stg", "get null tab productId");
      else if (locale.Lg().equals(paramString))
        return locale;
    }
    return null;
  }

  public final int qY(String paramString)
  {
    int i = this.ftf.fsH;
    int j = 0;
    if (i > 0)
    {
      boolean bool1 = cj.hX(paramString);
      j = 0;
      if (!bool1)
        break label29;
    }
    while (true)
    {
      return j;
      label29: int k = this.ftf.fsH / qU(paramString);
      boolean bool2 = cj.hX(paramString);
      j = 0;
      if (bool2);
      while (k <= j)
      {
        return k;
        if (paramString.equals("TAG_DEFAULT_TAB"))
          j = 3;
        else
          j = 2;
      }
    }
  }

  public final int qZ(String paramString)
  {
    int i = 4;
    if (cj.hX(paramString))
      i = 0;
    int j;
    do
    {
      return i;
      if (paramString.equals("TAG_DEFAULT_TAB"))
      {
        if (auo())
          return 7;
        return 14;
      }
      if (this.ftf.fsH <= 0)
        return 0;
      if (this.ftf.fsI <= 1)
        this.ftf.fsI = aup()[0];
      j = this.ftf.fsI / this.ftd;
      if (!auo())
        break;
    }
    while (j > i);
    return j;
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.g
 * JD-Core Version:    0.6.2
 */