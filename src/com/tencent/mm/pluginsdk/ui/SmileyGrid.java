package com.tencent.mm.pluginsdk.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import com.tencent.mm.an.a;
import com.tencent.mm.g;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;

public class SmileyGrid extends GridView
{
  private static al flL;
  public static final int flx;
  public static int flz;
  private int cUu = 0;
  private int cUz;
  public int dJC;
  private AdapterView.OnItemClickListener dne = new ai(this);
  private int flA = 20;
  private int flB;
  public int flC = 0;
  private int flD = 0;
  private String flE;
  private aw flF;
  private h flG;
  public boolean flH;
  private boolean flI;
  private boolean flJ;
  private Map flK = new HashMap();
  public am fly;
  private Context mContext;

  static
  {
    Context localContext = com.tencent.mm.sdk.platformtools.al.getContext();
    if (localContext == null);
    for (int i = 86; ; i = a.n(localContext, a.l(localContext, g.abp)))
    {
      flx = i;
      flz = 1;
      flL = null;
      return;
    }
  }

  public SmileyGrid(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    if (LH())
      r(paramContext);
  }

  public SmileyGrid(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    if (LH())
      r(this.mContext);
  }

  private void art()
  {
    switch (this.flA)
    {
    case 21:
    case 22:
    case 24:
    default:
    case 20:
    case 23:
    case 25:
    }
    while (true)
    {
      setColumnWidth(this.cUz);
      return;
      this.cUz = a.fromDPToPix(this.mContext, 43);
      continue;
      this.cUz = a.fromDPToPix(this.mContext, 80);
    }
  }

  public static void arv()
  {
  }

  private void r(Context paramContext)
  {
    this.fly = new am(this);
    setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    setBackgroundResource(0);
    setStretchMode(2);
    art();
    setAdapter(this.fly);
    setOnItemClickListener(this.dne);
    int i = a.fromDPToPix(paramContext, 6);
    int j = a.fromDPToPix(paramContext, 6);
    int k = a.fromDPToPix(paramContext, 6);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.cUz);
    aa.d("MicroMsg.SmileyGrid", "mItemWidthInPix:%d", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Integer.valueOf(i);
    arrayOfObject2[1] = Integer.valueOf(j);
    arrayOfObject2[2] = Integer.valueOf(k);
    aa.d("MicroMsg.SmileyGrid", "paddingLeft:%d,paddingRight:%d,paddingTop:%d", arrayOfObject2);
    setPadding(i, k, j, 0);
    if (this.fly != null)
      this.fly.arx();
  }

  protected boolean LH()
  {
    return true;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, String paramString)
  {
    aa.v("MicroMsg.SmileyGrid", "type:" + paramInt1 + " itemsPerPage:" + paramInt4 + " totalPage:" + paramInt5 + " curPage:" + this.dJC);
    this.flH = false;
    this.flA = paramInt1;
    this.dJC = paramInt2;
    this.flB = paramInt3;
    this.flC = paramInt4;
    this.flD = paramInt5;
    this.flE = paramString;
    this.cUu = paramInt6;
    art();
    setNumColumns(paramInt6);
    this.fly.update();
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, String paramString, int paramInt7)
  {
    aa.v("MicroMsg.SmileyGrid", "type:" + paramInt1 + " itemsPerPage:" + paramInt4 + " totalPage:" + paramInt5 + " curPage:" + this.dJC);
    this.flH = false;
    this.flA = paramInt1;
    this.dJC = paramInt2;
    this.flB = paramInt3;
    this.flC = paramInt4;
    this.flD = paramInt5;
    this.flE = paramString;
    this.cUu = paramInt6;
    if (this.cUu == 7)
      setColumnWidth(paramInt7 / 7);
    while (true)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt7);
      aa.d("MicroMsg.SmileyGrid", "gridViewWidth:%d", arrayOfObject);
      setNumColumns(paramInt6);
      this.fly.update();
      return;
      setColumnWidth(paramInt7 / 14);
    }
  }

  public final void a(aw paramaw)
  {
    this.flF = paramaw;
  }

  public final void a(h paramh)
  {
    this.flG = paramh;
  }

  public final int aru()
  {
    return this.flA;
  }

  public final void kg(int paramInt)
  {
    if (paramInt <= 0)
      return;
    setPadding(a.fromDPToPix(getContext(), 6), paramInt, a.fromDPToPix(getContext(), 6), 0);
    setVerticalSpacing(paramInt / 2);
  }

  public final void n(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.flI = paramBoolean1;
    this.flJ = paramBoolean2;
  }

  @TargetApi(8)
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void release()
  {
    this.flG = null;
    this.flF = null;
    if (this.fly != null)
      this.fly.ary();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.SmileyGrid
 * JD-Core Version:    0.6.2
 */