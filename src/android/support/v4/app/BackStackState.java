package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new c();
  final int F;
  final int G;
  final int K;
  final int L;
  final CharSequence M;
  final int N;
  final CharSequence O;
  final int[] Z;
  final String mName;

  public BackStackState(Parcel paramParcel)
  {
    this.Z = paramParcel.createIntArray();
    this.F = paramParcel.readInt();
    this.G = paramParcel.readInt();
    this.mName = paramParcel.readString();
    this.K = paramParcel.readInt();
    this.L = paramParcel.readInt();
    this.M = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.N = paramParcel.readInt();
    this.O = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }

  public BackStackState(a parama)
  {
    b localb1 = parama.u;
    int i = 0;
    while (localb1 != null)
    {
      if (localb1.Y != null)
        i += localb1.Y.size();
      localb1 = localb1.P;
    }
    this.Z = new int[i + 7 * parama.A];
    if (!parama.H)
      throw new IllegalStateException("Not on back stack");
    b localb2 = parama.u;
    int j = 0;
    if (localb2 != null)
    {
      int[] arrayOfInt1 = this.Z;
      int k = j + 1;
      arrayOfInt1[j] = localb2.S;
      int[] arrayOfInt2 = this.Z;
      int m = k + 1;
      if (localb2.T != null);
      int i4;
      int i6;
      for (int n = localb2.T.K; ; n = -1)
      {
        arrayOfInt2[k] = n;
        int[] arrayOfInt3 = this.Z;
        int i1 = m + 1;
        arrayOfInt3[m] = localb2.U;
        int[] arrayOfInt4 = this.Z;
        int i2 = i1 + 1;
        arrayOfInt4[i1] = localb2.V;
        int[] arrayOfInt5 = this.Z;
        int i3 = i2 + 1;
        arrayOfInt5[i2] = localb2.W;
        int[] arrayOfInt6 = this.Z;
        i4 = i3 + 1;
        arrayOfInt6[i3] = localb2.X;
        if (localb2.Y == null)
          break label343;
        int i5 = localb2.Y.size();
        int[] arrayOfInt8 = this.Z;
        i6 = i4 + 1;
        arrayOfInt8[i4] = i5;
        int i7 = 0;
        while (i7 < i5)
        {
          int[] arrayOfInt9 = this.Z;
          int i8 = i6 + 1;
          arrayOfInt9[i6] = ((Fragment)localb2.Y.get(i7)).K;
          i7++;
          i6 = i8;
        }
      }
      j = i6;
      while (true)
      {
        localb2 = localb2.P;
        break;
        label343: int[] arrayOfInt7 = this.Z;
        j = i4 + 1;
        arrayOfInt7[i4] = 0;
      }
    }
    this.F = parama.F;
    this.G = parama.G;
    this.mName = parama.mName;
    this.K = parama.K;
    this.L = parama.L;
    this.M = parama.M;
    this.N = parama.N;
    this.O = parama.O;
  }

  public final a a(m paramm)
  {
    a locala = new a(paramm);
    int i = 0;
    int i5;
    for (int j = 0; j < this.Z.length; j = i5)
    {
      b localb = new b();
      int[] arrayOfInt1 = this.Z;
      int k = j + 1;
      localb.S = arrayOfInt1[j];
      if (m.DEBUG)
        new StringBuilder("Instantiate ").append(locala).append(" op #").append(i).append(" base fragment #").append(this.Z[k]).toString();
      int[] arrayOfInt2 = this.Z;
      int m = k + 1;
      int n = arrayOfInt2[k];
      if (n >= 0);
      for (localb.T = ((Fragment)paramm.bi.get(n)); ; localb.T = null)
      {
        int[] arrayOfInt3 = this.Z;
        int i1 = m + 1;
        localb.U = arrayOfInt3[m];
        int[] arrayOfInt4 = this.Z;
        int i2 = i1 + 1;
        localb.V = arrayOfInt4[i1];
        int[] arrayOfInt5 = this.Z;
        int i3 = i2 + 1;
        localb.W = arrayOfInt5[i2];
        int[] arrayOfInt6 = this.Z;
        int i4 = i3 + 1;
        localb.X = arrayOfInt6[i3];
        int[] arrayOfInt7 = this.Z;
        i5 = i4 + 1;
        int i6 = arrayOfInt7[i4];
        if (i6 <= 0)
          break;
        localb.Y = new ArrayList(i6);
        int i7 = 0;
        while (i7 < i6)
        {
          if (m.DEBUG)
            new StringBuilder("Instantiate ").append(locala).append(" set remove fragment #").append(this.Z[i5]).toString();
          ArrayList localArrayList = paramm.bi;
          int[] arrayOfInt8 = this.Z;
          int i8 = i5 + 1;
          Fragment localFragment = (Fragment)localArrayList.get(arrayOfInt8[i5]);
          localb.Y.add(localFragment);
          i7++;
          i5 = i8;
        }
      }
      locala.a(localb);
      i++;
    }
    locala.F = this.F;
    locala.G = this.G;
    locala.mName = this.mName;
    locala.K = this.K;
    locala.H = true;
    locala.L = this.L;
    locala.M = this.M;
    locala.N = this.N;
    locala.O = this.O;
    locala.a(1);
    return locala;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.Z);
    paramParcel.writeInt(this.F);
    paramParcel.writeInt(this.G);
    paramParcel.writeString(this.mName);
    paramParcel.writeInt(this.K);
    paramParcel.writeInt(this.L);
    TextUtils.writeToParcel(this.M, paramParcel, 0);
    paramParcel.writeInt(this.N);
    TextUtils.writeToParcel(this.O, paramParcel, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.6.2
 */