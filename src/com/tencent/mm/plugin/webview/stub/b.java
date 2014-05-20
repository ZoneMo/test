package com.tencent.mm.plugin.webview.stub;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class b extends Binder
  implements a
{
  public b()
  {
    attachInterface(this, "com.tencent.mm.plugin.webview.stub.FavUrl_Result_AIDL");
  }

  public static a p(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.tencent.mm.plugin.webview.stub.FavUrl_Result_AIDL");
    if ((localIInterface != null) && ((localIInterface instanceof a)))
      return (a)localIInterface;
    return new c(paramIBinder);
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.tencent.mm.plugin.webview.stub.FavUrl_Result_AIDL");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.FavUrl_Result_AIDL");
      boolean bool2 = aoS();
      paramParcel2.writeNoException();
      int m = 0;
      if (bool2)
        m = 1;
      paramParcel2.writeInt(m);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.FavUrl_Result_AIDL");
      boolean bool1 = getResult();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool1)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.FavUrl_Result_AIDL");
      int j = getRet();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(j);
      return true;
    case 4:
    }
    paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.FavUrl_Result_AIDL");
    int i = getType();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.b
 * JD-Core Version:    0.6.2
 */