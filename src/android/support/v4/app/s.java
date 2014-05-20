package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.an;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class s extends an
{
  private final l bM;
  private v bN = null;
  private ArrayList bO = new ArrayList();
  private ArrayList bP = new ArrayList();
  private Fragment bQ = null;

  public s(l paraml)
  {
    this.bM = paraml;
  }

  public final void O()
  {
    if (this.bN != null)
    {
      this.bN.commitAllowingStateLoss();
      this.bN = null;
      this.bM.executePendingTransactions();
    }
  }

  public final Parcelable P()
  {
    int i = this.bO.size();
    Bundle localBundle1 = null;
    if (i > 0)
    {
      localBundle1 = new Bundle();
      Fragment.SavedState[] arrayOfSavedState = new Fragment.SavedState[this.bO.size()];
      this.bO.toArray(arrayOfSavedState);
      localBundle1.putParcelableArray("states", arrayOfSavedState);
    }
    int j = 0;
    Bundle localBundle2 = localBundle1;
    while (j < this.bP.size())
    {
      Fragment localFragment = (Fragment)this.bP.get(j);
      if (localFragment != null)
      {
        if (localBundle2 == null)
          localBundle2 = new Bundle();
        String str = "f" + j;
        this.bM.a(localBundle2, str, localFragment);
      }
      j++;
    }
    return localBundle2;
  }

  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.bP.size() > paramInt)
    {
      Fragment localFragment2 = (Fragment)this.bP.get(paramInt);
      if (localFragment2 != null)
        return localFragment2;
    }
    if (this.bN == null)
      this.bN = this.bM.x();
    Fragment localFragment1 = f(paramInt);
    if (this.bO.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)this.bO.get(paramInt);
      if (localSavedState != null)
        localFragment1.a(localSavedState);
    }
    while (this.bP.size() <= paramInt)
      this.bP.add(null);
    localFragment1.setMenuVisibility(false);
    localFragment1.setUserVisibleHint(false);
    this.bP.set(paramInt, localFragment1);
    this.bN.a(paramViewGroup.getId(), localFragment1);
    return localFragment1;
  }

  public final void a(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    if (paramParcelable != null)
    {
      Bundle localBundle = (Bundle)paramParcelable;
      localBundle.setClassLoader(paramClassLoader);
      Parcelable[] arrayOfParcelable = localBundle.getParcelableArray("states");
      this.bO.clear();
      this.bP.clear();
      if (arrayOfParcelable != null)
        for (int j = 0; j < arrayOfParcelable.length; j++)
          this.bO.add((Fragment.SavedState)arrayOfParcelable[j]);
      Iterator localIterator = localBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str.startsWith("f"))
        {
          int i = Integer.parseInt(str.substring(1));
          Fragment localFragment = this.bM.a(localBundle, str);
          if (localFragment != null)
          {
            while (this.bP.size() <= i)
              this.bP.add(null);
            localFragment.setMenuVisibility(false);
            this.bP.set(i, localFragment);
          }
          else
          {
            new StringBuilder("Bad fragment at key ").append(str).toString();
          }
        }
      }
    }
  }

  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (this.bN == null)
      this.bN = this.bM.x();
    while (this.bO.size() <= paramInt)
      this.bO.add(null);
    this.bO.set(paramInt, this.bM.d(localFragment));
    this.bP.set(paramInt, null);
    this.bN.a(localFragment);
  }

  public final void a(Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (localFragment != this.bQ)
    {
      if (this.bQ != null)
      {
        this.bQ.setMenuVisibility(false);
        this.bQ.setUserVisibleHint(false);
      }
      if (localFragment != null)
      {
        localFragment.setMenuVisibility(true);
        localFragment.setUserVisibleHint(true);
      }
      this.bQ = localFragment;
    }
  }

  public final boolean a(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }

  public abstract Fragment f(int paramInt);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.s
 * JD-Core Version:    0.6.2
 */