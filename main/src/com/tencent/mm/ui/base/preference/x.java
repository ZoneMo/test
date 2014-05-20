package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

public class x extends BaseAdapter
  implements n
{
  private final SharedPreferences chz;
  private final Context context;
  private ai gFO;
  private final LinkedList gGA = new LinkedList();
  private final HashMap gGB = new HashMap();
  private final HashSet gGC = new HashSet();
  private final LinkedList gGD = new LinkedList();
  private final HashMap gGE = new HashMap();
  private final HashMap gGF = new HashMap();
  private int[] gGG = new int[0];
  private boolean gGH = false;
  private boolean gGI = false;
  private final ae gGz;

  public x(Context paramContext, SharedPreferences paramSharedPreferences)
  {
    this.gGz = new ae(paramContext);
    this.context = paramContext;
    this.chz = paramSharedPreferences;
  }

  private static void a(Preference paramPreference, SharedPreferences paramSharedPreferences)
  {
    if ((paramPreference instanceof CheckBoxPreference))
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)paramPreference;
      if (localCheckBoxPreference.isPersistent())
        localCheckBoxPreference.setChecked(paramSharedPreferences.getBoolean(paramPreference.getKey(), ((CheckBoxPreference)paramPreference).isChecked()));
    }
    if ((paramPreference instanceof MMSwitchButtonPreference))
    {
      MMSwitchButtonPreference localMMSwitchButtonPreference = (MMSwitchButtonPreference)paramPreference;
      if (localMMSwitchButtonPreference.isPersistent())
        localMMSwitchButtonPreference.setChecked(paramSharedPreferences.getBoolean(paramPreference.getKey(), ((MMSwitchButtonPreference)paramPreference).isChecked()));
    }
    if ((paramPreference instanceof DialogPreference))
    {
      DialogPreference localDialogPreference = (DialogPreference)paramPreference;
      if (localDialogPreference.isPersistent())
        localDialogPreference.setValue(paramSharedPreferences.getString(paramPreference.getKey(), null));
    }
    if ((paramPreference instanceof EditPreference))
    {
      EditPreference localEditPreference = (EditPreference)paramPreference;
      if (localEditPreference.isPersistent())
      {
        localEditPreference.setValue(paramSharedPreferences.getString(paramPreference.getKey(), null));
        localEditPreference.setSummary(localEditPreference.getValue());
      }
    }
  }

  private void aIm()
  {
    HashSet localHashSet = new HashSet();
    int i = 0;
    if (i < this.gGD.size())
    {
      Preference localPreference1 = (Preference)this.gGB.get(this.gGD.get(i));
      if (((localPreference1 instanceof PreferenceCategory)) && (cj.hX(localPreference1.getKey())) && (i != 0))
      {
        Preference localPreference2 = (Preference)this.gGB.get(this.gGD.get(i - 1));
        if ((localPreference2 instanceof PreferenceCategory))
        {
          if ((!cj.hX(localPreference2.getKey())) || ((localPreference2.getTitle() != null) && (localPreference2.getTitle().toString().trim().length() > 0)))
            break label150;
          localHashSet.add(e(localPreference2));
        }
      }
      while (true)
      {
        i++;
        break;
        label150: if ((cj.hX(localPreference1.getKey())) && ((localPreference1.getTitle() == null) || (localPreference1.getTitle().toString().trim().length() <= 0)))
          localHashSet.add(e(localPreference1));
      }
    }
    this.gGD.removeAll(localHashSet);
  }

  private static String d(Preference paramPreference)
  {
    return paramPreference.getClass().getName() + "L" + paramPreference.getLayoutResource() + "W" + paramPreference.getWidgetLayoutResource();
  }

  private static String e(Preference paramPreference)
  {
    if ((paramPreference.getKey() != null) && (paramPreference.getKey().length() > 0))
      return paramPreference.getKey();
    return "_anonymous_pref@" + paramPreference.hashCode();
  }

  public final void O(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
      if (!this.gGC.contains(paramString))
        this.gGC.add(paramString);
    while (this.gGC.remove(paramString))
    {
      notifyDataSetChanged();
      return;
    }
  }

  public final void a(Preference paramPreference, int paramInt)
  {
    String str = e(paramPreference);
    this.gGB.put(str, paramPreference);
    LinkedList localLinkedList = this.gGA;
    if (paramInt == -1)
      paramInt = this.gGA.size();
    localLinkedList.add(paramInt, str);
    if ((!this.gGE.containsKey(d(paramPreference))) && (!this.gGI))
      this.gGE.put(d(paramPreference), Integer.valueOf(this.gGE.size()));
    if (paramPreference.getDependency() != null)
      this.gGF.put(paramPreference.getDependency() + "|" + paramPreference.getKey(), paramPreference.getKey());
    if (!this.gGH)
      notifyDataSetChanged();
  }

  public final void addPreferencesFromResource(int paramInt)
  {
    this.gGH = true;
    this.gGz.a(paramInt, this);
    this.gGH = false;
    notifyDataSetChanged();
  }

  public final void b(Preference paramPreference)
  {
    a(paramPreference, -1);
  }

  public final void b(ai paramai)
  {
    this.gFO = paramai;
    notifyDataSetChanged();
  }

  public final boolean c(Preference paramPreference)
  {
    if (paramPreference == null)
      return false;
    String str = e(paramPreference);
    this.gGA.remove(str);
    this.gGB.remove(str);
    this.gGC.remove(paramPreference.getKey());
    notifyDataSetChanged();
    return true;
  }

  public int getCount()
  {
    return this.gGD.size();
  }

  public Object getItem(int paramInt)
  {
    return this.gGB.get(this.gGD.get(paramInt));
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  public int getItemViewType(int paramInt)
  {
    Preference localPreference = (Preference)this.gGB.get(this.gGD.get(paramInt));
    Integer localInteger = (Integer)this.gGE.get(d(localPreference));
    if (localInteger == null)
      return -1;
    return localInteger.intValue();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Preference localPreference = (Preference)this.gGB.get(this.gGD.get(paramInt));
    if ((localPreference instanceof MMSwitchButtonPreference))
      localPreference.a(this.gFO);
    if (!this.gGE.containsKey(d(localPreference)))
      paramView = null;
    View localView = localPreference.getView(paramView, paramViewGroup);
    int i = this.gGG[paramInt];
    if ((i & 0x4) == 0)
    {
      if ((i & 0x10) != 0)
        localView.setBackgroundResource(h.afm);
    }
    else
      return localView;
    if ((paramInt == -1 + this.gGD.size()) || ((paramInt == -2 + this.gGD.size()) && ((getItem(-1 + this.gGD.size()) instanceof PreferenceCategory))))
    {
      localView.setBackgroundResource(h.ady);
      return localView;
    }
    if ((i & 0x2) != 0)
    {
      localView.setBackgroundResource(h.adz);
      return localView;
    }
    localView.setBackgroundResource(h.ady);
    return localView;
  }

  public int getViewTypeCount()
  {
    if (!this.gGI)
      this.gGI = true;
    return Math.max(1, this.gGE.size());
  }

  public final int indexOf(String paramString)
  {
    return this.gGA.indexOf(paramString);
  }

  public void notifyDataSetChanged()
  {
    this.gGD.clear();
    Iterator localIterator = this.gGA.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!this.gGC.contains(str))
        if (this.gGB.get(str) == null)
          aa.e("MicroMsg.MMPreferenceAdapter", "not found pref by key " + str);
        else
          this.gGD.add(str);
    }
    aIm();
    this.gGG = new int[this.gGD.size()];
    if (this.gGG.length <= 0)
      return;
    int i = this.gGG.length;
    int j = 0;
    if (i == 1)
    {
      if (((Preference)this.gGB.get(this.gGD.get(0))).getLayoutResource() == k.aWC)
        this.gGG[0] = 3;
      while (true)
      {
        a((Preference)this.gGB.get(this.gGD.get(0)), this.chz);
        return;
        this.gGG[0] = 4;
      }
    }
    if (j < this.gGD.size())
    {
      a((Preference)this.gGB.get(this.gGD.get(j)), this.chz);
      int k = ((Preference)this.gGB.get(this.gGD.get(j))).getLayoutResource();
      if (k == k.aWC)
        if (j == 0)
        {
          int[] arrayOfInt7 = this.gGG;
          arrayOfInt7[j] = (0x1 | arrayOfInt7[j]);
        }
      label409: 
      do
      {
        while (true)
        {
          j++;
          break;
          if (j == -1 + this.gGD.size())
          {
            int[] arrayOfInt6 = this.gGG;
            arrayOfInt6[j] = (0x2 | arrayOfInt6[j]);
          }
          if (((Preference)this.gGB.get(this.gGD.get(j - 1))).getLayoutResource() != k.aWC)
          {
            int[] arrayOfInt5 = this.gGG;
            arrayOfInt5[j] = (0x1 | arrayOfInt5[j]);
            continue;
            if (k != k.aWZ)
              break label481;
            if (j != 0)
              break label409;
            int[] arrayOfInt4 = this.gGG;
            arrayOfInt4[j] = (0x4 | arrayOfInt4[j]);
          }
        }
        int[] arrayOfInt3 = this.gGG;
        arrayOfInt3[j] = (0x10 | arrayOfInt3[j]);
      }
      while (((Preference)this.gGB.get(this.gGD.get(j - 1))).getLayoutResource() != k.aWC);
      while (true)
      {
        int[] arrayOfInt2 = this.gGG;
        int n = j - 1;
        arrayOfInt2[n] = (0x2 | arrayOfInt2[n]);
        break;
        label481: int[] arrayOfInt1 = this.gGG;
        arrayOfInt1[j] = (0x4 | arrayOfInt1[j]);
        if (j == 0)
          break;
        int m = ((Preference)this.gGB.get(this.gGD.get(j - 1))).getLayoutResource();
        if (m != k.aWC)
          if (m != k.aWZ)
            break;
      }
    }
    super.notifyDataSetChanged();
  }

  public final void removeAll()
  {
    this.gGD.clear();
    this.gGB.clear();
    this.gGA.clear();
    this.gGC.clear();
    notifyDataSetChanged();
  }

  public final Preference wn(String paramString)
  {
    return (Preference)this.gGB.get(paramString);
  }

  public final boolean wo(String paramString)
  {
    return c(wn(paramString));
  }

  public final int wp(String paramString)
  {
    if (this.gGD == null)
      return -1;
    return this.gGD.indexOf(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.x
 * JD-Core Version:    0.6.2
 */