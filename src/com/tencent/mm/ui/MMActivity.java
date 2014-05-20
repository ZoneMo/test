package com.tencent.mm.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.c.a.hk;
import com.tencent.mm.c.a.m;
import com.tencent.mm.c.a.o;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.ui.base.ej;
import com.tencent.mm.ui.tools.eo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;

public abstract class MMActivity extends ActionBarActivity
{
  private static boolean gnn = false;
  private static MMActivity gno;
  private static boolean gnp = false;
  private static int gnu = 0;
  private static int gnv = 0;
  private AudioManager cBR;
  private View cYm;
  String className;
  private LayoutInflater dLe;
  private eo diw;
  private int eNl;
  private View elv;
  private final long gmE = 300L;
  private View gmP;
  private View gmQ;
  private LinearLayout gmR;
  private RelativeLayout gmS;
  private View gmT;
  private TextView gmU;
  private FrameLayout gmV;
  private final int gmW = 50;
  private boolean gmX = true;
  private String gmY = " ";
  private int gmZ = 0;
  private br gnA = null;
  private int gna = 0;
  private com.tencent.mm.ui.widget.a gnb = null;
  private com.tencent.mm.ui.widget.a gnc = null;
  private com.tencent.mm.ui.widget.a gnd = null;
  private com.tencent.mm.ui.widget.a gne = null;
  private boolean gnf = false;
  private boolean gng = false;
  private int gnh = 0;
  protected boolean gni = false;
  protected Handler gnj = new Handler(Looper.getMainLooper());
  private boolean gnk;
  private bs gnl = new bs((byte)0);
  private LinkedList gnm = new LinkedList();
  private ArrayList gnq;
  private hk gnr = null;
  private com.tencent.mm.sdk.b.g gns = new be(this);
  private Intent gnt = new Intent("com.tencent.mm.ui.TOP_MARGIN_LAYOUT");
  private int gnw = 0;
  private bs gnx;
  private MenuItem gny;
  private long gnz = SystemClock.elapsedRealtime();
  private ActionBar ha;

  private void a(int paramInt1, int paramInt2, String paramString, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener, View.OnLongClickListener paramOnLongClickListener, bt parambt)
  {
    bs localbs = new bs((byte)0);
    localbs.gnH = paramInt1;
    localbs.gnI = paramInt2;
    localbs.text = paramString;
    localbs.eam = paramOnMenuItemClickListener;
    localbs.gnM = paramOnLongClickListener;
    localbs.gnL = parambt;
    if ((localbs.gnI == com.tencent.mm.h.afQ) && (cj.hX(paramString)))
      localbs.text = getString(n.bqg);
    int i = localbs.gnH;
    for (int j = 0; ; j++)
      if (j < this.gnm.size())
      {
        if (((bs)this.gnm.get(j)).gnH == i)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(i);
          aa.e("MicroMsg.MMActivity", "match menu, id %d, remove it", arrayOfObject);
          this.gnm.remove(j);
        }
      }
      else
      {
        this.gnm.add(localbs);
        new Handler().postDelayed(new bi(this), 200L);
        return;
      }
  }

  private void a(int paramInt, boolean paramBoolean1, String paramString1, String paramString2, boolean paramBoolean2)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.MMActivity", "initNotifyView viewid %d", arrayOfObject1);
    if (!aEW())
      break label31;
    label31: 
    while (((!paramBoolean1) && (this.gmT == null)) || ((this.ha != null) && (!this.ha.isShowing())))
      return;
    if (this.gmV == null)
      this.gmV = ((FrameLayout)this.cYm.findViewById(i.aBt));
    if (this.gmT != null)
      this.gmV.removeView(this.gmT);
    int i = k.aXp;
    if (paramInt > 0);
    while (true)
    {
      this.gmT = this.dLe.inflate(paramInt, null);
      this.gmU = ((TextView)this.gmT.findViewById(i.aCY));
      this.gmT.findViewById(i.aCU).setOnClickListener(new bj(this));
      this.gmT.setVisibility(8);
      this.gmT.setOnClickListener(new bk(this, paramString1));
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, e.a(this, 47.0F));
      int j;
      if ((this.elv != null) && (this.elv.getHeight() > 0))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.elv.getHeight());
        aa.e("MicroMsg.MMActivity", "titleView.getHeight() = [%s]", arrayOfObject2);
        localLayoutParams.gravity = 48;
        localLayoutParams.topMargin = this.elv.getHeight();
        this.gmV.addView(this.gmT, this.gmV.getChildCount(), localLayoutParams);
        if (this.gmT == null)
          break;
        if (!paramBoolean2)
          break label479;
        View localView = this.gmT;
        if (!paramBoolean1)
          break label460;
        j = 0;
        label315: localView.setVisibility(j);
        String str = getString(n.bpe);
        if (cj.hX(paramString2))
          paramString2 = getString(n.bpd);
        if (paramString1 == null)
          break label467;
        SpannableString localSpannableString = new SpannableString(paramString2 + str);
        localSpannableString.setSpan(new ForegroundColorSpan(-10119449), paramString2.length(), paramString2.length() + str.length(), 33);
        this.gmU.setText(localSpannableString);
      }
      while (true)
      {
        this.gmT.invalidate();
        this.gmV.invalidate();
        return;
        localLayoutParams.gravity = 48;
        localLayoutParams.topMargin = e.a(this, 50.0F);
        break;
        label460: j = 8;
        break label315;
        label467: this.gmU.setText(paramString2);
      }
      label479: this.gmT.post(new bl(this, paramBoolean1, paramString2, paramString1));
      return;
      paramInt = i;
    }
  }

  private void a(MenuItem paramMenuItem, bs parambs)
  {
    if (!this.gmX)
      aa.w("MicroMsg.MMActivity", "callMenuCallback screen not enable.");
    while (parambs.eam == null)
      return;
    parambs.eam.onMenuItemClick(paramMenuItem);
  }

  private void a(boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    boolean bool1;
    if (paramBoolean1)
    {
      Iterator localIterator2 = this.gnm.iterator();
      bool1 = false;
      if (!localIterator2.hasNext())
        break label131;
      bs localbs2 = (bs)localIterator2.next();
      if (localbs2.cQJ == paramBoolean2)
        break label212;
      localbs2.cQJ = paramBoolean2;
    }
    label131: label205: label212: for (boolean bool4 = true; ; bool4 = bool1)
    {
      bool1 = bool4;
      break;
      Iterator localIterator1 = this.gnm.iterator();
      bool1 = false;
      if (localIterator1.hasNext())
      {
        bs localbs1 = (bs)localIterator1.next();
        if ((localbs1.gnH != paramInt) || (localbs1.cQJ == paramBoolean2))
          break label205;
        localbs1.cQJ = paramBoolean2;
      }
      for (boolean bool3 = true; ; bool3 = bool1)
      {
        bool1 = bool3;
        break;
        if (this.diw == null);
        for (boolean bool2 = false; ; bool2 = this.diw.aNF())
        {
          if (!bool2)
            u();
          Object[] arrayOfObject = new Object[3];
          arrayOfObject[0] = Integer.valueOf(paramInt);
          arrayOfObject[1] = Boolean.valueOf(bool1);
          arrayOfObject[2] = Boolean.valueOf(bool2);
          aa.f("MicroMsg.MMActivity", "enable option menu, target id %d, changed %B, searching %B", arrayOfObject);
          return;
        }
      }
    }
  }

  public static void aEX()
  {
    gnn = true;
  }

  private void aFb()
  {
    String str1 = "%s";
    int i = getResources().getDimensionPixelSize(com.tencent.mm.g.aaK);
    if (this.gmZ != 0)
      str1 = "# " + str1;
    String str2;
    if (this.gna != 0)
      str2 = str1 + " #";
    for (int j = 1; ; j = 0)
    {
      String str3;
      int k;
      if (this.gnf)
      {
        String str6 = str2 + " #";
        int i8 = j + 2;
        str3 = str6;
        k = i8;
      }
      for (int m = 1; ; m = 0)
      {
        String str4;
        int n;
        int i1;
        if (this.gng)
        {
          String str5 = str3 + " #";
          int i6 = m + 2;
          int i7 = k + 2;
          str4 = str5;
          n = i7;
          i1 = i6;
        }
        for (int i2 = 1; ; i2 = 0)
        {
          aa.f("MicroMsg.MMActivity", "span title format %s", new Object[] { str4 });
          Activity localActivity = aal();
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.gmY;
          SpannableString localSpannableString = b.e(localActivity, String.format(str4, arrayOfObject), i);
          if (this.gmZ != 0)
            localSpannableString.setSpan(this.gnb, 0, 1, 33);
          if (this.gna != 0)
          {
            int i5 = localSpannableString.length() - n;
            localSpannableString.setSpan(this.gnc, i5, i5 + 1, 33);
          }
          if (this.gnf)
          {
            if (this.gnd == null)
              this.gnd = ba(i, com.tencent.mm.h.adc);
            int i4 = localSpannableString.length() - i1;
            localSpannableString.setSpan(this.gnd, i4, i4 + 1, 33);
          }
          if (this.gng)
          {
            if (this.gne == null)
              this.gne = ba(i, com.tencent.mm.h.ade);
            int i3 = localSpannableString.length() - i2;
            localSpannableString.setSpan(this.gne, i3, i3 + 1, 33);
          }
          this.ha.setTitle(localSpannableString);
          return;
          str4 = str3;
          n = k;
          i1 = m;
        }
        str3 = str2;
        k = j;
      }
      str2 = str1;
    }
  }

  private void b(boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    boolean bool1;
    if (paramBoolean1)
    {
      Iterator localIterator2 = this.gnm.iterator();
      bool1 = false;
      if (!localIterator2.hasNext())
        break label131;
      bs localbs2 = (bs)localIterator2.next();
      if (localbs2.visible == paramBoolean2)
        break label212;
      localbs2.visible = paramBoolean2;
    }
    label131: label205: label212: for (boolean bool4 = true; ; bool4 = bool1)
    {
      bool1 = bool4;
      break;
      Iterator localIterator1 = this.gnm.iterator();
      bool1 = false;
      if (localIterator1.hasNext())
      {
        bs localbs1 = (bs)localIterator1.next();
        if ((localbs1.gnH != paramInt) || (localbs1.visible == paramBoolean2))
          break label205;
        localbs1.visible = paramBoolean2;
      }
      for (boolean bool3 = true; ; bool3 = bool1)
      {
        bool1 = bool3;
        break;
        if (this.diw == null);
        for (boolean bool2 = false; ; bool2 = this.diw.aNF())
        {
          if (!bool2)
            u();
          Object[] arrayOfObject = new Object[3];
          arrayOfObject[0] = Integer.valueOf(paramInt);
          arrayOfObject[1] = Boolean.valueOf(bool1);
          arrayOfObject[2] = Boolean.valueOf(bool2);
          aa.f("MicroMsg.MMActivity", "show option menu, target id %d, changed %B, searching %B", arrayOfObject);
          return;
        }
      }
    }
  }

  public static Locale bO(Context paramContext)
  {
    String str = com.tencent.mm.sdk.platformtools.z.a(paramContext.getSharedPreferences(al.azs(), 0));
    if (str.equals("language_default"))
    {
      com.tencent.mm.sdk.platformtools.z.a(paramContext, Locale.ENGLISH);
      return Locale.getDefault();
    }
    Locale localLocale = com.tencent.mm.sdk.platformtools.z.sA(str);
    com.tencent.mm.sdk.platformtools.z.a(paramContext, localLocale);
    return localLocale;
  }

  private com.tencent.mm.ui.widget.a ba(int paramInt1, int paramInt2)
  {
    Drawable localDrawable = getResources().getDrawable(paramInt2);
    localDrawable.setBounds(0, 0, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
    com.tencent.mm.ui.widget.a locala = new com.tencent.mm.ui.widget.a(localDrawable);
    locala.oG((localDrawable.getIntrinsicHeight() - paramInt1) / 2);
    return locala;
  }

  private bs mF(int paramInt)
  {
    Iterator localIterator = this.gnm.iterator();
    while (localIterator.hasNext())
    {
      bs localbs = (bs)localIterator.next();
      if (localbs.gnH == paramInt)
        return localbs;
    }
    return null;
  }

  public static void t(Activity paramActivity)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramActivity.getSystemService("input_method");
    if (localInputMethodManager == null);
    View localView;
    do
    {
      return;
      localView = paramActivity.getCurrentFocus();
    }
    while ((localView == null) || (localView.getWindowToken() == null));
    localInputMethodManager.toggleSoftInput(0, 2);
  }

  @Deprecated
  protected void FR()
  {
  }

  protected int IX()
  {
    return -1;
  }

  protected int Iw()
  {
    return k.aXm;
  }

  public void SM()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    if (localInputMethodManager == null);
    IBinder localIBinder;
    do
    {
      View localView;
      do
      {
        return;
        localView = getCurrentFocus();
      }
      while (localView == null);
      localIBinder = localView.getWindowToken();
    }
    while (localIBinder == null);
    localInputMethodManager.hideSoftInputFromWindow(localIBinder, 0);
  }

  public void UY()
  {
    t(this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    a(paramInt1, paramInt3, getString(paramInt2), paramOnMenuItemClickListener, null, bt.gnN);
  }

  public final void a(int paramInt1, int paramInt2, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    a(paramInt1, paramInt2, "", paramOnMenuItemClickListener, null, bt.gnN);
  }

  public final void a(int paramInt, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener, View.OnLongClickListener paramOnLongClickListener)
  {
    a(0, paramInt, "", paramOnMenuItemClickListener, paramOnLongClickListener, bt.gnN);
  }

  public final void a(int paramInt, String paramString, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    a(paramInt, 0, paramString, paramOnMenuItemClickListener, null, bt.gnN);
  }

  public final void a(Dialog paramDialog)
  {
    if (paramDialog == null)
      return;
    if (this.gnq == null)
      this.gnq = new ArrayList();
    this.gnq.add(paramDialog);
  }

  public void a(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    if (this.ha == null)
      return;
    if (paramOnMenuItemClickListener == null)
    {
      this.ha.setDisplayHomeAsUpEnabled(false);
      this.ha.setLogo(com.tencent.mm.h.abA);
    }
    while (true)
    {
      this.gnl.gnH = 16908332;
      this.gnl.eam = paramOnMenuItemClickListener;
      return;
      this.ha.setDisplayHomeAsUpEnabled(true);
      this.ha.setLogo(com.tencent.mm.h.abB);
    }
  }

  public final void a(br parambr)
  {
    this.gnA = parambr;
  }

  public final void a(br parambr, Intent paramIntent, int paramInt)
  {
    this.gnA = parambr;
    startActivityForResult(paramIntent, paramInt);
  }

  protected final void a(Class paramClass, Intent paramIntent)
  {
    paramIntent.setClass(this, paramClass);
    startActivity(paramIntent);
  }

  public final void a(String paramString, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener, bt parambt)
  {
    a(0, 0, paramString, paramOnMenuItemClickListener, null, parambt);
  }

  public final void a(boolean paramBoolean, eo parameo)
  {
    aa.v("MicroMsg.MMActivity", "add search menu");
    bs localbs = new bs((byte)0);
    localbs.gnH = i.aAZ;
    localbs.gnI = com.tencent.mm.h.abD;
    localbs.eam = null;
    localbs.gnM = null;
    mE(localbs.gnH);
    this.gnm.add(0, localbs);
    this.gnk = paramBoolean;
    this.diw = parameo;
    u();
  }

  protected void aEM()
  {
  }

  protected void aEN()
  {
    setContentView(this.cYm);
  }

  public final int aEO()
  {
    return this.gnw;
  }

  public void aEP()
  {
  }

  public final boolean aEQ()
  {
    return this.gmX;
  }

  protected final void aER()
  {
    this.gmR.removeView(this.gmP);
    if (this.gmV == null)
      this.gmV = ((FrameLayout)this.cYm.findViewById(i.aBt));
    if (this.gmT != null)
      this.gmV.removeView(this.gmT);
    this.gmP = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903275, null);
    this.gmR.addView(this.gmP, -1, -1);
    FrameLayout.LayoutParams localLayoutParams;
    if (this.gmT != null)
    {
      localLayoutParams = new FrameLayout.LayoutParams(-1, e.a(this, 47.0F));
      if ((this.elv == null) || (this.elv.getHeight() <= 0))
        break label205;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.elv.getHeight());
      aa.e("MicroMsg.MMActivity", "titleView.getHeight() = [%s]", arrayOfObject);
      localLayoutParams.gravity = 48;
    }
    for (localLayoutParams.topMargin = this.elv.getHeight(); ; localLayoutParams.topMargin = e.a(this, 50.0F))
    {
      this.gmV.addView(this.gmT, this.gmV.getChildCount(), localLayoutParams);
      this.gmR.invalidate();
      this.gmV.invalidate();
      return;
      label205: localLayoutParams.gravity = 48;
    }
  }

  public final View aES()
  {
    return this.gmP;
  }

  protected final View aET()
  {
    return this.gmS;
  }

  public final int aEU()
  {
    return this.cBR.getStreamVolume(3);
  }

  public final int aEV()
  {
    return this.cBR.getStreamMaxVolume(3);
  }

  public boolean aEW()
  {
    return true;
  }

  public final boolean aEY()
  {
    if ((this.gnl != null) && (this.gnl.cQJ))
    {
      a(null, this.gnl);
      return true;
    }
    return false;
  }

  protected String aEZ()
  {
    return "";
  }

  protected final View aFa()
  {
    return this.dLe.inflate(getLayoutId(), null);
  }

  public final void aFc()
  {
    if (this.gnm.isEmpty())
      return;
    this.gnm.clear();
    u();
  }

  public final void aFd()
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[bool];
    if (this.ha != null);
    while (true)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.f("MicroMsg.MMActivity", "hideTitleView hasTitle:%b", arrayOfObject);
      if (this.ha != null)
        break;
      return;
      bool = false;
    }
    this.ha.hide();
  }

  public final void aFe()
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[bool];
    if (this.ha != null);
    while (true)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.f("MicroMsg.MMActivity", "showTitleView hasTitle:%b", arrayOfObject);
      if (this.ha != null)
        break;
      return;
      bool = false;
    }
    this.ha.show();
  }

  public final boolean aFf()
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[bool];
    if (this.ha != null);
    while (true)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.f("MicroMsg.MMActivity", "isTitleShowing hasTitle:%b", arrayOfObject);
      if (this.ha != null)
        break;
      return false;
      bool = false;
    }
    return this.ha.isShowing();
  }

  public final int aFg()
  {
    if (this.ha == null)
      return 0;
    return this.ha.getHeight();
  }

  public Activity aal()
  {
    if (getParent() != null)
      this = getParent();
    return this;
  }

  public final void af(View paramView)
  {
    if (paramView == null);
    InputMethodManager localInputMethodManager;
    IBinder localIBinder;
    do
    {
      do
      {
        return;
        localInputMethodManager = (InputMethodManager)getSystemService("input_method");
      }
      while (localInputMethodManager == null);
      localIBinder = paramView.getWindowToken();
    }
    while (localIBinder == null);
    localInputMethodManager.hideSoftInputFromWindow(localIBinder, 0);
  }

  public final void ag(boolean paramBoolean)
  {
    boolean bool1 = true;
    this.gmX = paramBoolean;
    View localView1 = this.gmQ;
    boolean bool2;
    View localView2;
    if (!paramBoolean)
    {
      bool2 = bool1;
      localView1.setFocusable(bool2);
      localView2 = this.gmQ;
      if (paramBoolean)
        break label68;
    }
    while (true)
    {
      localView2.setFocusableInTouchMode(bool1);
      if (paramBoolean)
        break label73;
      this.gmQ.setVisibility(0);
      this.gmQ.requestFocus();
      return;
      bool2 = false;
      break;
      label68: bool1 = false;
    }
    label73: this.gmQ.setVisibility(8);
  }

  public final void bb(int paramInt1, int paramInt2)
  {
    bs localbs = mF(paramInt1);
    if ((localbs != null) && (localbs.gnI != paramInt2))
    {
      localbs.gnI = paramInt2;
      u();
    }
  }

  public void dc(boolean paramBoolean)
  {
    if ((!gnn) && (paramBoolean))
    {
      ej.a(this, paramBoolean, new Intent().putExtra("classname", getClass().getName()).putExtra("main_process", false));
      return;
    }
    ej.a(this, paramBoolean, new Intent().putExtra("classname", getClass().getName() + aEZ()));
  }

  public final void dd(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (this.ha != null)
        this.ha.hide();
      this.gnj.postDelayed(new bf(this), 256L);
      return;
    }
    getWindow().clearFlags(1024);
    this.gnj.postDelayed(new bg(this), 256L);
  }

  public final void de(boolean paramBoolean)
  {
    if (this.ha == null)
      return;
    this.ha.setDisplayHomeAsUpEnabled(paramBoolean);
  }

  public final void df(boolean paramBoolean)
  {
    if (this.gnl == null);
    while (this.gnl.cQJ == paramBoolean)
      return;
    this.gnl.cQJ = paramBoolean;
    u();
  }

  public final void dg(boolean paramBoolean)
  {
    a(true, -1, paramBoolean);
  }

  public final void dh(boolean paramBoolean)
  {
    b(true, -1, paramBoolean);
  }

  protected final void e(Class paramClass)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, paramClass);
    startActivity(localIntent);
  }

  public void finish()
  {
    super.finish();
    int i = getIntent().getIntExtra("MMActivity.OverrideEnterAnimation", -1);
    int j = getIntent().getIntExtra("MMActivity.OverrideExitAnimation", -1);
    if (i != -1)
      overridePendingTransition(i, j);
  }

  protected final View getContentView()
  {
    return this.cYm;
  }

  protected abstract int getLayoutId();

  public final void l(int paramInt, boolean paramBoolean)
  {
    a(false, paramInt, paramBoolean);
  }

  public final void m(int paramInt, boolean paramBoolean)
  {
    b(false, paramInt, paramBoolean);
  }

  public final void mA(int paramInt)
  {
    if (this.cYm == null)
      return;
    if (this.gmV == null)
      this.gmV = ((FrameLayout)this.cYm.findViewById(i.aBt));
    this.gmV.setBackgroundResource(paramInt);
    this.gmR.setBackgroundResource(paramInt);
  }

  public final void mB(int paramInt)
  {
    if (this.ha == null)
      return;
    if (paramInt == 0)
    {
      this.ha.show();
      return;
    }
    this.ha.hide();
  }

  public final void mC(int paramInt)
  {
    if (this.ha == null)
      return;
    this.ha.setSubtitle(paramInt);
  }

  public final void mD(int paramInt)
  {
    if (this.ha == null)
      return;
    this.gmZ = 0;
    this.gnb = null;
    if (paramInt == 0)
    {
      this.gna = 0;
      this.gnc = null;
    }
    while (true)
    {
      aFb();
      return;
      if (this.gna != paramInt)
      {
        this.gna = paramInt;
        this.gnc = ba(getResources().getDimensionPixelSize(com.tencent.mm.g.aaK), this.gna);
      }
    }
  }

  public final boolean mE(int paramInt)
  {
    for (int i = 0; ; i++)
    {
      int j = this.gnm.size();
      boolean bool = false;
      if (i < j)
      {
        if (((bs)this.gnm.get(i)).gnH == paramInt)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(paramInt);
          aa.e("MicroMsg.MMActivity", "match menu, id %d, remove it", arrayOfObject);
          this.gnm.remove(i);
          u();
          bool = true;
        }
      }
      else
        return bool;
    }
  }

  public void mG(int paramInt)
  {
    if (paramInt == 0);
    for (boolean bool = true; ; bool = false)
    {
      this.gnf = bool;
      aFb();
      return;
    }
  }

  public void mm(int paramInt)
  {
    if (paramInt == 0);
    for (boolean bool = true; ; bool = false)
    {
      this.gng = bool;
      aFb();
      return;
    }
  }

  public void mn(int paramInt)
  {
    vT(getString(paramInt));
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.gnA != null)
      this.gnA.b(paramInt1, paramInt2, paramIntent);
    this.gnA = null;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aEM();
    this.className = getClass().getName();
    fc.w(3, this.className);
    bO(getBaseContext());
    this.cBR = ((AudioManager)getSystemService("audio"));
    this.eNl = this.cBR.getStreamMaxVolume(3);
    this.dLe = LayoutInflater.from(this);
    this.cYm = this.dLe.inflate(k.aWn, null);
    this.gmR = ((LinearLayout)this.cYm.findViewById(i.aBB));
    this.gmS = ((RelativeLayout)this.cYm.findViewById(i.aBu));
    this.gmQ = this.cYm.findViewById(i.aBC);
    this.gnh = getResources().getDimensionPixelSize(com.tencent.mm.g.aaX);
    int i = Iw();
    if (i != -1)
    {
      this.elv = this.dLe.inflate(i, null);
      this.gmR.addView(this.elv, -1, -2);
      this.elv.setVisibility(8);
    }
    if (getLayoutId() != -1)
    {
      this.gmP = aFa();
      this.gmR.addView(this.gmP, -1, -1);
      aEN();
    }
    this.ha = aW();
    if (this.ha != null)
    {
      this.ha.setTitle(n.amt);
      if (Build.VERSION.SDK_INT < 11)
        this.ha.setBackgroundDrawable(new ColorDrawable(getResources().getColor(com.tencent.mm.f.ZK)));
      this.ha.setLogo(com.tencent.mm.h.abA);
    }
    ScrollView localScrollView = (ScrollView)findViewById(i.aBs);
    if (localScrollView != null)
      localScrollView.setOnTouchListener(new bm(this));
    LayoutListenerView localLayoutListenerView = (LayoutListenerView)findViewById(i.aBr);
    if (localLayoutListenerView != null)
    {
      localLayoutListenerView.a(new bn(this, localLayoutListenerView));
      if ((0x10 & getWindow().getAttributes().softInputMode) != 0)
        localLayoutListenerView.a(new bo(this));
    }
    m localm = new m();
    localm.bLU.type = 2;
    com.tencent.mm.sdk.b.a.ayH().f(localm);
    if (localm.bLV.bLZ == 2)
      a(localm.bLV.bMb, localm.bLV.visible, localm.bLV.url, localm.bLV.desc, true);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.gnm.size());
    aa.e("MicroMsg.MMActivity", "on create option menu, menuCache size:%d", arrayOfObject1);
    if (this.ha == null)
    {
      aa.w("MicroMsg.MMActivity", "error, mActionBar is null");
      return false;
    }
    this.gnx = null;
    this.gny = null;
    int i = this.ha.getHeight();
    int j;
    if (i == 0)
    {
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      if (localDisplayMetrics.widthPixels > localDisplayMetrics.heightPixels)
        j = getResources().getDimensionPixelSize(com.tencent.mm.g.aaM);
    }
    while (true)
    {
      Iterator localIterator = this.gnm.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          bs localbs = (bs)localIterator.next();
          if (localbs.gnH == 16908332)
          {
            aa.v("MicroMsg.MMActivity", "match back option menu, continue");
            continue;
            j = getResources().getDimensionPixelSize(com.tencent.mm.g.aaN);
            break;
          }
          if (localbs.gnH == i.aAZ)
          {
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = Boolean.valueOf(this.gnk);
            if (this.diw == null);
            for (boolean bool = true; ; bool = false)
            {
              arrayOfObject3[1] = Boolean.valueOf(bool);
              aa.f("MicroMsg.MMActivity", "match search menu, enable search view[%B], search view helper is null[%B]", arrayOfObject3);
              if ((!this.gnk) || (this.diw == null))
                break;
              this.diw.b(this, paramMenu);
              break;
            }
          }
          MenuItem localMenuItem = paramMenu.add(0, localbs.gnH, 0, localbs.text);
          com.tencent.mm.compatible.f.a.a(localMenuItem, getClass().getName());
          bp localbp = new bp(this, localMenuItem, localbs);
          bq localbq = new bq(this, localbs);
          if (localbs.gnI != 0)
          {
            Object localObject;
            if (localbs.gnM != null)
            {
              int k = com.tencent.mm.an.a.fromDPToPix(this, 56);
              if (localbs.gnK == null)
              {
                localObject = new ImageButton(aal());
                ((View)localObject).setLayoutParams(new ViewGroup.LayoutParams(k, j));
                ((View)localObject).setBackgroundResource(com.tencent.mm.h.abC);
                ((View)localObject).setMinimumHeight(j);
                ((View)localObject).setMinimumWidth(k);
                localbs.gnK = ((View)localObject);
                label405: ((ImageButton)localObject).setImageResource(localbs.gnI);
                android.support.v4.view.z.a(localMenuItem, (View)localObject);
                ViewGroup.LayoutParams localLayoutParams = ((View)localObject).getLayoutParams();
                localLayoutParams.width = k;
                localLayoutParams.height = j;
                ((View)localObject).setOnClickListener(localbp);
                ((View)localObject).setOnLongClickListener(localbq);
                ((View)localObject).setEnabled(localbs.cQJ);
              }
            }
            while (true)
            {
              localMenuItem.setEnabled(localbs.cQJ);
              localMenuItem.setVisible(localbs.visible);
              android.support.v4.view.z.a(localMenuItem, 2);
              if (localbs.gnI == com.tencent.mm.h.afQ)
              {
                this.gnx = localbs;
                this.gny = localMenuItem;
              }
              Object[] arrayOfObject2 = new Object[4];
              arrayOfObject2[0] = Integer.valueOf(localbs.gnH);
              arrayOfObject2[1] = localbs.text;
              arrayOfObject2[2] = Boolean.valueOf(localbs.cQJ);
              arrayOfObject2[3] = Boolean.valueOf(localbs.visible);
              aa.f("MicroMsg.MMActivity", "set %d %s option menu enable %B, visible %B", arrayOfObject2);
              break;
              localObject = localbs.gnK;
              break label405;
              localMenuItem.setIcon(localbs.gnI);
            }
          }
          if (localbs.gnJ == null)
            localbs.gnJ = View.inflate(aal(), k.aSc, null);
          TextView localTextView;
          if (localbs.gnL == bt.gnP)
          {
            localbs.gnJ.findViewById(i.akS).setVisibility(8);
            localbs.gnJ.findViewById(i.divider).setVisibility(8);
            localTextView = (TextView)localbs.gnJ.findViewById(i.akT);
            localTextView.setBackgroundResource(com.tencent.mm.h.acZ);
            localTextView.setPadding(this.gnh, 0, this.gnh, 0);
          }
          while (true)
          {
            localTextView.setVisibility(0);
            localTextView.setText(localbs.text);
            localTextView.setOnClickListener(localbp);
            localTextView.setOnLongClickListener(localbq);
            localTextView.setEnabled(localbs.cQJ);
            android.support.v4.view.z.a(localMenuItem, localbs.gnJ);
            break;
            if (localbs.gnL == bt.gnO)
            {
              localbs.gnJ.findViewById(i.akS).setVisibility(8);
              localbs.gnJ.findViewById(i.divider).setVisibility(8);
              localTextView = (TextView)localbs.gnJ.findViewById(i.akT);
              localTextView.setBackgroundResource(com.tencent.mm.h.acX);
              localTextView.setPadding(this.gnh, 0, this.gnh, 0);
            }
            else
            {
              localbs.gnJ.findViewById(i.akT).setVisibility(8);
              localbs.gnJ.findViewById(i.divider).setVisibility(0);
              localTextView = (TextView)localbs.gnJ.findViewById(i.akS);
            }
          }
        }
      return super.onCreateOptionsMenu(paramMenu);
      j = i;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    com.tencent.mm.sdk.platformtools.h.ad(this.cYm);
    if (this.gnq != null)
    {
      int i = this.gnq.size();
      for (int j = 0; j < i; j++)
      {
        Dialog localDialog = (Dialog)this.gnq.get(j);
        if ((localDialog != null) && (localDialog.isShowing()))
          localDialog.dismiss();
      }
      this.gnq.clear();
      this.gnq = null;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 25)
    {
      int k = this.cBR.getStreamVolume(3);
      int m = this.eNl / 7;
      if (m == 0)
        m = 1;
      this.cBR.setStreamVolume(3, k - m, 5);
      return true;
    }
    if (paramInt == 24)
    {
      int i = this.cBR.getStreamVolume(3);
      if (i >= this.eNl)
      {
        aa.i("MicroMsg.MMActivity", "has set the max volume");
        return true;
      }
      int j = this.eNl / 7;
      if (j == 0)
        j = 1;
      this.cBR.setStreamVolume(3, j + i, 5);
      return true;
    }
    if ((this.gnk) && (this.diw != null) && (this.diw.onKeyDown(paramInt, paramKeyEvent)))
    {
      aa.d("MicroMsg.MMActivity", "match search view on key down");
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) && (paramKeyEvent.getAction() == 1))
    {
      if ((this.gnx != null) && (this.gnx.cQJ))
        a(this.gny, this.gnx);
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    aa.v("MicroMsg.MMActivity", "on options item selected");
    if (!this.gmX)
      aa.w("MicroMsg.MMActivity", "onOptionsItemSelected screen not enable.");
    bs localbs;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return true;
        if ((paramMenuItem.getItemId() == this.gnl.gnH) && (this.gnl.cQJ))
        {
          a(paramMenuItem, this.gnl);
          return true;
        }
        localIterator = this.gnm.iterator();
      }
      localbs = (bs)localIterator.next();
    }
    while (paramMenuItem.getItemId() != localbs.gnH);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramMenuItem.getItemId());
    aa.e("MicroMsg.MMActivity", "on option menu %d click", arrayOfObject);
    a(paramMenuItem, localbs);
    return true;
  }

  protected void onPause()
  {
    long l = System.currentTimeMillis();
    fc.w(2, this.className);
    super.onPause();
    gno = null;
    dc(false);
    com.tencent.mm.sdk.b.a.ayH().b("UINotify", this.gns);
    aa.v("MicroMsg.INIT", "KEVIN MMActivity onPause:" + (System.currentTimeMillis() - l));
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    aa.d("MicroMsg.MMActivity", "on prepare option menu");
    if ((this.gnk) && (this.diw != null))
      this.diw.a(this, paramMenu);
    return super.onPrepareOptionsMenu(paramMenu);
  }

  protected void onResume()
  {
    long l1 = System.currentTimeMillis();
    fc.w(1, this.className);
    super.onResume();
    aa.v("MicroMsg.INIT", "KEVIN MMActivity super.onResume " + (System.currentTimeMillis() - l1));
    gno = this;
    dc(true);
    com.tencent.mm.sdk.b.a.ayH().a("UINotify", this.gns);
    m localm = new m();
    localm.bLU.type = 2;
    com.tencent.mm.sdk.b.a.ayH().f(localm);
    if (localm.bLV.bLZ == 2)
    {
      long l2 = System.currentTimeMillis();
      a(localm.bLV.bMb, localm.bLV.visible, localm.bLV.url, localm.bLV.desc, true);
      aa.v("MicroMsg.INIT", "KEVIN MMActivity onResume initNotifyView:" + (System.currentTimeMillis() - l2));
    }
    aa.v("MicroMsg.INIT", "KEVIN MMActivity onResume :" + (System.currentTimeMillis() - l1));
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT < 11)
      super.onSaveInstanceState(paramBundle);
  }

  public void onStart()
  {
    if (IX() == -1)
    {
      this.gni = getSharedPreferences(al.azs(), 0).getBoolean("settings_landscape_mode", false);
      if (this.gni)
        setRequestedOrientation(-1);
    }
    while (true)
    {
      super.onStart();
      return;
      setRequestedOrientation(1);
      continue;
      setRequestedOrientation(IX());
    }
  }

  public final void s(Runnable paramRunnable)
  {
    if ((this.ha == null) || (paramRunnable == null))
      return;
    this.ha.setCustomView(k.baK);
    this.ha.aU();
    this.ha.getCustomView().setOnClickListener(new bh(this, paramRunnable));
  }

  public final void v(int paramInt, String paramString)
  {
    bs localbs = mF(paramInt);
    if ((localbs != null) && (!cj.R(paramString, "").equals(localbs.text)))
    {
      localbs.text = paramString;
      u();
    }
  }

  public void vT(String paramString)
  {
    if (this.ha == null)
      return;
    this.gmY = paramString;
    aFb();
  }

  public final void vU(String paramString)
  {
    if (this.ha == null)
      return;
    this.ha.setSubtitle(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.MMActivity
 * JD-Core Version:    0.6.2
 */