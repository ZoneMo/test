package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView.OnEditorActionListener;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.cj;

public class ActionBarSearchView extends LinearLayout
{
  private g hgA = g.hgI;
  private boolean hgB = false;
  private f hgC;
  private TextWatcher hgD = new c(this);
  private View.OnFocusChangeListener hgE = new d(this);
  private View.OnClickListener hgF = new e(this);
  private ActionBarSearchView.ActionBarEditText hgy;
  private ImageButton hgz;

  public ActionBarSearchView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public ActionBarSearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void aMI()
  {
    if ((this.hgy.getEditableText() != null) && (!cj.hX(this.hgy.getEditableText().toString())))
    {
      t(h.aif, 0, getResources().getDimensionPixelSize(com.tencent.mm.g.aaT));
      this.hgA = g.hgI;
      return;
    }
    if (this.hgB)
    {
      t(h.ajS, h.afi, getResources().getDimensionPixelSize(com.tencent.mm.g.aaJ));
      this.hgA = g.hgJ;
      return;
    }
    t(0, 0, 0);
    this.hgA = g.hgI;
  }

  private void init()
  {
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(k.aSd, this, true);
    this.hgy = ((ActionBarSearchView.ActionBarEditText)findViewById(i.arK));
    this.hgy.d(this);
    this.hgz = ((ImageButton)findViewById(i.aMp));
    this.hgy.addTextChangedListener(this.hgD);
    this.hgy.setOnFocusChangeListener(this.hgE);
    this.hgz.setOnClickListener(this.hgF);
  }

  private void t(int paramInt1, int paramInt2, int paramInt3)
  {
    this.hgz.setImageResource(paramInt1);
    this.hgz.setBackgroundResource(paramInt2);
    ViewGroup.LayoutParams localLayoutParams = this.hgz.getLayoutParams();
    localLayoutParams.width = paramInt3;
    this.hgz.setLayoutParams(localLayoutParams);
  }

  public final void a(f paramf)
  {
    this.hgC = paramf;
  }

  public final String aMH()
  {
    if (this.hgy.getEditableText() != null)
      return this.hgy.getEditableText().toString();
    return "";
  }

  public final void aMJ()
  {
    this.hgy.clearFocus();
  }

  public final void cP(boolean paramBoolean)
  {
    this.hgB = paramBoolean;
    aMI();
  }

  public final void ek(boolean paramBoolean)
  {
    this.hgy.setEnabled(paramBoolean);
  }

  public final void el(boolean paramBoolean)
  {
    this.hgz.setEnabled(paramBoolean);
  }

  public final void em(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.hgy.removeTextChangedListener(this.hgD);
      this.hgy.setText("");
      this.hgy.addTextChangedListener(this.hgD);
      return;
    }
    this.hgy.setText("");
  }

  public final void setOnEditorActionListener(TextView.OnEditorActionListener paramOnEditorActionListener)
  {
    this.hgy.setOnEditorActionListener(paramOnEditorActionListener);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ActionBarSearchView
 * JD-Core Version:    0.6.2
 */