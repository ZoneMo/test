package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class bu
  implements Parcelable.Creator
{
  static void a(ep paramep, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    Set localSet = paramep.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, paramep.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, paramep.jg(), paramInt, true);
    if (localSet.contains(Integer.valueOf(3)))
      q.a(paramParcel, paramep.jh());
    if (localSet.contains(Integer.valueOf(4)))
      q.a(paramParcel, 4, paramep.ji(), paramInt, true);
    if (localSet.contains(Integer.valueOf(5)))
      q.a(paramParcel, 5, paramep.jj(), true);
    if (localSet.contains(Integer.valueOf(6)))
      q.a(paramParcel, 6, paramep.jk(), true);
    if (localSet.contains(Integer.valueOf(7)))
      q.a(paramParcel, 7, paramep.jl(), true);
    if (localSet.contains(Integer.valueOf(8)))
      q.a(paramParcel, 8, paramep.jm(), true);
    if (localSet.contains(Integer.valueOf(9)))
      q.c(paramParcel, 9, paramep.jn());
    if (localSet.contains(Integer.valueOf(10)))
      q.a(paramParcel, 10, paramep.jo(), true);
    if (localSet.contains(Integer.valueOf(11)))
      q.a(paramParcel, 11, paramep.jp(), paramInt, true);
    if (localSet.contains(Integer.valueOf(12)))
      q.a(paramParcel, 12, paramep.jq(), true);
    if (localSet.contains(Integer.valueOf(13)))
      q.a(paramParcel, 13, paramep.jr(), true);
    if (localSet.contains(Integer.valueOf(14)))
      q.a(paramParcel, 14, paramep.js(), true);
    if (localSet.contains(Integer.valueOf(15)))
      q.a(paramParcel, 15, paramep.jt(), paramInt, true);
    if (localSet.contains(Integer.valueOf(17)))
      q.a(paramParcel, 17, paramep.jv(), true);
    if (localSet.contains(Integer.valueOf(16)))
      q.a(paramParcel, 16, paramep.ju(), true);
    if (localSet.contains(Integer.valueOf(19)))
      q.a(paramParcel, 19, paramep.jx(), true);
    if (localSet.contains(Integer.valueOf(18)))
      q.a(paramParcel, 18, paramep.jw(), true);
    if (localSet.contains(Integer.valueOf(21)))
      q.a(paramParcel, 21, paramep.jz(), true);
    if (localSet.contains(Integer.valueOf(20)))
      q.a(paramParcel, 20, paramep.jy(), true);
    if (localSet.contains(Integer.valueOf(23)))
      q.a(paramParcel, 23, paramep.getDescription(), true);
    if (localSet.contains(Integer.valueOf(22)))
      q.a(paramParcel, 22, paramep.jA(), true);
    if (localSet.contains(Integer.valueOf(25)))
      q.a(paramParcel, 25, paramep.jC(), true);
    if (localSet.contains(Integer.valueOf(24)))
      q.a(paramParcel, 24, paramep.jB(), true);
    if (localSet.contains(Integer.valueOf(27)))
      q.a(paramParcel, 27, paramep.jE(), true);
    if (localSet.contains(Integer.valueOf(26)))
      q.a(paramParcel, 26, paramep.jD(), true);
    if (localSet.contains(Integer.valueOf(29)))
      q.a(paramParcel, 29, paramep.jG(), paramInt, true);
    if (localSet.contains(Integer.valueOf(28)))
      q.a(paramParcel, 28, paramep.jF(), true);
    if (localSet.contains(Integer.valueOf(31)))
      q.a(paramParcel, 31, paramep.jI(), true);
    if (localSet.contains(Integer.valueOf(30)))
      q.a(paramParcel, 30, paramep.jH(), true);
    if (localSet.contains(Integer.valueOf(34)))
      q.a(paramParcel, 34, paramep.jK(), paramInt, true);
    if (localSet.contains(Integer.valueOf(32)))
      q.a(paramParcel, 32, paramep.getId(), true);
    if (localSet.contains(Integer.valueOf(33)))
      q.a(paramParcel, 33, paramep.jJ(), true);
    if (localSet.contains(Integer.valueOf(38)))
      q.a(paramParcel, 38, paramep.getLongitude());
    if (localSet.contains(Integer.valueOf(39)))
      q.a(paramParcel, 39, paramep.getName(), true);
    if (localSet.contains(Integer.valueOf(36)))
      q.a(paramParcel, 36, paramep.getLatitude());
    if (localSet.contains(Integer.valueOf(37)))
      q.a(paramParcel, 37, paramep.jL(), paramInt, true);
    if (localSet.contains(Integer.valueOf(42)))
      q.a(paramParcel, 42, paramep.jO(), true);
    if (localSet.contains(Integer.valueOf(43)))
      q.a(paramParcel, 43, paramep.jP(), true);
    if (localSet.contains(Integer.valueOf(40)))
      q.a(paramParcel, 40, paramep.jM(), paramInt, true);
    if (localSet.contains(Integer.valueOf(41)))
      q.a(paramParcel, 41, paramep.jN(), true);
    if (localSet.contains(Integer.valueOf(46)))
      q.a(paramParcel, 46, paramep.jR(), paramInt, true);
    if (localSet.contains(Integer.valueOf(47)))
      q.a(paramParcel, 47, paramep.jS(), true);
    if (localSet.contains(Integer.valueOf(44)))
      q.a(paramParcel, 44, paramep.getPostalCode(), true);
    if (localSet.contains(Integer.valueOf(45)))
      q.a(paramParcel, 45, paramep.jQ(), true);
    if (localSet.contains(Integer.valueOf(51)))
      q.a(paramParcel, 51, paramep.jV(), true);
    if (localSet.contains(Integer.valueOf(50)))
      q.a(paramParcel, 50, paramep.jU(), paramInt, true);
    if (localSet.contains(Integer.valueOf(49)))
      q.a(paramParcel, 49, paramep.getText(), true);
    if (localSet.contains(Integer.valueOf(48)))
      q.a(paramParcel, 48, paramep.jT(), true);
    if (localSet.contains(Integer.valueOf(55)))
      q.a(paramParcel, 55, paramep.jX(), true);
    if (localSet.contains(Integer.valueOf(54)))
      q.a(paramParcel, 54, paramep.getUrl(), true);
    if (localSet.contains(Integer.valueOf(53)))
      q.a(paramParcel, 53, paramep.getType(), true);
    if (localSet.contains(Integer.valueOf(52)))
      q.a(paramParcel, 52, paramep.jW(), true);
    if (localSet.contains(Integer.valueOf(56)))
      q.a(paramParcel, 56, paramep.jY(), true);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bu
 * JD-Core Version:    0.6.2
 */