package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

final class f
  implements d
{
  private IBinder Lx;

  f(IBinder paramIBinder)
  {
    this.Lx = paramIBinder;
  }

  public final an a(an paraman, int paramInt1, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
      if (paraman != null);
      for (IBinder localIBinder = paraman.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
        this.Lx.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        an localan = ap.d(localParcel2.readStrongBinder());
        return localan;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final IBinder asBinder()
  {
    return this.Lx;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.f
 * JD-Core Version:    0.6.2
 */