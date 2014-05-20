package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.tencent.mm.k;
import com.tencent.mm.pluginsdk.ui.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import java.util.ArrayList;
import java.util.List;

public class ContactListExpandPreference extends Preference
{
  private int foA = -1;
  public s foB;
  public ae foC;

  public ContactListExpandPreference(Context paramContext)
  {
    super(paramContext);
    asd();
    setLayoutResource(k.aWI);
  }

  public ContactListExpandPreference(Context paramContext, int paramInt)
  {
    super(paramContext);
    if (paramInt == 0)
      asd();
    while (true)
    {
      setLayoutResource(k.aWI);
      return;
      if (paramInt == 1)
      {
        this.foA = 1;
        this.foC = new ae();
      }
    }
  }

  public ContactListExpandPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    asd();
    setLayoutResource(k.aWI);
  }

  public ContactListExpandPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    asd();
    setLayoutResource(k.aWI);
  }

  private void asd()
  {
    this.foA = 0;
    this.foB = new s(getContext());
  }

  public static void onDetach()
  {
  }

  public final void B(ArrayList paramArrayList)
  {
    if (this.foB != null)
      this.foB.fnN.B(paramArrayList);
  }

  public final void G(List paramList)
  {
    if (this.foB != null)
      this.foB.fnN.G(paramList);
  }

  public final void a(aa paramaa)
  {
    if (this.foB != null)
      this.foB.a(paramaa);
  }

  public final void a(aj paramaj)
  {
    if (this.foB != null)
      this.foB.a(paramaj);
  }

  public final void a(e parame)
  {
    if (this.foB != null)
      this.foB.fnN.a(parame);
  }

  public final void a(n paramn, String paramString)
  {
    if (this.foB != null)
      this.foB.a(paramn, paramString);
  }

  public final void al(List paramList)
  {
    d(null, paramList);
  }

  public final void arV()
  {
    if (this.foB != null)
      this.foB.arV();
  }

  public final void arX()
  {
    if (this.foB != null)
      this.foB.fnN.arX();
  }

  public final void arY()
  {
    if (this.foB != null)
      this.foB.fnN.arY();
  }

  public final void asb()
  {
    if (this.foB != null)
      this.foB.fnN.asb();
  }

  public final ContactListExpandPreference ct(boolean paramBoolean)
  {
    if (this.foB != null)
      this.foB.fnN.cs(paramBoolean);
    return this;
  }

  public final ContactListExpandPreference cu(boolean paramBoolean)
  {
    if (this.foB != null)
      this.foB.fnN.cr(paramBoolean);
    return this;
  }

  public final void d(String paramString, List paramList)
  {
    if (this.foB != null)
      this.foB.d(paramString, paramList);
  }

  public final boolean km(int paramInt)
  {
    if (this.foB != null)
      return this.foB.fnN.km(paramInt);
    return true;
  }

  public final boolean kp(int paramInt)
  {
    if (this.foB != null)
      return this.foB.fnN.kp(paramInt);
    return false;
  }

  public final String kr(int paramInt)
  {
    if ((this.foB != null) && (this.foB.fnN.kp(paramInt)))
      return ((i)this.foB.fnN.getItem(paramInt)).getUsername();
    return "";
  }

  public final String ks(int paramInt)
  {
    if ((this.foB != null) && (this.foB.fnN.kp(paramInt)))
      return ((i)this.foB.fnN.getItem(paramInt)).kn();
    return "";
  }

  public final String kt(int paramInt)
  {
    if ((this.foB != null) && (this.foB.fnN.kp(paramInt)))
      return ((i)this.foB.fnN.getItem(paramInt)).ru();
    return "";
  }

  public final void notifyChanged()
  {
    if (this.foB != null)
      this.foB.Yy();
  }

  public final void onBindView(View paramView)
  {
    if (this.foA == 1)
      this.foC.onBindView(paramView);
    super.onBindView(paramView);
  }

  public final void qH(String paramString)
  {
    if (this.foB != null)
      this.foB.fnN.qH(paramString);
  }

  public final void z(ArrayList paramArrayList)
  {
    if (this.foB != null)
      this.foB.z(paramArrayList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ContactListExpandPreference
 * JD-Core Version:    0.6.2
 */