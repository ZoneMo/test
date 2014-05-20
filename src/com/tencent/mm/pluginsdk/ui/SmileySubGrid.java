package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ListAdapter;
import com.tencent.mm.g;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.storage.y;
import com.tencent.mm.ui.base.CustomViewPager;
import com.tencent.mm.ui.base.MMFlipper;

public class SmileySubGrid extends SmileyGrid
{
  private WindowManager cUX;
  private int dC;
  private LayoutInflater ddz;
  float deA;
  float deB;
  int fmC = 6;
  int fmD;
  int fmE;
  int fmF = -1;
  Rect fmG = new Rect();
  boolean fmH;
  private DynamicEmojiView fmI;
  private View fmJ;
  private WindowManager.LayoutParams fmK;
  private int fmL;
  private int fmM;
  private boolean fmN;
  private az fmO;
  private int fmP;
  private int fmQ;
  private ax fmR;
  private ay fmS;
  private int fmT;
  private int fmU;
  private View fmV;
  private int fmW;
  private String fmX;
  private ba fmY = new ba(this);
  private volatile int fmZ = -1;
  private volatile boolean fna = false;

  public SmileySubGrid(Context paramContext)
  {
    this(paramContext, null);
  }

  public SmileySubGrid(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.ddz = LayoutInflater.from(paramContext);
    this.cUX = ((WindowManager)paramContext.getSystemService("window"));
    com.tencent.mm.pluginsdk.h.apj().a(this.fmY);
    this.fmJ = this.ddz.inflate(k.aZB, null);
    this.fmI = ((DynamicEmojiView)this.fmJ.findViewById(com.tencent.mm.i.arG));
    this.fmI.ard();
    this.fmK = new WindowManager.LayoutParams(-1, -1, 2, 8, 1);
    this.fmW = paramContext.getResources().getDimensionPixelSize(g.abt);
    this.fmK.width = this.fmW;
    this.fmK.height = this.fmW;
    this.fmK.gravity = 17;
    this.fmP = LJ();
    this.fmQ = ViewConfiguration.getPressedStateDuration();
    this.fmT = getResources().getConfiguration().orientation;
    if (this.fmT == 2)
      this.fmL = this.cUX.getDefaultDisplay().getHeight();
    for (this.fmM = this.cUX.getDefaultDisplay().getWidth(); ; this.fmM = this.cUX.getDefaultDisplay().getHeight())
    {
      setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      setBackgroundResource(0);
      setStretchMode(2);
      this.fmU = e.a(paramContext, 80.0F);
      setColumnWidth(this.fmU);
      setNumColumns(this.fmL / this.fmU);
      this.dC = ViewConfiguration.get(getContext()).getScaledTouchSlop();
      return;
      this.fmL = this.cUX.getDefaultDisplay().getWidth();
    }
  }

  private void W(View paramView)
  {
    Rect localRect = this.fmG;
    localRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    int i = localRect.left;
    int j = localRect.top;
    int k = localRect.right;
    int m = localRect.bottom;
    this.fmG.set(i - getPaddingLeft(), j - getPaddingTop(), k + getPaddingRight(), m + getPaddingBottom());
    boolean bool1 = this.fmH;
    if (paramView.isEnabled() != bool1)
      if (bool1)
        break label116;
    label116: for (boolean bool2 = true; ; bool2 = false)
    {
      this.fmH = bool2;
      refreshDrawableState();
      return;
    }
  }

  private void arF()
  {
    if (this.fmO != null)
    {
      Handler localHandler = getHandler();
      if (localHandler != null)
        localHandler.removeCallbacks(this.fmO);
    }
    if (this.fmN)
    {
      this.cUX.removeView(this.fmJ);
      this.fmN = false;
      this.fna = false;
    }
    this.fmX = "";
  }

  private void k(y paramy)
  {
    if ((paramy != null) && (!paramy.yK().equals(this.fmX)))
    {
      this.fmX = paramy.yK();
      this.fmI.i(paramy);
    }
    if (paramy == null)
    {
      this.fmI.a(j.fkr);
      return;
    }
    this.fmI.a(j.fks);
  }

  private void o(View paramView, int paramInt)
  {
    int i;
    label142: int[] arrayOfInt;
    if ((paramInt == this.fmZ) && (this.fmJ.isShown()))
    {
      i = 1;
      if (i != 0)
        break label427;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.e("MicroMsg.SmileySubGrid", "jacks begin show:%d", arrayOfObject2);
      y localy = (y)getAdapter().getItem(paramInt);
      if (this.fmO == null)
        this.fmO = new az(this, (byte)0);
      k(localy);
      if (this.fmT != 1)
        break label282;
      switch (paramInt % 4)
      {
      case 1:
      case 2:
      default:
        this.fmJ.setBackgroundResource(com.tencent.mm.h.adZ);
        arrayOfInt = new int[2];
        paramView.getLocationOnScreen(arrayOfInt);
        if (this.fmT == 1)
        {
          this.fmK.x = (0 + (arrayOfInt[0] - (this.fmL - paramView.getMeasuredWidth()) / 2));
          this.fmK.y = (arrayOfInt[1] - this.fmM / 2 - paramView.getMeasuredHeight() - LI());
          label214: if (this.fmN)
            break label407;
          this.fna = true;
          postDelayed(this.fmO, this.fmQ);
          label240: fM(paramInt);
        }
        break;
      case 0:
      case 3:
      }
    }
    label407: 
    while (true)
    {
      this.fmZ = paramInt;
      return;
      i = 0;
      break;
      this.fmJ.setBackgroundResource(com.tencent.mm.h.adX);
      break label142;
      this.fmJ.setBackgroundResource(com.tencent.mm.h.adY);
      break label142;
      label282: switch (paramInt % 8)
      {
      default:
        this.fmJ.setBackgroundResource(com.tencent.mm.h.adZ);
        break;
      case 0:
        this.fmJ.setBackgroundResource(com.tencent.mm.h.adX);
        break;
      case 7:
        this.fmJ.setBackgroundResource(com.tencent.mm.h.adY);
        break;
        this.fmK.x = (arrayOfInt[0] - (this.fmM - paramView.getMeasuredWidth()) / 2 - LI());
        this.fmK.y = (0 + (arrayOfInt[1] - this.fmL / 2 - paramView.getMeasuredHeight()));
        break label214;
        this.cUX.updateViewLayout(this.fmJ, this.fmK);
        break label240;
        label427: Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(paramInt);
        aa.e("MicroMsg.SmileySubGrid", "jacks already show:%d", arrayOfObject1);
      }
    }
  }

  protected int LI()
  {
    return 0;
  }

  protected int LJ()
  {
    return ViewConfiguration.getLongPressTimeout();
  }

  protected boolean LK()
  {
    return true;
  }

  public final void V(View paramView)
  {
    this.fmV = paramView;
  }

  public final void a(y paramy, int paramInt)
  {
    if ((this.fmZ != paramInt) || (!this.fna))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Boolean.valueOf(this.fna);
      aa.e("MicroMsg.SmileySubGrid", "not show:%d, needData: %B, so do not refresh", arrayOfObject);
      return;
    }
    k(paramy);
  }

  protected void am(boolean paramBoolean)
  {
    if (this.fmV != null)
    {
      if (!(this.fmV instanceof MMFlipper))
        break label29;
      ((MMFlipper)this.fmV).am(paramBoolean);
    }
    label29: 
    while (!(this.fmV instanceof CustomViewPager))
      return;
    ((CustomViewPager)this.fmV).da(paramBoolean);
  }

  public final int arE()
  {
    return this.fmF;
  }

  public final void arG()
  {
    com.tencent.mm.pluginsdk.h.apj().b(this.fmY);
  }

  public final boolean arH()
  {
    return this.fmC == 5;
  }

  protected void fM(int paramInt)
  {
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    if (!LK())
    {
      arF();
      i = super.onTouchEvent(paramMotionEvent);
    }
    int j;
    int i4;
    do
    {
      return i;
      j = paramMotionEvent.getAction();
      switch (j)
      {
      default:
        return i;
      case 0:
        int i2 = (int)paramMotionEvent.getX();
        int i3 = (int)paramMotionEvent.getY();
        this.deA = i2;
        this.deB = i3;
        i4 = pointToPosition(i2, i3);
        if ((i4 >= 0) && (getAdapter().isEnabled(i4)))
          this.fmD = 0;
        View localView5 = null;
        if (i4 >= 0)
        {
          this.fmF = i4;
          localView5 = getChildAt(i4 - getFirstVisiblePosition());
        }
        if (localView5 != null)
        {
          localView5.setPressed(i);
          localView5.setSelected(i);
          W(localView5);
        }
        if (this.fmR == null)
          this.fmR = new ax(this, (byte)0);
        this.fmR.arI();
        this.fmE = i4;
      case 2:
      case 1:
      case 3:
      }
    }
    while ((aru() == 25) && (this.dJC == 0) && (i4 == 0));
    postDelayed(this.fmR, this.fmP);
    return i;
    int m = (int)paramMotionEvent.getX();
    int n = (int)paramMotionEvent.getY();
    if (this.fmC == 5)
    {
      int i1 = pointToPosition(m, n);
      this.fmE = i1;
      if ((i1 >= 0) && ((aru() != 25) || (i1 != 0) || (this.dJC != 0)))
        if (this.fmF != i1)
        {
          this.fmF = i1;
          View localView4 = getChildAt(i1 - getFirstVisiblePosition());
          layoutChildren();
          if (localView4 != null)
          {
            localView4.setPressed(i);
            localView4.setSelected(i);
            W(localView4);
            o(localView4, this.fmF);
          }
        }
      while (true)
      {
        Handler localHandler3 = getHandler();
        if (localHandler3 == null)
          break;
        localHandler3.removeCallbacks(this.fmR);
        return i;
        arF();
        if (this.fmF >= 0)
        {
          View localView3 = getChildAt(this.fmF - getFirstVisiblePosition());
          if (localView3 != null)
          {
            localView3.setPressed(false);
            localView3.setSelected(false);
            W(localView3);
          }
        }
      }
    }
    if (Math.abs(this.deA - m) > this.dC)
    {
      this.fmD = -1;
      Handler localHandler2 = getHandler();
      if (localHandler2 != null)
        localHandler2.removeCallbacks(this.fmR);
    }
    arF();
    return i;
    int k = this.fmE;
    View localView1 = getChildAt(k - getFirstVisiblePosition());
    if ((j == i) && (this.fmD != -1))
    {
      if (this.fmS == null)
        this.fmS = new ay(this, (byte)0);
      ay localay = this.fmS;
      localay.fnc = localView1;
      localay.fnd = k;
      localay.arI();
      post(localay);
    }
    Handler localHandler1 = getHandler();
    if (localHandler1 != null)
      localHandler1.removeCallbacks(this.fmR);
    am(i);
    arF();
    if (this.fmF >= 0)
    {
      View localView2 = getChildAt(this.fmF - getFirstVisiblePosition());
      if (localView2 != null)
      {
        localView2.setPressed(false);
        localView2.setSelected(false);
        W(localView2);
      }
    }
    this.fmC = 6;
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.SmileySubGrid
 * JD-Core Version:    0.6.2
 */