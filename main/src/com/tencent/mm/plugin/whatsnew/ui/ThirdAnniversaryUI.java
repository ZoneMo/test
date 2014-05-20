package com.tencent.mm.plugin.whatsnew.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.m.p;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ay;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;

public class ThirdAnniversaryUI extends Activity
  implements p, com.tencent.mm.n.m
{
  private ay cBV = new ay(new a(this), false);
  private boolean cgf = false;
  private ImageView cqS;
  private int ffA;
  private int ffB;
  private final int ffC = 30;
  private SparseArray ffD = new SparseArray();
  private Bitmap ffE;
  private int ffg = 0;
  private int ffh = 0;
  private LinearLayout ffi;
  private WhatsnewScrollView ffj;
  private RelativeLayout ffk;
  private ImageView ffl;
  private View ffm;
  private View ffn;
  private View ffo;
  private Animation ffp;
  private m ffq;
  private com.tencent.mm.plugin.whatsnew.a.a ffr;
  private int ffs;
  private int fft;
  private int ffu;
  private int ffv;
  private int ffw;
  private int ffx;
  private int ffy;
  private int ffz;

  private View a(l paraml, View paramView)
  {
    View localView1 = paramView.findViewById(com.tencent.mm.i.ame);
    View localView2 = paramView.findViewById(com.tencent.mm.i.aoV);
    int i = getWindowManager().getDefaultDisplay().getWidth();
    if (paraml == l.ffQ)
    {
      RelativeLayout.LayoutParams localLayoutParams3 = (RelativeLayout.LayoutParams)localView1.getLayoutParams();
      localLayoutParams3.setMargins(localLayoutParams3.leftMargin, localLayoutParams3.topMargin, this.ffq.fgb - this.ffq.fgd / 2, localLayoutParams3.bottomMargin);
      localView1.setLayoutParams(localLayoutParams3);
      RelativeLayout.LayoutParams localLayoutParams4 = (RelativeLayout.LayoutParams)localView2.getLayoutParams();
      localLayoutParams4.setMargins(i / 2 - (this.ffq.fgb - this.ffq.fgd / 2) + this.ffq.fgc, localLayoutParams4.topMargin, localLayoutParams4.rightMargin, localLayoutParams4.bottomMargin);
      localView2.setLayoutParams(localLayoutParams4);
      return paramView;
    }
    RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)localView1.getLayoutParams();
    localLayoutParams1.setMargins(localLayoutParams1.leftMargin, localLayoutParams1.topMargin, this.ffq.fgb - this.ffq.fge / 2, localLayoutParams1.bottomMargin);
    localView1.setLayoutParams(localLayoutParams1);
    RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)localView2.getLayoutParams();
    localLayoutParams2.setMargins(i / 2 - (this.ffq.fgb - this.ffq.fge / 2) + this.ffq.fgc, localLayoutParams2.topMargin, localLayoutParams2.rightMargin, localLayoutParams2.bottomMargin);
    localView2.setLayoutParams(localLayoutParams2);
    return paramView;
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, l paraml, String paramString, boolean paramBoolean)
  {
    ArrayList localArrayList1 = (ArrayList)this.ffD.get(paramInt1);
    if (localArrayList1 == null);
    for (ArrayList localArrayList2 = new ArrayList(); ; localArrayList2 = localArrayList1)
    {
      localArrayList2.add(new k(paramInt1, paramInt2, paramInt3, paraml, paramString, paramBoolean));
      this.ffD.put(paramInt1, localArrayList2);
      return;
    }
  }

  private void a(View paramView, k paramk, boolean paramBoolean)
  {
    TextView localTextView1;
    LinearLayout localLinearLayout;
    int i;
    if (!a(paramk))
    {
      TextView localTextView2 = (TextView)paramView.findViewById(com.tencent.mm.i.text);
      int j = n.bHL;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramk.month);
      arrayOfObject[1] = Integer.valueOf(paramk.cQU);
      localTextView2.setText(getString(j, arrayOfObject));
      localTextView1 = (TextView)View.inflate(this, com.tencent.mm.k.bcg, null);
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
      if (paramBoolean)
        localLayoutParams1.setMargins(0, 0, 0, this.ffq.ffY);
      localTextView1.setLayoutParams(localLayoutParams1);
      localTextView1.setTag(paramk);
      localTextView1.setText(paramk.ffO);
      localTextView1.setBackgroundResource(com.tencent.mm.h.akz);
      localLinearLayout = (LinearLayout)paramView.findViewById(com.tencent.mm.i.aoV);
      i = localLinearLayout.getChildCount();
      if (i != 0)
        break label240;
      localLinearLayout.addView(localTextView1);
    }
    while (true)
    {
      if (paramk.ffN != l.ffQ)
      {
        this.cqS = ((ImageView)paramView.findViewById(com.tencent.mm.i.ame));
        if ((this.ffE == null) && (!ape()))
          break label353;
        b(this.cqS, this.ffE);
      }
      return;
      ((TextView)paramView.findViewById(com.tencent.mm.i.text)).setText(n.bHW);
      break;
      label240: if (i == 1)
      {
        View localView = localLinearLayout.getChildAt(0);
        LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)localView.getLayoutParams();
        localLayoutParams2.setMargins(0, 0, 0, this.ffq.ffY);
        localView.setLayoutParams(localLayoutParams2);
      }
      k localk1 = (k)localLinearLayout.getChildAt(i - 1).getTag();
      k localk2 = (k)localTextView1.getTag();
      if ((!localk1.ffP) || (localk2.ffP))
        localLinearLayout.addView(localTextView1);
      else
        localLinearLayout.addView(localTextView1, i - 1);
    }
    try
    {
      label353: Bitmap localBitmap = com.tencent.mm.sdk.platformtools.h.a(al.getContext().getAssets().open("avatar/default_nor_avatar.png"), com.tencent.mm.an.a.getDensity(null));
      b(this.cqS, localBitmap);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private static boolean a(k paramk)
  {
    return (paramk != null) && (paramk.month == 0) && (paramk.cQU == 0);
  }

  private static boolean a(k paramk1, k paramk2)
  {
    return (b(paramk1, paramk2)) && (paramk1.cQU == paramk2.cQU);
  }

  private boolean ape()
  {
    this.ffE = com.tencent.mm.m.c.a(v.th(), false, -1);
    Bitmap localBitmap = this.ffE;
    boolean bool = false;
    if (localBitmap != null)
      bool = true;
    return bool;
  }

  private void apf()
  {
    for (int i = 0; i < this.ffD.size(); i++)
      Collections.sort((ArrayList)this.ffD.valueAt(i), new i(this));
  }

  private RelativeLayout b(ArrayList paramArrayList, boolean paramBoolean)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)View.inflate(this, com.tencent.mm.k.bcc, null);
    if (paramBoolean)
    {
      View localView3 = View.inflate(this, com.tencent.mm.k.bcd, null);
      localView3.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
      localRelativeLayout.addView(a(l.ffQ, localView3));
    }
    Object localObject1 = null;
    int i = 0;
    int j = 0;
    int k = 0;
    Object localObject2 = null;
    k localk;
    boolean bool;
    int i2;
    label106: int m;
    if (j < paramArrayList.size())
    {
      localk = (k)paramArrayList.get(j);
      bool = a((k)localObject1, localk);
      if (localk == null)
      {
        i2 = 0;
        m = k + i2;
        if (!a(localk))
          break label342;
        localObject1 = localk;
      }
    }
    for (int n = 1; ; n = 0)
    {
      int i1;
      if (n == 0)
        i1 = i + Math.abs((int)((360.0F - m) / 360.0F * this.ffq.ffZ));
      while (true)
      {
        localRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, i1));
        View localView2 = localRelativeLayout.findViewById(com.tencent.mm.i.axV);
        RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)localView2.getLayoutParams();
        localLayoutParams2.setMargins(localLayoutParams2.leftMargin, localLayoutParams2.topMargin, this.ffq.fgb - this.ffq.fgf / 2, localLayoutParams2.bottomMargin);
        localView2.setLayoutParams(localLayoutParams2);
        return localRelativeLayout;
        if (localObject1 == null)
        {
          int i5 = 30 * localk.month;
          if (localk.month == 1);
          for (int i6 = (int)(1.0F * this.ffq.ffV); ; i6 = 0)
          {
            i2 = i6 + i5;
            break;
          }
        }
        if (b((k)localObject1, localk))
        {
          i2 = Math.abs(localk.cQU - ((k)localObject1).cQU);
          break label106;
        }
        i2 = 30 * (localk.month - ((k)localObject1).month);
        break label106;
        label342: label368: int i4;
        int i3;
        Object localObject3;
        if (!bool)
          if (localk.ffN == l.ffQ)
          {
            localObject2 = View.inflate(this, com.tencent.mm.k.bcd, null);
            ((View)localObject2).setTag(localk.ffN);
            i4 = i + (int)(i2 / 360.0F * this.ffq.ffZ);
            RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            localLayoutParams3.setMargins(0, i4, 0, 0);
            ((View)localObject2).setLayoutParams(localLayoutParams3);
            localRelativeLayout.addView(a(localk.ffN, (View)localObject2));
            if (localk.ffN != l.ffQ)
              break label516;
            i3 = i4 + this.ffq.ffT;
            localObject3 = localObject2;
          }
        while (true)
        {
          a((View)localObject2, localk, bool);
          j++;
          i = i3;
          localObject2 = localObject3;
          localObject1 = localk;
          k = m;
          break;
          localObject2 = View.inflate(this, com.tencent.mm.k.bcb, null);
          break label368;
          label516: i3 = i4 + this.ffq.ffU;
          localObject3 = localObject2;
          continue;
          i3 = i + this.ffq.ffT;
          localObject3 = localObject2;
        }
        View localView1 = View.inflate(this, com.tencent.mm.k.bcd, null);
        RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -2);
        if (localObject2 == null)
          i += this.ffq.ffX;
        localLayoutParams1.setMargins(0, i, 0, 0);
        localView1.setLayoutParams(localLayoutParams1);
        localRelativeLayout.addView(a(l.ffQ, localView1));
        localView1.setTag(l.ffQ);
        a(localView1, (k)localObject1, false);
        i1 = i + this.ffq.ffT + this.ffq.fga;
        localRelativeLayout.findViewById(com.tencent.mm.i.axV).setBackgroundResource(com.tencent.mm.h.akA);
      }
      m = k;
    }
  }

  private static void b(ImageView paramImageView, Bitmap paramBitmap)
  {
    if ((paramImageView == null) || (paramBitmap == null))
      return;
    paramImageView.setImageBitmap(com.tencent.mm.sdk.platformtools.h.a(paramBitmap, false, paramBitmap.getWidth() / 2));
  }

  private static boolean b(k paramk1, k paramk2)
  {
    return (paramk1 != null) && (paramk2 != null) && (paramk1.year == paramk2.year) && (paramk1.month == paramk2.month);
  }

  private void dR()
  {
    if (!this.cgf)
    {
      this.cgf = true;
      Animation localAnimation1 = AnimationUtils.loadAnimation(this, com.tencent.mm.b.YA);
      Animation localAnimation2 = AnimationUtils.loadAnimation(this, com.tencent.mm.b.YB);
      this.ffk.startAnimation(localAnimation2);
      int i = this.ffg;
      int j = this.ffh;
      a(2011, 1, 21, l.ffQ, getString(n.bHM), false);
      a(2011, 5, 10, l.ffQ, getString(n.bHN), false);
      a(2011, 8, 3, l.ffQ, getString(n.bHO), false);
      a(2011, 10, 1, l.ffQ, getString(n.bHP), false);
      a(2012, 4, 19, l.ffQ, getString(n.bHQ), false);
      a(2013, 8, 5, l.ffQ, getString(n.bHR), false);
      a(2013, 8, 5, l.ffQ, getString(n.bHS), false);
      if (i != 0)
      {
        Date localDate1 = new Date(1000L * i);
        Calendar localCalendar1 = Calendar.getInstance();
        localCalendar1.setTime(localDate1);
        a(localCalendar1.get(1), 1 + localCalendar1.get(2), localCalendar1.get(5), l.ffR, getString(n.bHT), true);
      }
      if (j != 0)
      {
        Date localDate2 = new Date(1000L * j);
        Calendar localCalendar2 = Calendar.getInstance();
        localCalendar2.setTime(localDate2);
        a(localCalendar2.get(1), 1 + localCalendar2.get(2), localCalendar2.get(5), l.ffQ, getString(n.bHU), true);
      }
      apf();
      a(2014, 0, 0, l.ffQ, getString(n.bHV), false);
      localAnimation2.setAnimationListener(new d(this, localAnimation1));
    }
  }

  private void o(int paramInt1, int paramInt2, int paramInt3)
  {
    ((ScrollView)this.ffo.getParent()).scrollTo(0, paramInt1);
    ((ScrollView)this.ffn.getParent()).scrollTo(0, paramInt2);
    ((ScrollView)this.ffm.getParent()).scrollTo(0, paramInt3);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.ffg = ((com.tencent.mm.plugin.whatsnew.a.a)paramx).ffg;
      this.ffh = ((com.tencent.mm.plugin.whatsnew.a.a)paramx).ffh;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(this.ffg);
      arrayOfObject2[1] = Integer.valueOf(this.ffh);
      aa.b("MicroMsg.ThirdAnniversaryUI", "load success, rt : %s, fs : %s", arrayOfObject2);
    }
    while (true)
    {
      if ((this.ffg <= 0) || (ape()))
      {
        this.cBV.azn();
        dR();
      }
      return;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      arrayOfObject1[1] = Integer.valueOf(paramInt2);
      aa.b("MicroMsg.ThirdAnniversaryUI", "load error, type : %s code : %s", arrayOfObject1);
    }
  }

  public final void ei(String paramString)
  {
    if (paramString.equals(v.th()))
    {
      ape();
      if (this.cqS != null)
        this.cqS.post(new j(this));
      af.vJ().b(this);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    setContentView(com.tencent.mm.k.baQ);
    be.uA().a(581, this);
    af.vJ().a(this);
    this.ffq = new m(this);
    this.ffi = ((LinearLayout)findViewById(com.tencent.mm.i.aMR));
    this.ffj = ((WhatsnewScrollView)findViewById(com.tencent.mm.i.aIj));
    this.ffk = ((RelativeLayout)findViewById(com.tencent.mm.i.ayh));
    this.ffl = ((ImageView)findViewById(com.tencent.mm.i.ayj));
    this.ffj.setVisibility(8);
    this.ffk.setVisibility(0);
    this.ffk.setOnTouchListener(new c(this));
    this.ffp = AnimationUtils.loadAnimation(this, com.tencent.mm.b.YW);
    this.ffp.setInterpolator(new LinearInterpolator());
    this.ffl.startAnimation(this.ffp);
    this.ffr = new com.tencent.mm.plugin.whatsnew.a.a();
    be.uA().d(this.ffr);
    this.cBV.bO(10000L);
    this.ffk.getViewTreeObserver().addOnGlobalLayoutListener(new b(this));
  }

  protected void onDestroy()
  {
    af.vJ().b(this);
    be.uA().b(581, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.whatsnew.ui.ThirdAnniversaryUI
 * JD-Core Version:    0.6.2
 */