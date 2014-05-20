package com.tencent.mm.plugin.webview.stub;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ap extends Binder
  implements ao
{
  public ap()
  {
    attachInterface(this, "com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
  }

  public static ao r(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
    if ((localIInterface != null) && ((localIInterface instanceof ao)))
      return (ao)localIInterface;
    return new aq(paramIBinder);
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
      paramParcel2.writeString("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      boolean bool6 = jQ(paramParcel1.readInt());
      paramParcel2.writeNoException();
      if (bool6);
      for (int i5 = 1; ; i5 = 0)
      {
        paramParcel2.writeInt(i5);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      int i2 = paramParcel1.readInt();
      int i3 = paramParcel1.readInt();
      Bundle localBundle3 = null;
      if (i3 != 0)
        localBundle3 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      boolean bool5 = a(i2, localBundle3);
      paramParcel2.writeNoException();
      int i4 = 0;
      if (bool5)
        i4 = 1;
      paramParcel2.writeInt(i4);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      IBinder localIBinder = paramParcel1.readStrongBinder();
      Object localObject = null;
      if (localIBinder == null);
      while (true)
      {
        boolean bool4 = b((d)localObject);
        paramParcel2.writeNoException();
        int i1 = 0;
        if (bool4)
          i1 = 1;
        paramParcel2.writeInt(i1);
        return true;
        IInterface localIInterface = localIBinder.queryLocalInterface("com.tencent.mm.plugin.webview.stub.OnSceneEnd_AIDL");
        if ((localIInterface != null) && ((localIInterface instanceof d)))
          localObject = (d)localIInterface;
        else
          localObject = new f(localIBinder);
      }
    case 4:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      String str4 = paramParcel1.readString();
      String str5 = paramParcel1.readString();
      int m = paramParcel1.readInt();
      Bundle localBundle2 = null;
      if (m != 0)
        localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      boolean bool3 = b(str4, str5, localBundle2);
      paramParcel2.writeNoException();
      int n = 0;
      if (bool3)
        n = 1;
      paramParcel2.writeInt(n);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      String str3 = aoV();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      String str2 = aoR();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      String str1 = aoW();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      return true;
    case 8:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      int k = paramParcel1.readInt();
      boolean bool2 = false;
      if (k != 0)
        bool2 = true;
      cb(bool2);
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      int j = paramParcel1.readInt();
      boolean bool1 = false;
      if (j != 0)
        bool1 = true;
      cc(bool1);
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      aoX();
      paramParcel2.writeNoException();
      return true;
    case 11:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
      int i = paramParcel1.readInt();
      Bundle localBundle1 = null;
      if (i != 0)
        localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      n(localBundle1);
      paramParcel2.writeNoException();
      return true;
    case 12:
    }
    paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_Callback_AIDL");
    pU(paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.ap
 * JD-Core Version:    0.6.2
 */