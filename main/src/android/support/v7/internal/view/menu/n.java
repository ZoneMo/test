package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class n extends BaseAdapter
{
  private int ko = -1;

  public n(m paramm)
  {
    bT();
  }

  private void bT()
  {
    s locals = this.kp.hh.ck();
    if (locals != null)
    {
      ArrayList localArrayList = this.kp.hh.ce();
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
    ArrayList localArrayList = this.kp.hh.ce();
    int i = paramInt + m.a(this.kp);
    if ((this.ko >= 0) && (i >= this.ko))
      i++;
    return (s)localArrayList.get(i);
  }

  public final int getCount()
  {
    int i = this.kp.hh.ce().size() - m.a(this.kp);
    if (this.ko < 0)
      return i;
    return i - 1;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (View localView = this.kp.ge.inflate(this.kp.jU, paramViewGroup, false); ; localView = paramView)
    {
      ((ah)localView).a(C(paramInt));
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
 * Qualified Name:     android.support.v7.internal.view.menu.n
 * JD-Core Version:    0.6.2
 */