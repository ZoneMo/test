package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.HashMap;

public class ar$a
  implements SafeParcelable
{
  public static final y Mj = new y();
  private final int KH;
  protected final int LZ;
  protected final boolean Ma;
  protected final int Mb;
  protected final boolean Mc;
  protected final String Md;
  protected final int Me;
  protected final Class Mf;
  protected final String Mg;
  private au Mh;
  private x Mi;

  ar$a(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, am paramam)
  {
    this.KH = paramInt1;
    this.LZ = paramInt2;
    this.Ma = paramBoolean1;
    this.Mb = paramInt3;
    this.Mc = paramBoolean2;
    this.Md = paramString1;
    this.Me = paramInt4;
    if (paramString2 == null)
      this.Mf = null;
    for (this.Mg = null; paramam == null; this.Mg = paramString2)
    {
      this.Mi = null;
      return;
      this.Mf = ax.class;
    }
    this.Mi = paramam.jdMethod_if();
  }

  private ar$a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class paramClass, x paramx)
  {
    this.KH = 1;
    this.LZ = paramInt1;
    this.Ma = paramBoolean1;
    this.Mb = paramInt2;
    this.Mc = paramBoolean2;
    this.Md = paramString;
    this.Me = paramInt3;
    this.Mf = paramClass;
    if (paramClass == null);
    for (this.Mg = null; ; this.Mg = paramClass.getCanonicalName())
    {
      this.Mi = paramx;
      return;
    }
  }

  public static a U(String paramString)
  {
    return new a(7, true, 7, true, paramString, 3, null, null);
  }

  public static a a(String paramString, int paramInt, x paramx)
  {
    return new a(7, false, 0, false, paramString, paramInt, null, paramx);
  }

  public static a a(String paramString, int paramInt, Class paramClass)
  {
    return new a(11, false, 11, false, paramString, paramInt, paramClass, null);
  }

  public static a b(String paramString, int paramInt, Class paramClass)
  {
    return new a(11, true, 11, true, paramString, paramInt, paramClass, null);
  }

  public static a d(String paramString, int paramInt)
  {
    return new a(0, false, 0, false, paramString, paramInt, null, null);
  }

  public static a e(String paramString, int paramInt)
  {
    return new a(4, false, 4, false, paramString, paramInt, null, null);
  }

  public static a f(String paramString, int paramInt)
  {
    return new a(6, false, 6, false, paramString, paramInt, null, null);
  }

  public static a g(String paramString, int paramInt)
  {
    return new a(7, false, 7, false, paramString, paramInt, null, null);
  }

  public final Object N(Object paramObject)
  {
    return this.Mi.N(paramObject);
  }

  public final void a(au paramau)
  {
    this.Mh = paramau;
  }

  public int describeContents()
  {
    return 0;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final int ik()
  {
    return this.LZ;
  }

  public final boolean il()
  {
    return this.Ma;
  }

  public final int im()
  {
    return this.Mb;
  }

  public final boolean in()
  {
    return this.Mc;
  }

  public final String io()
  {
    return this.Md;
  }

  public final int ip()
  {
    return this.Me;
  }

  public final Class iq()
  {
    return this.Mf;
  }

  final String ir()
  {
    if (this.Mg == null)
      return null;
    return this.Mg;
  }

  public final boolean is()
  {
    return this.Mi != null;
  }

  final am it()
  {
    if (this.Mi == null)
      return null;
    return am.a(this.Mi);
  }

  public final HashMap iu()
  {
    i.M(this.Mg);
    i.M(this.Mh);
    return this.Mh.V(this.Mg);
  }

  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("Field\n");
    localStringBuilder1.append("            versionCode=").append(this.KH).append('\n');
    localStringBuilder1.append("                 typeIn=").append(this.LZ).append('\n');
    localStringBuilder1.append("            typeInArray=").append(this.Ma).append('\n');
    localStringBuilder1.append("                typeOut=").append(this.Mb).append('\n');
    localStringBuilder1.append("           typeOutArray=").append(this.Mc).append('\n');
    localStringBuilder1.append("        outputFieldName=").append(this.Md).append('\n');
    localStringBuilder1.append("      safeParcelFieldId=").append(this.Me).append('\n');
    localStringBuilder1.append("       concreteTypeName=").append(ir()).append('\n');
    if (this.Mf != null)
      localStringBuilder1.append("     concreteType.class=").append(this.Mf.getCanonicalName()).append('\n');
    StringBuilder localStringBuilder2 = localStringBuilder1.append("          converterName=");
    if (this.Mi == null);
    for (String str = "null"; ; str = this.Mi.getClass().getCanonicalName())
    {
      localStringBuilder2.append(str).append('\n');
      return localStringBuilder1.toString();
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    y.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ar.a
 * JD-Core Version:    0.6.2
 */