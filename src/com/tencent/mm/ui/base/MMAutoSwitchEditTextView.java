package com.tencent.mm.ui.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.an.a;
import com.tencent.mm.k;
import com.tencent.mm.p;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;

public class MMAutoSwitchEditTextView extends LinearLayout
{
  private int cVo = 100;
  private int epj;
  private int gza;
  private int gzb;
  private int gzc;
  private String gzd;
  private ArrayList gze = new ArrayList();
  private al gzf = new al(this, (byte)0);
  private aj gzg;
  private ak gzh;
  private Context mContext;

  public MMAutoSwitchEditTextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMAutoSwitchEditTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJc);
    this.gza = localTypedArray.getInteger(0, 3);
    this.gzb = localTypedArray.getInteger(1, 4);
    this.gzc = localTypedArray.getInteger(2, 2);
    this.gzd = localTypedArray.getString(3);
    localTypedArray.recycle();
    if ((paramContext instanceof Activity))
    {
      this.epj = ((Activity)paramContext).getWindowManager().getDefaultDisplay().getWidth();
      this.cVo = ((-80 + this.epj - 20 * (-1 + this.gza)) / this.gza);
    }
    setPadding(a.fromDPToPix(paramContext, 20), 0, a.fromDPToPix(paramContext, 20), 0);
    aGM();
  }

  private void aGM()
  {
    int i = 0;
    if (i < this.gza)
    {
      MMAutoSwitchEditText localMMAutoSwitchEditText = (MMAutoSwitchEditText)View.inflate(this.mContext, k.aSs, null);
      localMMAutoSwitchEditText.setInputType(this.gzc);
      if ((this.gzd != null) && (this.gzd.length() > 0))
        localMMAutoSwitchEditText.setKeyListener(DigitsKeyListener.getInstance(this.gzd));
      localMMAutoSwitchEditText.setIndex(i);
      localMMAutoSwitchEditText.mT(this.gzb);
      localMMAutoSwitchEditText.a(this.gzf);
      localMMAutoSwitchEditText.a(this.gzf);
      localMMAutoSwitchEditText.a(this.gzf);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(this.cVo, -2);
      if (i > 0);
      for (localLayoutParams.leftMargin = 20; ; localLayoutParams.leftMargin = 0)
      {
        localLayoutParams.weight = 1.0F;
        localMMAutoSwitchEditText.setLayoutParams(localLayoutParams);
        this.gze.add(localMMAutoSwitchEditText);
        addView(localMMAutoSwitchEditText);
        i++;
        break;
      }
    }
  }

  public final void a(aj paramaj)
  {
    this.gzg = paramaj;
  }

  public final void a(ak paramak)
  {
    this.gzh = paramak;
  }

  public final String getText()
  {
    Object localObject1 = "";
    Iterator localIterator = this.gze.iterator();
    MMAutoSwitchEditText localMMAutoSwitchEditText;
    if (localIterator.hasNext())
    {
      localMMAutoSwitchEditText = (MMAutoSwitchEditText)localIterator.next();
      if (cj.hX(localMMAutoSwitchEditText.getText().toString().trim()))
        break label83;
    }
    label83: for (Object localObject2 = (String)localObject1 + localMMAutoSwitchEditText.getText().toString().trim(); ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      return localObject1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMAutoSwitchEditTextView
 * JD-Core Version:    0.6.2
 */