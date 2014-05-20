package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class bw
  implements Parcelable.Creator
{
  static void a(eu parameu, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    Set localSet = parameu.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, parameu.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, parameu.kb(), true);
    if (localSet.contains(Integer.valueOf(3)))
      q.a(paramParcel, 3, parameu.kc(), paramInt, true);
    if (localSet.contains(Integer.valueOf(4)))
      q.a(paramParcel, 4, parameu.kd(), true);
    if (localSet.contains(Integer.valueOf(5)))
      q.a(paramParcel, 5, parameu.ke(), true);
    if (localSet.contains(Integer.valueOf(6)))
      q.c(paramParcel, 6, parameu.kf());
    if (localSet.contains(Integer.valueOf(7)))
      q.a(paramParcel, 7, parameu.kg(), paramInt, true);
    if (localSet.contains(Integer.valueOf(8)))
      q.a(paramParcel, 8, parameu.kh(), true);
    if (localSet.contains(Integer.valueOf(9)))
      q.a(paramParcel, 9, parameu.getDisplayName(), true);
    if (localSet.contains(Integer.valueOf(10)))
      q.a(paramParcel, 10, parameu.ki(), true);
    if (localSet.contains(Integer.valueOf(12)))
      q.c(paramParcel, 12, parameu.kj());
    if (localSet.contains(Integer.valueOf(14)))
      q.a(paramParcel, 14, parameu.getId(), true);
    if (localSet.contains(Integer.valueOf(15)))
      q.a(paramParcel, 15, parameu.kk(), paramInt, true);
    if (localSet.contains(Integer.valueOf(16)))
      q.a(paramParcel, 16, parameu.kl());
    if (localSet.contains(Integer.valueOf(19)))
      q.a(paramParcel, 19, parameu.km(), paramInt, true);
    if (localSet.contains(Integer.valueOf(18)))
      q.a(paramParcel, 18, parameu.getLanguage(), true);
    if (localSet.contains(Integer.valueOf(21)))
      q.c(paramParcel, 21, parameu.ko());
    if (localSet.contains(Integer.valueOf(20)))
      q.a(paramParcel, 20, parameu.kn(), true);
    if (localSet.contains(Integer.valueOf(23)))
      q.a(paramParcel, 23, parameu.kq(), true);
    if (localSet.contains(Integer.valueOf(22)))
      q.a(paramParcel, 22, parameu.kp(), true);
    if (localSet.contains(Integer.valueOf(25)))
      q.c(paramParcel, 25, parameu.ks());
    if (localSet.contains(Integer.valueOf(24)))
      q.c(paramParcel, 24, parameu.kr());
    if (localSet.contains(Integer.valueOf(27)))
      q.a(paramParcel, 27, parameu.getUrl(), true);
    if (localSet.contains(Integer.valueOf(26)))
      q.a(paramParcel, 26, parameu.kt(), true);
    if (localSet.contains(Integer.valueOf(29)))
      q.a(paramParcel, 29, parameu.kv());
    if (localSet.contains(Integer.valueOf(28)))
      q.a(paramParcel, 28, parameu.ku(), true);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bw
 * JD-Core Version:    0.6.2
 */