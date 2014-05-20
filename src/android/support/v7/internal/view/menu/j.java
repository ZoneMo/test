package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class j
  implements ae
{
  private int cc;
  protected LayoutInflater ge;
  protected o hh;
  protected Context jQ;
  protected LayoutInflater jR;
  private af jS;
  private int jT;
  private int jU;
  protected ag jV;
  protected Context mContext;

  public j(Context paramContext, int paramInt1, int paramInt2)
  {
    this.jQ = paramContext;
    this.jR = LayoutInflater.from(paramContext);
    this.jT = paramInt1;
    this.jU = paramInt2;
  }

  public View a(s params, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof ah));
    for (ah localah = (ah)paramView; ; localah = (ah)this.jR.inflate(this.jU, paramViewGroup, false))
    {
      a(params, localah);
      return (View)localah;
    }
  }

  public void a(Context paramContext, o paramo)
  {
    this.mContext = paramContext;
    this.ge = LayoutInflater.from(this.mContext);
    this.hh = paramo;
  }

  public final void a(af paramaf)
  {
    this.jS = paramaf;
  }

  public void a(o paramo, boolean paramBoolean)
  {
    if (this.jS != null)
      this.jS.a(paramo, paramBoolean);
  }

  public abstract void a(s params, ah paramah);

  public boolean a(ak paramak)
  {
    if (this.jS != null)
      return this.jS.b(paramak);
    return false;
  }

  public ag b(ViewGroup paramViewGroup)
  {
    if (this.jV == null)
    {
      this.jV = ((ag)this.jR.inflate(this.jT, paramViewGroup, false));
      this.jV.d(this.hh);
      j(true);
    }
    return this.jV;
  }

  public boolean b(s params)
  {
    return true;
  }

  protected boolean b(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }

  public boolean bN()
  {
    return false;
  }

  public final boolean d(s params)
  {
    return false;
  }

  public final boolean e(s params)
  {
    return false;
  }

  public void j(boolean paramBoolean)
  {
    ViewGroup localViewGroup1 = (ViewGroup)this.jV;
    if (localViewGroup1 == null);
    label212: label221: 
    while (true)
    {
      return;
      int i;
      int m;
      if (this.hh != null)
      {
        this.hh.cc();
        ArrayList localArrayList = this.hh.cb();
        int j = localArrayList.size();
        int k = 0;
        i = 0;
        if (k < j)
        {
          s locals1 = (s)localArrayList.get(k);
          if (!b(locals1))
            break label212;
          View localView1 = localViewGroup1.getChildAt(i);
          if ((localView1 instanceof ah));
          for (s locals2 = ((ah)localView1).bB(); ; locals2 = null)
          {
            View localView2 = a(locals1, localView1, localViewGroup1);
            if (locals1 != locals2)
              localView2.setPressed(false);
            if (localView2 != localView1)
            {
              ViewGroup localViewGroup2 = (ViewGroup)localView2.getParent();
              if (localViewGroup2 != null)
                localViewGroup2.removeView(localView2);
              ((ViewGroup)this.jV).addView(localView2, i);
            }
            m = i + 1;
            k++;
            i = m;
            break;
          }
        }
      }
      while (true)
      {
        if (i >= localViewGroup1.getChildCount())
          break label221;
        if (!b(localViewGroup1, i))
        {
          i++;
          continue;
          m = i;
          break;
          i = 0;
        }
      }
    }
  }

  public final void setId(int paramInt)
  {
    this.cc = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.j
 * JD-Core Version:    0.6.2
 */