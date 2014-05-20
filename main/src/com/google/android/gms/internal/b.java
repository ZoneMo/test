package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class b extends Binder
  implements a
{
  public static a b(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
    if ((localIInterface != null) && ((localIInterface instanceof a)))
      return (a)localIInterface;
    return new c(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.auth.IAuthManagerService");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.auth.IAuthManagerService");
    String str1 = paramParcel1.readString();
    String str2 = paramParcel1.readString();
    Bundle localBundle1;
    if (paramParcel1.readInt() != 0)
    {
      localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      Bundle localBundle2 = a(str1, str2, localBundle1);
      paramParcel2.writeNoException();
      if (localBundle2 == null)
        break label126;
      paramParcel2.writeInt(1);
      localBundle2.writeToParcel(paramParcel2, 1);
    }
    while (true)
    {
      return true;
      localBundle1 = null;
      break;
      label126: paramParcel2.writeInt(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.b
 * JD-Core Version:    0.6.2
 */