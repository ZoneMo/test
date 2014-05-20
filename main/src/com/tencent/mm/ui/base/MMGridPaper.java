package com.tencent.mm.ui.base;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.an.a;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import junit.framework.Assert;

public final class MMGridPaper extends LinearLayout
{
  protected int cUB = 96;
  protected int cUC = 96;
  protected int cUD = 10;
  protected int cUE = 10;
  protected boolean cUF = false;
  protected int cUG = -1;
  protected int cUH = -1;
  protected MMFlipper cUk;
  protected MMDotView cUl;
  protected int cUn;
  protected int cUo;
  protected int cUp = 0;
  protected int cUq = 3;
  protected int cUr = 0;
  protected int cUs = -1 + this.cUq;
  protected int cUu = 0;
  protected int cUv = 0;
  protected int cUw = 9;
  protected int cUx = -1;
  protected int cUy = -1;
  protected Handler gnj;
  protected int gzA = 0;
  protected int gzB = -1;
  protected int gzC = -1;
  protected boolean gzD = false;
  protected int gzE = 0;
  protected int gzF = 0;
  protected bc gzG;
  final at gzq = new az(this);
  final as gzr = new ay(this);
  protected bd gzv;
  protected int gzw = 0;
  protected int gzx = 0;
  protected boolean gzy = false;
  protected boolean gzz = false;
  protected View kE;

  public MMGridPaper(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public MMGridPaper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void aGU()
  {
    if ((-1 != this.cUx) && (arB() == 2))
    {
      View localView2 = findViewById(i.avI);
      LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)localView2.getLayoutParams();
      int j = a.fromDPToPix(getContext(), this.cUx);
      if (j != localLayoutParams2.height)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.cUx);
        aa.d("MicroMsg.MMGridPaper", "set land mode, special height is %d", arrayOfObject2);
        localLayoutParams2.height = j;
        localView2.setLayoutParams(localLayoutParams2);
      }
    }
    View localView1;
    LinearLayout.LayoutParams localLayoutParams1;
    int i;
    do
    {
      this.gnj.post(new aw(this));
      do
        return;
      while ((-1 == this.cUy) || (arB() != 1));
      localView1 = findViewById(i.avI);
      localLayoutParams1 = (LinearLayout.LayoutParams)localView1.getLayoutParams();
      i = a.fromDPToPix(getContext(), this.cUy);
    }
    while (i == localLayoutParams1.height);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.cUy);
    aa.d("MicroMsg.MMGridPaper", "set port mode, special height is %d", arrayOfObject1);
    localLayoutParams1.height = i;
    localView1.setLayoutParams(localLayoutParams1);
    this.gnj.post(new ax(this));
  }

  private void aGV()
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.cUn);
    arrayOfObject1[1] = Integer.valueOf(this.cUo);
    aa.f("MicroMsg.MMGridPaper", "initSubGrid, grid width %d, grid height %d", arrayOfObject1);
    if ((this.cUn == 0) || (this.cUo == 0))
    {
      aa.w("MicroMsg.MMGridPaper", "initSubGrid:gridWithd or gridHeight is 0");
      return;
    }
    int i = a.fromDPToPix(getContext(), this.cUB);
    int j = a.fromDPToPix(getContext(), this.cUC);
    int k = Math.max(this.cUn / i, 1);
    int m = Math.max(this.cUo / j, 1);
    if ((k != this.cUu) || (m != this.cUv))
      this.gzy = true;
    this.cUu = k;
    if (this.gzB != -1)
      this.cUu = Math.min(this.cUu, this.gzB);
    this.cUv = m;
    if (this.gzC != -1)
      this.cUv = Math.min(this.cUv, this.gzC);
    int n = this.cUu * this.cUv;
    this.gzx = 0;
    int i1;
    int i2;
    boolean bool;
    label259: int i10;
    int i11;
    int i3;
    if (this.gzv == null)
    {
      i1 = 0;
      i2 = i1 + 0;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i2);
      arrayOfObject2[1] = Boolean.valueOf(this.gzz);
      aa.e("MicroMsg.MMGridPaper", "totalCount is %d, dialogMode is %B", arrayOfObject2);
      if (i2 < 0)
        break label337;
      bool = true;
      Assert.assertTrue(bool);
      if (this.gzz)
      {
        i10 = bh(i2, this.cUu);
        i11 = arB();
      }
      switch (i11)
      {
      default:
        i3 = 1;
      case 2:
      case 1:
      }
    }
    while (true)
    {
      if (i3 != 0)
        break label579;
      aGU();
      return;
      i1 = this.gzv.getCount();
      break;
      label337: bool = false;
      break label259;
      int i14 = Math.min(i10, this.cUH);
      int i15 = 8 + i14 * (10 + this.cUC);
      Object[] arrayOfObject9 = new Object[5];
      arrayOfObject9[0] = Integer.valueOf(i11);
      arrayOfObject9[1] = Integer.valueOf(i14);
      arrayOfObject9[2] = Integer.valueOf(i15);
      arrayOfObject9[3] = Integer.valueOf(this.cUx);
      arrayOfObject9[4] = Boolean.valueOf(this.cUF);
      aa.e("MicroMsg.MMGridPaper", "orientation[%d], minRows[%d], targetHeight[%d], displayHeight[%d], orientationChange[%B]", arrayOfObject9);
      if (this.cUx != i15)
      {
        this.cUx = i15;
        i3 = 0;
      }
      else
      {
        i3 = 1;
        continue;
        int i12 = Math.min(i10, this.cUG);
        int i13 = 8 + i12 * (10 + this.cUC);
        Object[] arrayOfObject8 = new Object[5];
        arrayOfObject8[0] = Integer.valueOf(i11);
        arrayOfObject8[1] = Integer.valueOf(i12);
        arrayOfObject8[2] = Integer.valueOf(i13);
        arrayOfObject8[3] = Integer.valueOf(this.cUy);
        arrayOfObject8[4] = Boolean.valueOf(this.cUF);
        aa.e("MicroMsg.MMGridPaper", "orientation[%d], minRows[%d], targetHeight[%d], displayHeight[%d], orientationChange[%B]", arrayOfObject8);
        if (this.cUy != i13)
        {
          this.cUy = i13;
          i3 = 0;
        }
        else
        {
          i3 = 1;
        }
      }
    }
    label579: this.gzx = bh(i2, n);
    int i4 = -1 + this.gzx;
    int i5 = this.gzw;
    int i6;
    if ((i5 == 0) || (n <= 0))
    {
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(i5);
      arrayOfObject3[1] = Integer.valueOf(n);
      aa.c("MicroMsg.MMGridPaper", "floor:total[%d], length[%d]", arrayOfObject3);
      i6 = 0;
      this.cUp = Math.min(i4, i6);
      this.cUq = Math.min(3, this.gzx);
      this.cUr = Math.min(this.gzx - this.cUq, Math.max(0, this.cUp - (this.cUq >> 1)));
      this.cUs = (-1 + (this.cUr + this.cUq));
      Object[] arrayOfObject4 = new Object[9];
      arrayOfObject4[0] = Integer.valueOf(this.cUB);
      arrayOfObject4[1] = Integer.valueOf(this.cUC);
      arrayOfObject4[2] = Integer.valueOf(this.cUv);
      arrayOfObject4[3] = Integer.valueOf(this.cUu);
      arrayOfObject4[4] = Integer.valueOf(this.cUq);
      arrayOfObject4[5] = Integer.valueOf(this.gzx);
      arrayOfObject4[6] = Integer.valueOf(this.cUp);
      arrayOfObject4[7] = Integer.valueOf(this.cUr);
      arrayOfObject4[8] = Integer.valueOf(this.cUs);
      aa.e("MicroMsg.MMGridPaper", "initSubGrid:item[%ddp,%ddp], row[%d], column[%d], activePage[%d], virtualPage[%d], curVirtualPage[%d], edge[%d, %d]", arrayOfObject4);
      if ((this.gzG == null) || ((this.cUk.getChildCount() != this.cUq) || (this.gzy)))
      {
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Boolean.valueOf(this.gzy);
        aa.c("MicroMsg.MMGridPaper", "error child count or RowOrColChanged(%B), reset child view", arrayOfObject5);
        this.gzy = false;
        this.cUk.removeAllViews();
        for (int i7 = this.cUr; i7 <= this.cUs; i7++)
        {
          MMGridPaperGridView localMMGridPaperGridView1 = (MMGridPaperGridView)inflate(getContext(), k.aWu, null);
          localMMGridPaperGridView1.a(i7, this.cUv, this.cUu, this.gzv);
          localMMGridPaperGridView1.setHorizontalSpacing(a.fromDPToPix(getContext(), this.cUD));
          localMMGridPaperGridView1.setVerticalSpacing(a.fromDPToPix(getContext(), this.cUE));
          this.cUk.addView(localMMGridPaperGridView1, new LinearLayout.LayoutParams(-1, -1));
        }
      }
    }
    while (true)
    {
      int i9;
      if (i9 >= n)
      {
        i9 -= n;
        i6++;
      }
      else
      {
        Object[] arrayOfObject7 = new Object[3];
        arrayOfObject7[0] = Integer.valueOf(i5);
        arrayOfObject7[1] = Integer.valueOf(n);
        arrayOfObject7[2] = Integer.valueOf(i6);
        aa.d("MicroMsg.MMGridPaper", "floor:num[%d], length[%d], result[%d]", arrayOfObject7);
        break;
        int i8 = this.cUr;
        if (i8 <= this.cUs)
        {
          MMGridPaperGridView localMMGridPaperGridView2 = (MMGridPaperGridView)this.cUk.getChildAt(i8 - this.cUr);
          if (localMMGridPaperGridView2.getIndex() != i8)
          {
            Object[] arrayOfObject6 = new Object[2];
            arrayOfObject6[0] = Integer.valueOf(localMMGridPaperGridView2.getIndex());
            arrayOfObject6[1] = Integer.valueOf(i8);
            aa.c("MicroMsg.MMGridPaper", "old index %d, new index %d, reset it", arrayOfObject6);
            localMMGridPaperGridView2.a(i8, this.cUv, this.cUu, this.gzv);
            localMMGridPaperGridView2.notifyDataSetChanged();
          }
          while (true)
          {
            i8++;
            break;
            aa.v("MicroMsg.MMGridPaper", "same grid index, continus");
          }
        }
        aGW();
        return;
        i9 = i5;
        i6 = 0;
      }
    }
  }

  private void aGW()
  {
    aa.v("MicroMsg.MMGridPaper", "set DotView");
    boolean bool;
    if (this.gzx >= 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      this.cUl.mX(this.gzx);
      if ((this.gzv != null) && (this.gzx > 1))
        break label129;
      this.cUl.setVisibility(8);
      aa.v("MicroMsg.MMGridPaper", "set DotView gone");
    }
    while (true)
    {
      if (this.cUp >= this.gzx)
        this.cUp = (-1 + this.gzx);
      this.cUk.mZ(this.cUp - this.cUr);
      this.cUk.na(this.cUp);
      this.cUl.mY(this.cUp);
      return;
      bool = false;
      break;
      label129: this.cUl.setVisibility(0);
      aa.v("MicroMsg.MMGridPaper", "set DotView visible");
    }
  }

  private int arB()
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    if (localDisplay.getWidth() < localDisplay.getHeight())
      return 1;
    return 2;
  }

  private void asp()
  {
    aa.v("MicroMsg.MMGridPaper", "MMGridPaper initFlipper");
    if (this.cUl == null)
    {
      this.cUl = ((MMDotView)findViewById(i.avJ));
      this.cUl.mW(this.cUw);
    }
    if (this.cUk == null)
    {
      this.cUk = ((MMFlipper)findViewById(i.avK));
      this.cUk.a(this.gzr);
      this.cUk.a(this.gzq);
    }
    aGU();
    aGV();
  }

  private static int bh(int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt1);
      arrayOfObject2[1] = Integer.valueOf(paramInt2);
      aa.c("MicroMsg.MMGridPaper", "ceil:total[%d], length[%d]", arrayOfObject2);
      return 0;
    }
    while (true)
    {
      int i;
      int j;
      if (i > 0)
      {
        i -= paramInt2;
        j++;
      }
      else
      {
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = Integer.valueOf(paramInt1);
        arrayOfObject1[1] = Integer.valueOf(paramInt2);
        arrayOfObject1[2] = Integer.valueOf(j);
        aa.d("MicroMsg.MMGridPaper", "ceil:num[%d], length[%d], result[%d]", arrayOfObject1);
        return j;
        i = paramInt1;
        j = 0;
      }
    }
  }

  private void init()
  {
    this.gnj = new Handler(Looper.getMainLooper());
    View.inflate(getContext(), k.aWw, this);
    this.gzA = arB();
  }

  public final void JX()
  {
    this.cUB = 70;
  }

  public final void JY()
  {
    this.cUC = 70;
  }

  public final void JZ()
  {
    this.cUD = 8;
    this.cUE = 15;
  }

  public final void a(bd parambd)
  {
    boolean bool = true;
    this.gzv = parambd;
    Object[] arrayOfObject = new Object[bool];
    if (parambd == null);
    while (true)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.e("MicroMsg.MMGridPaper", "setGridPaperAdapter:adapter is null[%B]", arrayOfObject);
      if (this.gzv != null)
        this.gzv.a(new av(this));
      asp();
      return;
      bool = false;
    }
  }

  public final void aGQ()
  {
    this.gzC = 3;
  }

  public final void aGR()
  {
    this.gzz = true;
  }

  public final void aGS()
  {
    this.cUH = 3;
    this.cUG = 3;
  }

  public final void aGT()
  {
    this.kE = null;
    ViewGroup localViewGroup = (ViewGroup)findViewById(i.avU);
    localViewGroup.removeAllViews();
    if (this.kE != null)
      localViewGroup.addView(this.kE);
  }

  public final void nc(int paramInt)
  {
    this.gzB = paramInt;
  }

  @TargetApi(8)
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    if ((paramConfiguration.orientation == 1) || (paramConfiguration.orientation == 2))
    {
      aa.d("MicroMsg.MMGridPaper", "onConfigChanged:" + paramConfiguration.orientation);
      this.cUF = true;
    }
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    arrayOfObject[3] = Integer.valueOf(paramInt4);
    aa.e("MicroMsg.MMGridPaper", "onLayout left=%s top=%s right=%s bottom=%s", arrayOfObject);
    if (this.gzA != arB())
    {
      this.gzA = arB();
      aa.d("MicroMsg.MMGridPaper", "onLayout, currentOrientation changed, reAdjustDisplayArea");
      this.cUF = true;
      clearAnimation();
      aGU();
      aGV();
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void refresh()
  {
    this.gzw = (this.cUp * this.cUu * this.cUv);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.cUp);
    arrayOfObject[1] = Integer.valueOf(this.cUu);
    arrayOfObject[2] = Integer.valueOf(this.cUv);
    arrayOfObject[3] = Integer.valueOf(this.gzw);
    aa.f("MicroMsg.MMGridPaper", "refreshed:virtualPage[%d], col[%d], row[%d], scrollCount[%d]", arrayOfObject);
    asp();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMGridPaper
 * JD-Core Version:    0.6.2
 */