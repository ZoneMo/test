package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.k;
import com.tencent.mm.p;
import java.util.List;

public class Preference
  implements Comparable
{
  private String fiv;
  private boolean gGO = true;
  private ai gGS;
  private int gGT = 2147483647;
  private int gGU;
  private CharSequence gGV;
  private String gGW;
  private boolean gGX = true;
  private boolean gGY = true;
  private boolean gGZ;
  private boolean gHa = true;
  private String gHb;
  private Object gHc;
  private boolean gHd = true;
  private int gHe = k.aWC;
  private int gHf;
  private boolean gHg = false;
  private ah gHh;
  private List gHi;
  private Drawable hO;
  private CharSequence iU;
  private int ja;
  private final Context mContext;

  public Preference(Context paramContext)
  {
    this(paramContext, null);
  }

  public Preference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842894);
  }

  public Preference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this.mContext = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJw, paramInt, 0);
    int i = localTypedArray.getIndexCount();
    if (i >= 0)
    {
      int j = localTypedArray.getIndex(i);
      switch (j)
      {
      default:
      case 1:
      case 7:
      case 0:
      case 6:
      case 8:
      case 3:
      case 4:
      case 9:
      case 2:
      case 10:
      case 5:
      case 11:
      case 12:
      case 13:
      }
      while (true)
      {
        i--;
        break;
        this.ja = localTypedArray.getResourceId(j, 0);
        continue;
        this.fiv = localTypedArray.getString(j);
        continue;
        this.gGU = localTypedArray.getResourceId(j, 0);
        this.iU = localTypedArray.getString(j);
        continue;
        this.gGV = localTypedArray.getString(j);
        continue;
        this.gGT = localTypedArray.getInt(j, this.gGT);
        continue;
        this.gGW = localTypedArray.getString(j);
        continue;
        this.gHe = localTypedArray.getResourceId(j, this.gHe);
        continue;
        this.gHf = localTypedArray.getResourceId(j, this.gHf);
        continue;
        this.gGX = localTypedArray.getBoolean(j, true);
        continue;
        this.gGY = localTypedArray.getBoolean(j, true);
        continue;
        this.gHa = localTypedArray.getBoolean(j, this.gHa);
        continue;
        this.gHb = localTypedArray.getString(j);
        continue;
        this.gHc = null;
        continue;
        this.gGO = localTypedArray.getBoolean(j, this.gGO);
      }
    }
    localTypedArray.recycle();
    if (!getClass().getName().startsWith("android.preference"))
      this.gHg = true;
  }

  private void b(View paramView, boolean paramBoolean)
  {
    paramView.setEnabled(paramBoolean);
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      for (int i = -1 + localViewGroup.getChildCount(); i >= 0; i--)
        b(localViewGroup.getChildAt(i), paramBoolean);
    }
  }

  private void notifyDependencyChange(boolean paramBoolean)
  {
    List localList = this.gHi;
    if (localList == null)
      return;
    int i = localList.size();
    int j = 0;
    label20: Preference localPreference;
    if (j < i)
    {
      localPreference = (Preference)localList.get(j);
      if (localPreference.gHd == paramBoolean)
        if (paramBoolean)
          break label83;
    }
    label83: for (boolean bool = true; ; bool = false)
    {
      localPreference.gHd = bool;
      localPreference.notifyDependencyChange(localPreference.shouldDisableDependents());
      localPreference.notifyChanged();
      j++;
      break label20;
      break;
    }
  }

  private boolean shouldDisableDependents()
  {
    return !isEnabled();
  }

  public void a(ai paramai)
  {
    this.gGS = paramai;
  }

  public final void aIq()
  {
    if (1 != this.gGT)
    {
      this.gGT = 1;
      if (this.gHh == null);
    }
  }

  public final int aIr()
  {
    return this.ja;
  }

  public final void aIs()
  {
    this.gHa = false;
  }

  protected final boolean callChangeListener(Object paramObject)
  {
    if (this.gGS == null)
      return true;
    return this.gGS.a(this, paramObject);
  }

  public final Context getContext()
  {
    return this.mContext;
  }

  public final String getDependency()
  {
    return this.gHb;
  }

  public final Drawable getIcon()
  {
    return this.hO;
  }

  public final String getKey()
  {
    return this.fiv;
  }

  public final int getLayoutResource()
  {
    return this.gHe;
  }

  public CharSequence getSummary()
  {
    return this.gGV;
  }

  public CharSequence getTitle()
  {
    return this.iU;
  }

  public View getView(View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = onCreateView(paramViewGroup);
    onBindView(paramView);
    return paramView;
  }

  public final int getWidgetLayoutResource()
  {
    return this.gHf;
  }

  public final boolean isEnabled()
  {
    return (this.gGX) && (this.gHd);
  }

  public final boolean isPersistent()
  {
    return this.gHa;
  }

  public final boolean isSelectable()
  {
    return this.gGY;
  }

  protected void notifyChanged()
  {
    if (this.gHh != null);
  }

  protected void onBindView(View paramView)
  {
    TextView localTextView1 = (TextView)paramView.findViewById(16908310);
    if (localTextView1 != null)
      localTextView1.setText(getTitle());
    TextView localTextView2 = (TextView)paramView.findViewById(16908304);
    ImageView localImageView;
    int i;
    if (localTextView2 != null)
    {
      if (!TextUtils.isEmpty(getSummary()))
      {
        if (localTextView2.getVisibility() != 0)
          localTextView2.setVisibility(0);
        localTextView2.setText(getSummary());
      }
    }
    else
    {
      localImageView = (ImageView)paramView.findViewById(16908294);
      if (localImageView != null)
      {
        if ((this.ja != 0) || (this.hO != null))
        {
          if (this.hO == null)
            this.hO = this.mContext.getResources().getDrawable(this.ja);
          if (this.hO != null)
            localImageView.setImageDrawable(this.hO);
        }
        Drawable localDrawable = this.hO;
        i = 0;
        if (localDrawable == null)
          break label195;
      }
    }
    while (true)
    {
      localImageView.setVisibility(i);
      if (this.gGO)
        b(paramView, isEnabled());
      return;
      if (localTextView2.getVisibility() == 8)
        break;
      localTextView2.setVisibility(8);
      break;
      label195: i = 8;
    }
  }

  protected View onCreateView(ViewGroup paramViewGroup)
  {
    LayoutInflater localLayoutInflater = (LayoutInflater)this.mContext.getSystemService("layout_inflater");
    View localView = localLayoutInflater.inflate(this.gHe, paramViewGroup, false);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(16908312);
    if (localViewGroup != null)
    {
      if (this.gHf != 0)
        localLayoutInflater.inflate(this.gHf, localViewGroup);
    }
    else
      return localView;
    localViewGroup.setVisibility(8);
    return localView;
  }

  public final void setEnabled(boolean paramBoolean)
  {
    if (this.gGX != paramBoolean)
    {
      this.gGX = paramBoolean;
      notifyDependencyChange(shouldDisableDependents());
      notifyChanged();
    }
  }

  public final void setIcon(int paramInt)
  {
    this.ja = paramInt;
    Drawable localDrawable = this.mContext.getResources().getDrawable(paramInt);
    if (((localDrawable == null) && (this.hO != null)) || ((localDrawable != null) && (this.hO != localDrawable)))
    {
      this.hO = localDrawable;
      notifyChanged();
    }
  }

  public final void setKey(String paramString)
  {
    this.fiv = paramString;
    if (this.gGZ)
    {
      int i;
      if (!TextUtils.isEmpty(this.fiv))
        i = 1;
      while (i == 0)
        if (this.fiv == null)
        {
          throw new IllegalStateException("Preference does not have a key assigned.");
          i = 0;
        }
        else
        {
          this.gGZ = true;
        }
    }
  }

  public final void setLayoutResource(int paramInt)
  {
    if (paramInt != this.gHe)
      this.gHg = true;
    this.gHe = paramInt;
  }

  public void setSummary(int paramInt)
  {
    setSummary(this.mContext.getString(paramInt));
  }

  public void setSummary(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (this.gGV != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(this.gGV))))
    {
      this.gGV = paramCharSequence;
      notifyChanged();
    }
  }

  public void setTitle(int paramInt)
  {
    setTitle(this.mContext.getString(paramInt));
    this.gGU = paramInt;
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (this.iU != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(this.iU))))
    {
      this.gGU = 0;
      this.iU = paramCharSequence;
      notifyChanged();
    }
  }

  public final void setWidgetLayoutResource(int paramInt)
  {
    if (paramInt != this.gHf)
      this.gHg = true;
    this.gHf = paramInt;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharSequence localCharSequence1 = getTitle();
    if (!TextUtils.isEmpty(localCharSequence1))
      localStringBuilder.append(localCharSequence1).append(' ');
    CharSequence localCharSequence2 = getSummary();
    if (!TextUtils.isEmpty(localCharSequence2))
      localStringBuilder.append(localCharSequence2).append(' ');
    if (localStringBuilder.length() > 0)
      localStringBuilder.setLength(-1 + localStringBuilder.length());
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.Preference
 * JD-Core Version:    0.6.2
 */