package com.tencent.mm.ui.chatting;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.p.h;
import java.util.List;

public final class aq
{
  private ListView dbd = null;
  private h gLA = null;
  private boolean gLB = true;
  private Animation gLv;
  private Animation gLw;
  private ViewGroup gLx = null;
  private ViewGroup gLy = null;
  private au gLz = null;
  private LayoutInflater ge;
  private Context mContext = null;
  private int mCount;

  public aq(Context paramContext, ViewGroup paramViewGroup)
  {
    this.mContext = paramContext;
    this.gLx = paramViewGroup;
    this.ge = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.gLv = AnimationUtils.loadAnimation(this.mContext, 2130968623);
    this.gLw = AnimationUtils.loadAnimation(this.mContext, 2130968621);
    this.gLy = ((ViewGroup)this.ge.inflate(2130903148, null));
    this.gLx.addView(this.gLy);
    this.gLy.setOnClickListener(new ar(this));
    this.gLy.setVisibility(8);
    this.dbd = ((ListView)this.gLy.findViewById(2131362245));
    this.gLz = new au(this, (byte)0);
    this.dbd.setAdapter(this.gLz);
    this.dbd.setChoiceMode(1);
  }

  @SuppressLint({"WrongCall"})
  private boolean a(h paramh, int paramInt)
  {
    if ((this.gLy.getVisibility() != 0) && (paramh != null) && (paramh.cnH != null) && (paramh.cnH.size() > 0))
    {
      if ((this.gLA == null) || (this.gLA.id != paramh.id) || (!this.gLA.cnG.equals(paramh.cnG)) || (this.gLB))
      {
        this.gLB = false;
        this.gLA = paramh;
        this.mCount = paramh.cnH.size();
        this.gLz.notifyDataSetChanged();
        TextView localTextView = (TextView)((LayoutInflater)this.mContext.getSystemService("layout_inflater")).inflate(2130903149, null);
        Context localContext = this.mContext;
        TextPaint localTextPaint = localTextView.getPaint();
        List localList = paramh.cnH;
        at localat = as.a(localContext, localTextPaint, localList, paramInt);
        RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.dbd.getLayoutParams();
        localLayoutParams.addRule(12);
        localLayoutParams.leftMargin = localat.gLE;
        localLayoutParams.rightMargin = localat.gLF;
        this.dbd.setLayoutParams(localLayoutParams);
      }
      this.gLy.setVisibility(0);
      this.gLy.startAnimation(this.gLv);
      return true;
    }
    return false;
  }

  public final boolean aIX()
  {
    if (this.gLy.getVisibility() != 8)
    {
      this.gLy.setVisibility(8);
      this.gLy.startAnimation(this.gLw);
      return true;
    }
    return false;
  }

  public final boolean b(h paramh, int paramInt)
  {
    boolean bool;
    if (this.gLy.getVisibility() == 8)
      bool = a(paramh, paramInt);
    do
    {
      return bool;
      bool = aIX();
    }
    while ((paramh == null) || ((this.gLA.id == paramh.id) && (this.gLA.cnG.equals(paramh.cnG))));
    return bool & a(paramh, paramInt);
  }

  public final void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    if (paramOnItemClickListener != null)
      this.dbd.setOnItemClickListener(paramOnItemClickListener);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.aq
 * JD-Core Version:    0.6.2
 */