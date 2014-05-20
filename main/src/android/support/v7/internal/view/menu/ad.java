package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class ad extends BaseAdapter
{
  private int ko = -1;
  private o lu;

  public ad(ac paramac, o paramo)
  {
    this.lu = paramo;
    bT();
  }

  private void bT()
  {
    s locals = ac.c(this.lv).ck();
    if (locals != null)
    {
      ArrayList localArrayList = ac.c(this.lv).ce();
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
        if ((s)localArrayList.get(j) == locals)
        {
          this.ko = j;
          return;
        }
    }
    this.ko = -1;
  }

  public final s C(int paramInt)
  {
    if (ac.a(this.lv));
    for (ArrayList localArrayList = this.lu.ce(); ; localArrayList = this.lu.cb())
    {
      if ((this.ko >= 0) && (paramInt >= this.ko))
        paramInt++;
      return (s)localArrayList.get(paramInt);
    }
  }

  public final int getCount()
  {
    if (ac.a(this.lv));
    for (ArrayList localArrayList = this.lu.ce(); this.ko < 0; localArrayList = this.lu.cb())
      return localArrayList.size();
    return -1 + localArrayList.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (View localView = ac.b(this.lv).inflate(ac.lm, paramViewGroup, false); ; localView = paramView)
    {
      ah localah = (ah)localView;
      if (this.lv.kj)
        ((ListMenuItemView)localView).bR();
      localah.a(C(paramInt));
      return localView;
    }
  }

  public final void notifyDataSetChanged()
  {
    bT();
    super.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ad
 * JD-Core Version:    0.6.2
 */