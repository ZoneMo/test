package com.tencent.mm.ui.c;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.mm.n;

@SuppressLint({"SetJavaScriptEnabled"})
public final class h extends Dialog
{
  static final FrameLayout.LayoutParams haA = new FrameLayout.LayoutParams(-1, -1);
  static final float[] hay = { 20.0F, 60.0F };
  static final float[] haz = { 40.0F, 60.0F };
  private WebView gHw;
  private ProgressDialog haC;
  private ImageView haD;
  private FrameLayout haE;
  private j hsl;
  private String mUrl;

  public h(Context paramContext, String paramString, j paramj)
  {
    super(paramContext, 16973840);
    this.mUrl = paramString;
    this.hsl = paramj;
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.haC = new ProgressDialog(getContext());
    this.haC.requestWindowFeature(1);
    this.haC.setMessage(getContext().getString(n.bDi));
    requestWindowFeature(1);
    this.haE = new FrameLayout(getContext());
    this.haD = new ImageView(getContext());
    this.haD.setOnClickListener(new i(this));
    Drawable localDrawable = getContext().getResources().getDrawable(com.tencent.mm.h.adw);
    this.haD.setImageDrawable(localDrawable);
    this.haD.setVisibility(4);
    int i = this.haD.getDrawable().getIntrinsicWidth() / 2;
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    this.gHw = new WebView(getContext());
    this.gHw.setVerticalScrollBarEnabled(false);
    this.gHw.setHorizontalScrollBarEnabled(false);
    this.gHw.setWebViewClient(new k(this, (byte)0));
    this.gHw.getSettings().setJavaScriptEnabled(true);
    this.gHw.loadUrl(this.mUrl);
    this.gHw.setLayoutParams(haA);
    this.gHw.setVisibility(4);
    localLinearLayout.setPadding(i, i, i, i);
    localLinearLayout.addView(this.gHw);
    this.haE.addView(localLinearLayout);
    this.haE.addView(this.haD, new ViewGroup.LayoutParams(-2, -2));
    addContentView(this.haE, new ViewGroup.LayoutParams(-1, -1));
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      this.hsl.onCancel();
      dismiss();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.h
 * JD-Core Version:    0.6.2
 */