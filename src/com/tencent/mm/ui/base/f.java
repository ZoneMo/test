package com.tencent.mm.ui.base;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.cj;

public abstract class f extends Dialog
{
  private View cYm;
  private LayoutInflater dLe;
  private View gmP;
  private LinearLayout gmR;
  private b gyr = null;
  private String title = null;

  public f(Context paramContext)
  {
    super(paramContext, o.bID);
  }

  private void vT(String paramString)
  {
    this.gyr.vT(paramString);
  }

  public final void SM()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
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

  public final void jdMethod_do(boolean paramBoolean)
  {
    this.gyr.jdMethod_do(paramBoolean);
  }

  public final MMImageButton m(View.OnClickListener paramOnClickListener)
  {
    return this.gyr.m(paramOnClickListener);
  }

  public final MMImageButton n(View.OnClickListener paramOnClickListener)
  {
    return this.gyr.n(paramOnClickListener);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.dLe = ((LayoutInflater)getContext().getSystemService("layout_inflater"));
    this.cYm = this.dLe.inflate(k.aWn, null);
    this.gmR = ((LinearLayout)this.cYm.findViewById(i.aBB));
    int i = k.aXm;
    if (i != -1)
      this.gmR.addView(this.dLe.inflate(i, null), -1, -2);
    this.gmP = this.dLe.inflate(2130903463, null);
    this.gmR.addView(this.gmP, -1, -1);
    setContentView(this.cYm);
    this.gyr = new b(this);
    ScrollView localScrollView = (ScrollView)findViewById(i.aBs);
    if (localScrollView != null)
      localScrollView.setOnTouchListener(new g(this));
    vT(cj.hW(this.title));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.title = paramCharSequence.toString();
    if (this.gyr != null)
      vT(this.title);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.f
 * JD-Core Version:    0.6.2
 */