package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new r();
  final int K;
  final boolean aA;
  Bundle ad;
  final Bundle ag;
  final boolean an;
  final int av;
  final int aw;
  final String ax;
  final boolean az;
  final String bK;
  Fragment bL;

  public FragmentState(Parcel paramParcel)
  {
    this.bK = paramParcel.readString();
    this.K = paramParcel.readInt();
    boolean bool2;
    boolean bool3;
    if (paramParcel.readInt() != 0)
    {
      bool2 = bool1;
      this.an = bool2;
      this.av = paramParcel.readInt();
      this.aw = paramParcel.readInt();
      this.ax = paramParcel.readString();
      if (paramParcel.readInt() == 0)
        break label110;
      bool3 = bool1;
      label70: this.aA = bool3;
      if (paramParcel.readInt() == 0)
        break label116;
    }
    while (true)
    {
      this.az = bool1;
      this.ag = paramParcel.readBundle();
      this.ad = paramParcel.readBundle();
      return;
      bool2 = false;
      break;
      label110: bool3 = false;
      break label70;
      label116: bool1 = false;
    }
  }

  public FragmentState(Fragment paramFragment)
  {
    this.bK = paramFragment.getClass().getName();
    this.K = paramFragment.K;
    this.an = paramFragment.an;
    this.av = paramFragment.av;
    this.aw = paramFragment.aw;
    this.ax = paramFragment.ax;
    this.aA = paramFragment.aA;
    this.az = paramFragment.az;
    this.ag = paramFragment.ag;
  }

  public final Fragment a(FragmentActivity paramFragmentActivity, Fragment paramFragment)
  {
    if (this.bL != null)
      return this.bL;
    if (this.ag != null)
      this.ag.setClassLoader(paramFragmentActivity.getClassLoader());
    this.bL = Fragment.a(paramFragmentActivity, this.bK, this.ag);
    if (this.ad != null)
    {
      this.ad.setClassLoader(paramFragmentActivity.getClassLoader());
      this.bL.ad = this.ad;
    }
    this.bL.b(this.K, paramFragment);
    this.bL.an = this.an;
    this.bL.ap = true;
    this.bL.av = this.av;
    this.bL.aw = this.aw;
    this.bL.ax = this.ax;
    this.bL.aA = this.aA;
    this.bL.az = this.az;
    this.bL.ar = paramFragmentActivity.aQ;
    if (m.DEBUG)
      new StringBuilder("Instantiated fragment ").append(this.bL).toString();
    return this.bL;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(this.bK);
    paramParcel.writeInt(this.K);
    int j;
    int k;
    if (this.an)
    {
      j = i;
      paramParcel.writeInt(j);
      paramParcel.writeInt(this.av);
      paramParcel.writeInt(this.aw);
      paramParcel.writeString(this.ax);
      if (!this.aA)
        break label109;
      k = i;
      label68: paramParcel.writeInt(k);
      if (!this.az)
        break label115;
    }
    while (true)
    {
      paramParcel.writeInt(i);
      paramParcel.writeBundle(this.ag);
      paramParcel.writeBundle(this.ad);
      return;
      j = 0;
      break;
      label109: k = 0;
      break label68;
      label115: i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentState
 * JD-Core Version:    0.6.2
 */