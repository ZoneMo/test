package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.aa;

public class ChattingFooterMoreBtnBar extends LinearLayout
{
  private ImageButton gMu;
  private ImageButton gMv;
  private ImageButton gMw;
  private ImageButton gMx;

  public ChattingFooterMoreBtnBar(Context paramContext)
  {
    this(paramContext, null);
    aJf();
  }

  public ChattingFooterMoreBtnBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    aJf();
  }

  private void aJf()
  {
    setOrientation(0);
    setGravity(16);
    setBackgroundResource(2130837768);
    int i = getResources().getDimensionPixelSize(2131558436);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(0, i, 1.0F);
    localLayoutParams1.topMargin = a.fromDPToPix(getContext(), 0);
    this.gMu = new ImageButton(getContext());
    this.gMu.setImageResource(2130837801);
    this.gMu.setScaleType(ImageView.ScaleType.CENTER);
    this.gMu.setBackgroundResource(0);
    addView(this.gMu, localLayoutParams1);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(0, i, 1.0F);
    localLayoutParams2.topMargin = a.fromDPToPix(getContext(), 0);
    this.gMv = new ImageButton(getContext());
    this.gMv.setImageResource(2130837799);
    this.gMv.setScaleType(ImageView.ScaleType.CENTER);
    this.gMv.setBackgroundResource(0);
    addView(this.gMv, localLayoutParams2);
    LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(0, i, 1.0F);
    localLayoutParams3.topMargin = a.fromDPToPix(getContext(), 0);
    this.gMx = new ImageButton(getContext());
    this.gMx.setImageResource(2130837798);
    this.gMx.setScaleType(ImageView.ScaleType.CENTER);
    this.gMx.setBackgroundResource(0);
    addView(this.gMx, localLayoutParams3);
    LinearLayout.LayoutParams localLayoutParams4 = new LinearLayout.LayoutParams(0, i, 1.0F);
    localLayoutParams4.topMargin = a.fromDPToPix(getContext(), 0);
    this.gMw = new ImageButton(getContext());
    this.gMw.setImageResource(2130837800);
    this.gMw.setScaleType(ImageView.ScaleType.CENTER);
    this.gMw.setBackgroundResource(0);
    addView(this.gMw, localLayoutParams4);
  }

  public final void aJg()
  {
    this.gMw.setVisibility(8);
  }

  public final void b(int paramInt, View.OnClickListener paramOnClickListener)
  {
    switch (paramInt)
    {
    default:
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      aa.c("Ashu.ChattingFooterMoreBtnBar", "set button listener error button index %d", arrayOfObject);
      return;
    case 2:
      this.gMw.setOnClickListener(paramOnClickListener);
      return;
    case 3:
      this.gMx.setOnClickListener(paramOnClickListener);
      return;
    case 1:
      this.gMv.setOnClickListener(paramOnClickListener);
      return;
    case 0:
    }
    this.gMu.setOnClickListener(paramOnClickListener);
  }

  public final void ny(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      this.gMu.setClickable(bool);
      this.gMu.setEnabled(bool);
      this.gMv.setClickable(bool);
      this.gMv.setEnabled(bool);
      this.gMw.setClickable(bool);
      this.gMw.setEnabled(bool);
      this.gMx.setClickable(bool);
      this.gMx.setEnabled(bool);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ChattingFooterMoreBtnBar
 * JD-Core Version:    0.6.2
 */