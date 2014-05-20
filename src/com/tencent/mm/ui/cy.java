package com.tencent.mm.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBarActivity;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.mm.c.a.hk;
import com.tencent.mm.c.a.m;
import com.tencent.mm.c.a.o;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.base.MMImageButton;
import com.tencent.mm.ui.base.ej;
import java.util.Locale;

public abstract class cy extends x
{
  private static boolean gnp = false;
  private static int gnu = 0;
  private static int gnv = 0;
  private static cy gok;
  private AudioManager cBR;
  private View cYm;
  private SharedPreferences chz = null;
  String className;
  private LayoutInflater dLe;
  private int eNl;
  private View gmP;
  private View gmQ;
  private LinearLayout gmR;
  private RelativeLayout gmS;
  private View gmT;
  private TextView gmU;
  protected boolean gni = false;
  private hk gnr = null;
  private com.tencent.mm.sdk.b.g gns = new cz(this);
  private Intent gnt = new Intent("com.tencent.mm.ui.TOP_MARGIN_LAYOUT");
  private int gnw = 0;
  protected g goi = null;
  protected ActionBarActivity goj;
  private di gol = null;

  public cy()
  {
  }

  public cy(boolean paramBoolean)
  {
    super(paramBoolean);
  }

  private int Iw()
  {
    if (aFq())
      return k.aWA;
    return k.aXm;
  }

  private void a(int paramInt, boolean paramBoolean1, String paramString1, String paramString2, boolean paramBoolean2)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.MMActivity", "initNotifyView viewid %d", arrayOfObject);
    if ((!paramBoolean1) && (this.gmT == null))
      break label34;
    label34: 
    while (this.goi.aDT().getVisibility() != 0)
      return;
    if (this.gmT != null)
      this.gmR.removeView(this.gmT);
    int i = k.aXp;
    if (paramInt > 0);
    while (true)
    {
      this.gmT = this.dLe.inflate(paramInt, null);
      this.gmU = ((TextView)this.gmT.findViewById(i.aCY));
      this.gmT.findViewById(i.aCU).setOnClickListener(new da(this));
      this.gmT.setVisibility(8);
      this.gmT.setOnClickListener(new db(this, paramString1));
      this.gmR.addView(this.gmT, -1, e.a(f(), 47.0F));
      if (this.gmT == null)
        break;
      if (paramBoolean2)
      {
        View localView = this.gmT;
        int j;
        if (paramBoolean1)
        {
          j = 0;
          localView.setVisibility(j);
          String str = getString(n.bpe);
          if (cj.hX(paramString2))
            paramString2 = getString(n.bpd);
          if (paramString1 == null)
            break label326;
          SpannableString localSpannableString = new SpannableString(paramString2 + str);
          localSpannableString.setSpan(new ForegroundColorSpan(-10119449), paramString2.length(), paramString2.length() + str.length(), 33);
          this.gmU.setText(localSpannableString);
        }
        while (true)
        {
          this.gmT.invalidate();
          this.gmR.invalidate();
          return;
          j = 8;
          break;
          label326: this.gmU.setText(paramString2);
        }
      }
      this.gmT.post(new dc(this, paramBoolean1, paramString2, paramString1));
      return;
      paramInt = i;
    }
  }

  private View aFa()
  {
    return this.dLe.inflate(getLayoutId(), null);
  }

  public static void aFp()
  {
  }

  private void dc(boolean paramBoolean)
  {
    ej.a(f(), paramBoolean, new Intent().putExtra("classname", getClass().getName()));
  }

  @Deprecated
  protected void FR()
  {
  }

  public final void SM()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)aal().getSystemService("input_method");
    if (localInputMethodManager == null);
    IBinder localIBinder;
    do
    {
      View localView;
      do
      {
        return;
        localView = f().getCurrentFocus();
      }
      while (localView == null);
      localIBinder = localView.getWindowToken();
    }
    while (localIBinder == null);
    localInputMethodManager.hideSoftInputFromWindow(localIBinder, 0);
  }

  public final View a(LayoutInflater paramLayoutInflater)
  {
    if (aFq())
    {
      if (aal() == null)
        return null;
      this.cYm = paramLayoutInflater.inflate(k.aWv, null);
      this.gmR = ((LinearLayout)this.cYm.findViewById(i.aBB));
      int j = Iw();
      if (j != -1)
      {
        View localView = paramLayoutInflater.inflate(j, null);
        this.gmR.addView(localView, -1, -2);
        localView.setVisibility(8);
      }
      if (getLayoutId() != -1)
      {
        this.gmP = aFa();
        this.gmR.addView(this.gmP, -1, -1);
      }
      this.goi = new g(this.cYm);
      LayoutListenerView localLayoutListenerView2 = (LayoutListenerView)this.cYm.findViewById(i.aBr);
      if (localLayoutListenerView2 != null)
      {
        localLayoutListenerView2.a(new dd(this, localLayoutListenerView2));
        if ((0x10 & f().getWindow().getAttributes().softInputMode) != 0)
          localLayoutListenerView2.a(new de(this));
      }
      m localm2 = new m();
      localm2.bLU.type = 2;
      a.ayH().f(localm2);
      if (localm2.bLV.bLZ == 2)
        a(localm2.bLV.bMb, localm2.bLV.visible, localm2.bLV.url, localm2.bLV.desc, true);
      return this.cYm;
    }
    this.cYm = paramLayoutInflater.inflate(k.aWn, null);
    this.gmR = ((LinearLayout)this.cYm.findViewById(i.aBB));
    this.gmS = ((RelativeLayout)this.cYm.findViewById(i.aBu));
    this.gmQ = this.cYm.findViewById(i.aBC);
    int i = Iw();
    if (i != -1)
      this.gmR.addView(paramLayoutInflater.inflate(i, null), -1, -2);
    if (getLayoutId() != -1)
    {
      this.gmP = aFa();
      this.gmR.addView(this.gmP, -1, -1);
    }
    this.goi = new g(this.cYm);
    ScrollView localScrollView = (ScrollView)this.cYm.findViewById(i.aBs);
    if (localScrollView != null)
      localScrollView.setOnTouchListener(new df(this));
    LayoutListenerView localLayoutListenerView1 = (LayoutListenerView)this.cYm.findViewById(i.aBr);
    if (localLayoutListenerView1 != null)
    {
      localLayoutListenerView1.a(new dg(this, localLayoutListenerView1));
      if ((0x10 & f().getWindow().getAttributes().softInputMode) != 0)
        localLayoutListenerView1.a(new dh(this));
    }
    m localm1 = new m();
    localm1.bLU.type = 2;
    a.ayH().f(localm1);
    if (localm1.bLV.bLZ == 2)
      a(localm1.bLV.bMb, localm1.bLV.visible, localm1.bLV.url, localm1.bLV.desc, true);
    return this.cYm;
  }

  public final MMImageButton a(int paramInt, View.OnClickListener paramOnClickListener)
  {
    return this.goi.a(Integer.valueOf(paramInt), paramOnClickListener);
  }

  public final void a(ActionBarActivity paramActionBarActivity)
  {
    this.goj = paramActionBarActivity;
  }

  protected final void a(Class paramClass, Intent paramIntent)
  {
    paramIntent.setClass(f(), paramClass);
    startActivity(paramIntent);
  }

  public final void aFo()
  {
    if (this.goi != null)
    {
      this.goi.aDT().setVisibility(8);
      return;
    }
    aa.w("MicroMsg.MMActivity", "hide title view, but controller is null");
  }

  protected boolean aFq()
  {
    return false;
  }

  public final Activity aal()
  {
    if (f() != null)
      return f();
    return null;
  }

  public final MMImageButton c(String paramString, View.OnClickListener paramOnClickListener)
  {
    return this.goi.a(paramString, paramOnClickListener);
  }

  protected final void e(Class paramClass)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(f(), paramClass);
    startActivity(localIntent);
  }

  protected abstract int getLayoutId();

  public final void l(View.OnClickListener paramOnClickListener)
  {
    this.goi.l(paramOnClickListener);
  }

  public final MMImageButton m(View.OnClickListener paramOnClickListener)
  {
    return this.goi.m(paramOnClickListener);
  }

  public final void mm(int paramInt)
  {
    this.goi.mm(paramInt);
  }

  public final void mn(int paramInt)
  {
    this.goi.mn(paramInt);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    aa.v("MicroMsg.MMActivity", "onActivityCreated");
    super.onActivityCreated(paramBundle);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.gol != null);
    this.gol = null;
  }

  public final void onAttach(Activity paramActivity)
  {
    aa.v("MicroMsg.MMActivity", "onAttach");
    super.onAttach(paramActivity);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.className = getClass().getName();
    fc.w(3, this.className);
    FragmentActivity localFragmentActivity = f();
    String str = z.a(localFragmentActivity.getSharedPreferences(al.azs(), 0));
    if (str.equals("language_default"))
    {
      z.a(localFragmentActivity, Locale.ENGLISH);
      Locale.getDefault();
    }
    while (true)
    {
      this.chz = f().getSharedPreferences(al.azs(), 0);
      this.cBR = fb.aFD().aFE();
      this.eNl = this.cBR.getStreamMaxVolume(3);
      this.dLe = LayoutInflater.from(f());
      return;
      z.a(localFragmentActivity, z.sA(str));
    }
  }

  public void onDestroy()
  {
    int i = getIntExtra("MMActivity.OverrideEnterAnimation", -1);
    int j = getIntExtra("MMActivity.OverrideExitAnimation", -1);
    if (i != -1)
      f().overridePendingTransition(i, j);
    super.onDestroy();
  }

  public final void onDestroyView()
  {
    aa.v("MicroMsg.MMActivity", "onDestroyView");
    super.onDestroyView();
  }

  public final void onDetach()
  {
    aa.v("MicroMsg.MMActivity", "onDetach");
    super.onDetach();
  }

  public final void onHiddenChanged(boolean paramBoolean)
  {
    aa.v("MicroMsg.MMActivity", "onHiddenChanged");
    super.onHiddenChanged(paramBoolean);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 25) && (this.cBR != null))
    {
      int k = this.cBR.getStreamVolume(3);
      int m = this.eNl / 7;
      if (m == 0)
        m = 1;
      this.cBR.setStreamVolume(3, k - m, 5);
      return true;
    }
    if ((paramInt == 24) && (this.cBR != null))
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
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    long l = System.currentTimeMillis();
    fc.w(2, this.className);
    super.onPause();
    gok = null;
    dc(false);
    a.ayH().b("UINotify", this.gns);
    aa.v("MicroMsg.INIT", "KEVIN MMActivity onPause:" + (System.currentTimeMillis() - l));
  }

  public void onResume()
  {
    long l1 = System.currentTimeMillis();
    fc.w(1, this.className);
    super.onResume();
    aa.v("MicroMsg.INIT", "KEVIN MMActivity super.onResume " + (System.currentTimeMillis() - l1));
    gok = this;
    dc(true);
    a.ayH().a("UINotify", this.gns);
    m localm = new m();
    localm.bLU.type = 2;
    a.ayH().f(localm);
    if (localm.bLV.bLZ == 2)
    {
      long l2 = System.currentTimeMillis();
      a(localm.bLV.bMb, localm.bLV.visible, localm.bLV.url, localm.bLV.desc, true);
      aa.v("MicroMsg.INIT", "KEVIN MMActivity onResume initNotifyView:" + (System.currentTimeMillis() - l2));
    }
    aa.v("MicroMsg.INIT", "KEVIN MMActivity onResume :" + (System.currentTimeMillis() - l1));
  }

  public final void onSaveInstanceState(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT < 11)
      super.onSaveInstanceState(paramBundle);
  }

  public void onStart()
  {
    aa.v("MicroMsg.MMActivity", "onStart");
    this.chz = f().getSharedPreferences(al.azs(), 0);
    this.gni = this.chz.getBoolean("settings_landscape_mode", false);
    if (this.gni)
      f().setRequestedOrientation(-1);
    while (true)
    {
      super.onStart();
      return;
      f().setRequestedOrientation(1);
    }
  }

  public void onStop()
  {
    aa.v("MicroMsg.MMActivity", "onStop");
    super.onStop();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cy
 * JD-Core Version:    0.6.2
 */