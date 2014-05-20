package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.tencent.mm.an.a;
import com.tencent.mm.g;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.w;
import com.tencent.mm.storage.y;
import java.util.ArrayList;
import java.util.List;

public class EmojiView extends ImageView
{
  private static Handler fkB = new Handler(new l());
  private static int fkC = 1;
  private static boolean fkx = false;
  private static long fky = 0L;
  private static int fkz;
  private int cRZ = 0;
  private y cZk;
  private boolean cpI = true;
  private o fkA;
  private long fkD = 0L;
  private int fkE = 0;
  private long fkF = 0L;
  private long fkG = 0L;
  private ArrayList fkH = null;
  private String[] fkI = null;
  private List fkJ = null;
  private Bitmap fkK = null;
  private boolean fkL = false;
  private long fkM;
  private boolean fkN;
  private boolean fkO = true;
  private Runnable fkP = new n(this);
  private Handler handler = new m(this);

  public EmojiView(Context paramContext)
  {
    this(paramContext, null);
  }

  public EmojiView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    fkz = paramContext.getResources().getDimensionPixelSize(g.abu);
  }

  public static void ark()
  {
    fky = 9223372036854775807L;
  }

  private int arl()
  {
    int i = this.cRZ;
    this.cRZ = (i + 1);
    return i % this.fkE;
  }

  private void arm()
  {
    if (this.cZk == null);
    do
    {
      do
      {
        do
          while (true)
          {
            return;
            if (!this.fkN)
            {
              i(((BitmapDrawable)getContext().getResources().getDrawable(com.tencent.mm.h.ago)).getBitmap());
              return;
            }
            if (this.cZk.aBG() == y.ghl)
            {
              if (this.fkJ == null)
              {
                ArrayList localArrayList = new ArrayList();
                for (int k = 0; k < 4; k++)
                {
                  y localy = new y();
                  localy.setName("dice_action_" + k + ".png");
                  localArrayList.add(localy);
                }
                this.fkJ = localArrayList;
                this.fkE = this.fkJ.size();
                this.fkG = 100L;
                this.fkF = 100L;
              }
              recycle();
              if (this.cRZ <= 3 * this.fkE)
              {
                i(((y)this.fkJ.get(arl())).bM(getContext()));
                return;
              }
              this.fkL = false;
              i(this.cZk.bM(getContext()));
              return;
            }
            if (this.cZk.aBG() != y.ghk)
              break;
            if (this.fkJ == null)
            {
              this.fkJ = com.tencent.mm.pluginsdk.h.apj().fD(this.cZk.aBG());
              if (this.fkJ == null)
                this.fkJ = new ArrayList();
              this.fkE = this.fkJ.size();
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = Integer.valueOf(this.fkE);
              aa.d("MicroMsg.EmojiView", "jsb totalFrame: %d", arrayOfObject);
              this.fkG = 300L;
              this.fkF = 300L;
            }
            recycle();
            if (this.cRZ <= 3 * this.fkE)
              i(((y)this.fkJ.get(arl())).bM(getContext()));
            while (!this.cpI)
            {
              i(h(this.fkK));
              return;
              this.fkL = false;
              i(this.cZk.bM(getContext()));
            }
          }
        while ((this.cZk.getType() != y.gho) && (this.cZk.getType() != y.ghr));
        if (this.cZk.aBA())
          break;
        if (!com.tencent.mm.pluginsdk.h.apj().a(this.cZk))
          com.tencent.mm.pluginsdk.h.apj().a(this.cZk, getContext());
        aa.i("MicroMsg.EmojiView", "set static bitmap");
      }
      while ((this.fkA != null) && (!this.fkA.g(this.cZk)));
      aa.v("MicroMsg.EmojiView", "use default encoding bitmap");
      i(this.cZk.bM(getContext()));
      return;
      if (this.fkA != null)
        this.fkA.h(this.cZk);
      if ((this.fkH != null) && (this.fkE != 0))
        break;
      this.fkH = new ArrayList();
      String str = this.cZk.aBL();
      aa.d("MicroMsg.EmojiView", "res = %s", new Object[] { str });
      this.fkI = str.split("_");
    }
    while (this.fkI.length != 2);
    this.fkE = Integer.parseInt(this.fkI[0]);
    String[] arrayOfString = this.fkI[1].split(",");
    if ((arrayOfString == null) || (arrayOfString.length != this.fkE))
    {
      aa.v("MicroMsg.EmojiView", "durArr.length != totalFrame");
      return;
    }
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      long l = Long.valueOf(arrayOfString[j]).longValue();
      if (l <= 0L)
        l = 100L;
      this.fkH.add(Long.valueOf(l));
    }
    this.fkF = ((Long)this.fkH.get(this.cRZ % this.fkE)).longValue();
    this.fkG = ((Long)this.fkH.get((1 + this.cRZ) % this.fkE)).longValue();
    if (this.cZk.aBG() == y.ghl)
    {
      this.fkF = 100L;
      this.fkG = 100L;
    }
    while (true)
    {
      recycle();
      i(com.tencent.mm.pluginsdk.h.apj().a(getContext(), arl(), this.cZk));
      if (this.fkK != null)
        break;
      i(this.cZk.bM(getContext()));
      return;
      if (this.cZk.aBG() == y.ghk)
      {
        this.fkF = 300L;
        this.fkG = 300L;
      }
    }
  }

  public static void bF(long paramLong)
  {
    if (paramLong < fky)
      fky = paramLong;
  }

  public static void ck(boolean paramBoolean)
  {
    fkx = paramBoolean;
    if (paramBoolean)
    {
      fkB.sendEmptyMessageDelayed(fkC, 1000L);
      return;
    }
    fkB.removeMessages(fkC);
  }

  private Bitmap h(Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (paramBitmap.isRecycled()))
      return paramBitmap;
    Matrix localMatrix = new Matrix();
    localMatrix.preScale(-1.0F, 1.0F);
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, false);
    localBitmap.setDensity(a.fromDPToPix(getContext(), 160));
    if (paramBitmap != localBitmap)
      paramBitmap.recycle();
    return localBitmap;
  }

  public static int qC(String paramString)
  {
    return Math.abs(("emojiview_" + paramString).hashCode());
  }

  private void recycle()
  {
    if ((this.fkK != null) && (!this.fkK.isRecycled()))
      this.fkK.recycle();
  }

  public final void a(o paramo)
  {
    this.fkA = paramo;
  }

  public final void a(y paramy, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramy == null);
    while (true)
    {
      try
      {
        aa.i("MicroMsg.EmojiView", "setEmojiInfo but emoji null!");
        this.cZk = paramy;
        recycle();
        return;
        aa.d("MicroMsg.EmojiView", "setEmojiInfo");
        setId(qC(paramy.yK()));
        this.fkN = be.uz().isSDCardAvailable();
        if (this.fkN)
          break label226;
        if ((paramy.aBG() == y.ghc) || (paramy.aBG() == y.ghl) || (paramy.aBG() == y.ghk))
        {
          i(paramy.bM(getContext()));
          this.fkL = false;
          requestLayout();
          invalidate();
          continue;
        }
      }
      finally
      {
      }
      if ((!cj.hX(paramy.aBK())) && (!paramy.aBK().equals(String.valueOf(w.ggX))) && (!paramy.aBK().equals(String.valueOf(w.ggW))) && (!paramy.aBK().equals(String.valueOf(w.ggY))))
      {
        i(paramy.bM(getContext()));
      }
      else
      {
        i(((BitmapDrawable)getContext().getResources().getDrawable(com.tencent.mm.h.ago)).getBitmap());
        continue;
        label226: if ((paramy != null) && ((this.cZk == null) || (this.cZk.yK() == null) || (!this.cZk.yK().equals(paramy.yK())) || (this.fkD != paramLong)))
          break;
        aa.i("MicroMsg.EmojiView", " emojiView UI reset same emoji.");
      }
    }
    this.cZk = paramy;
    this.fkD = paramLong;
    this.cpI = paramBoolean2;
    label330: Bitmap localBitmap;
    Object[] arrayOfObject;
    if ((!paramy.apQ()) && (paramy.getType() != y.gho) && (paramy.getType() != y.ghr))
    {
      aa.i("MicroMsg.EmojiView", "emoji is not gif");
      recycle();
      localBitmap = paramy.bM(getContext());
      arrayOfObject = new Object[1];
      if (localBitmap != null)
        break label560;
    }
    label560: for (Object localObject2 = "null!"; ; localObject2 = localBitmap)
    {
      arrayOfObject[0] = localObject2;
      aa.d("MicroMsg.EmojiView", "emoji is %s", arrayOfObject);
      i(localBitmap);
      if ((paramy.aBG() == y.ghk) && (!paramBoolean2))
        i(h(this.fkK));
      this.fkL = false;
      this.handler.removeMessages(1001);
      requestLayout();
      invalidate();
      break;
      do
      {
        aa.i("MicroMsg.EmojiView", "emoji is gif");
        this.fkL = true;
        this.cRZ = 0;
        this.fkE = 0;
        this.fkF = 0L;
        this.fkG = 0L;
        if (paramy.aBG() == y.ghl)
        {
          this.fkF = 100L;
          this.fkG = 100L;
        }
        while (true)
        {
          aa.i("MicroMsg.EmojiView", "set duration to 0");
          this.fkJ = null;
          arm();
          this.fkM = 0L;
          break;
          if (paramy.aBG() == y.ghk)
          {
            this.fkF = 300L;
            this.fkG = 300L;
          }
        }
      }
      while (paramBoolean1);
      break label330;
    }
  }

  protected boolean arg()
  {
    return com.tencent.mm.pluginsdk.h.apj().KR();
  }

  protected void arh()
  {
  }

  protected boolean ari()
  {
    return true;
  }

  protected boolean arj()
  {
    return true;
  }

  public final y arn()
  {
    return this.cZk;
  }

  public void draw(Canvas paramCanvas)
  {
    boolean bool = arg();
    int i;
    Handler localHandler;
    if ((this.fkL) && (bool))
    {
      if (System.currentTimeMillis() - this.fkM < this.fkF)
        break label82;
      i = 1;
      if (i != 0)
      {
        this.fkM = System.currentTimeMillis();
        localHandler = this.handler;
        if (this.fkG != 0L)
          break label87;
      }
    }
    label82: label87: for (long l = 100L; ; l = this.fkG)
    {
      localHandler.sendEmptyMessageDelayed(1001, l);
      super.draw(paramCanvas);
      return;
      i = 0;
      break;
    }
  }

  public final void i(Bitmap paramBitmap)
  {
    if (paramBitmap != null);
    while (true)
    {
      try
      {
        this.fkK = paramBitmap;
        return;
        if ((this.cZk == null) || (!this.cZk.aBy()))
          break label103;
        if ((this.fkO) && (Build.VERSION.SDK_INT >= 19))
        {
          aa.d("MicroMsg.EmojiView", "user emo_loading_bg");
          this.fkK = ((BitmapDrawable)getContext().getResources().getDrawable(com.tencent.mm.h.adU)).getBitmap();
          continue;
        }
      }
      finally
      {
      }
      this.fkK = this.cZk.bN(getContext());
      continue;
      label103: this.fkK = ((BitmapDrawable)getContext().getResources().getDrawable(com.tencent.mm.h.afh)).getBitmap();
    }
  }

  public final void i(y paramy)
  {
    try
    {
      this.fkO = false;
      j(paramy);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void j(y paramy)
  {
    try
    {
      a(paramy, 0L, true, true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if ((this.fkK != null) && (!this.fkK.isRecycled()))
    {
      int i = getRight() - getLeft() - getPaddingRight() - getPaddingLeft();
      int j = getBottom() - getTop() - getPaddingBottom() - getPaddingTop();
      int k = this.fkK.getWidth();
      int m = this.fkK.getHeight();
      double d1 = i / k;
      double d2 = j / m;
      Bitmap localBitmap = this.fkK;
      if ((ari()) && ((d1 < 1.0D) || (d2 < 1.0D)))
        setScaleType(ImageView.ScaleType.FIT_CENTER);
      setImageBitmap(localBitmap);
      super.onDraw(paramCanvas);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (!arj())
    {
      super.onMeasure(paramInt1, paramInt2);
      arh();
      return;
    }
    int j;
    int i;
    if (this.fkK != null)
    {
      int k = getResources().getDisplayMetrics().densityDpi;
      j = resolveSize(this.fkK.getScaledWidth(k), paramInt1);
      i = resolveSize(this.fkK.getScaledHeight(k), paramInt2);
    }
    while (true)
    {
      if (j > fkz)
      {
        i = fkz;
        j = fkz;
      }
      setMeasuredDimension(j, i);
      arh();
      return;
      i = 0;
      j = 0;
    }
  }

  public final void refresh()
  {
    aa.i("MicroMsg.EmojiView", "refresh emoji view.");
    if (this.cZk == null)
    {
      aa.i("MicroMsg.EmojiView", "pre refresh emoji view failed. emoji is null. can't get md5");
      return;
    }
    this.cZk = com.tencent.mm.pluginsdk.h.apj().ja(this.cZk.yK());
    if (this.cZk == null)
    {
      aa.i("MicroMsg.EmojiView", "refresh emoji view failed. emoji is null.");
      return;
    }
    this.fkF = 0L;
    this.fkG = 0L;
    if (this.cZk.aBG() == y.ghl)
    {
      this.fkF = 100L;
      this.fkG = 100L;
    }
    while (true)
    {
      this.fkM = 0L;
      arm();
      invalidate();
      return;
      if (this.cZk.aBG() == y.ghk)
      {
        this.fkF = 300L;
        this.fkG = 300L;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.EmojiView
 * JD-Core Version:    0.6.2
 */