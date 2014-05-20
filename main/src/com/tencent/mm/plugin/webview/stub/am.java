package com.tencent.mm.plugin.webview.stub;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.List;

public abstract class am extends Binder
  implements al
{
  public am()
  {
    attachInterface(this, "com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
  }

  public static al q(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
    if ((localIInterface != null) && ((localIInterface instanceof al)))
      return (al)localIInterface;
    return new an(paramIBinder);
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
      paramParcel2.writeString("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool18 = qc(paramParcel1.readString());
      paramParcel2.writeNoException();
      if (bool18);
      for (int i16 = 1; ; i16 = 0)
      {
        paramParcel2.writeInt(i16);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str16 = cu(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str16);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool17 = cv(paramParcel1.readString());
      paramParcel2.writeNoException();
      int i15 = 0;
      if (bool17)
        i15 = 1;
      paramParcel2.writeInt(i15);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool16 = db(paramParcel1.readString());
      paramParcel2.writeNoException();
      int i14 = 0;
      if (bool16)
        i14 = 1;
      paramParcel2.writeInt(i14);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool15 = cw(paramParcel1.readString());
      paramParcel2.writeNoException();
      int i13 = 0;
      if (bool15)
        i13 = 1;
      paramParcel2.writeInt(i13);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str15 = pW(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str15);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool14 = qd();
      paramParcel2.writeNoException();
      int i12 = 0;
      if (bool14)
        i12 = 1;
      paramParcel2.writeInt(i12);
      return true;
    case 8:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool13 = isSDCardAvailable();
      paramParcel2.writeNoException();
      int i11 = 0;
      if (bool13)
        i11 = 1;
      paramParcel2.writeInt(i11);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool12 = HB();
      paramParcel2.writeNoException();
      int i10 = 0;
      if (bool12)
        i10 = 1;
      paramParcel2.writeInt(i10);
      return true;
    case 10:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool11 = tK();
      paramParcel2.writeNoException();
      int i9 = 0;
      if (bool11)
        i9 = 1;
      paramParcel2.writeInt(i9);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      int i8 = aJ(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i8);
      return true;
    case 12:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      aK(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 13:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str14 = q(paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str14);
      return true;
    case 14:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      int i7 = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle9 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle9 = null)
      {
        b(i7, localBundle9);
        paramParcel2.writeNoException();
        return true;
      }
    case 15:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle8 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle8 = null)
      {
        a locala = o(localBundle8);
        paramParcel2.writeNoException();
        IBinder localIBinder = null;
        if (locala != null)
          localIBinder = locala.asBinder();
        paramParcel2.writeStrongBinder(localIBinder);
        return true;
      }
    case 16:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle7 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle7 = null)
      {
        boolean bool10 = q(localBundle7);
        paramParcel2.writeNoException();
        int i6 = 0;
        if (bool10)
          i6 = 1;
        paramParcel2.writeInt(i6);
        return true;
      }
    case 17:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      int i4 = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle6 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle6 = null)
      {
        boolean bool9 = c(i4, localBundle6);
        paramParcel2.writeNoException();
        int i5 = 0;
        if (bool9)
          i5 = 1;
        paramParcel2.writeInt(i5);
        return true;
      }
    case 18:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool8 = xU();
      paramParcel2.writeNoException();
      int i3 = 0;
      if (bool8)
        i3 = 1;
      paramParcel2.writeInt(i3);
      return true;
    case 19:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      List localList = xT();
      paramParcel2.writeNoException();
      paramParcel2.writeStringList(localList);
      return true;
    case 20:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str13 = Dj();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str13);
      return true;
    case 21:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      c(paramParcel1.readInt(), paramParcel1.createStringArrayList());
      paramParcel2.writeNoException();
      return true;
    case 22:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      aoY();
      paramParcel2.writeNoException();
      return true;
    case 23:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str12 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (boolean bool6 = true; ; bool6 = false)
      {
        boolean bool7 = C(str12, bool6);
        paramParcel2.writeNoException();
        int i2 = 0;
        if (bool7)
          i2 = 1;
        paramParcel2.writeInt(i2);
        return true;
      }
    case 24:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str11 = pX(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str11);
      return true;
    case 25:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      pY(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 26:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str10 = paramParcel1.readString();
      int i1 = paramParcel1.readInt();
      boolean bool5 = false;
      if (i1 != 0)
        bool5 = true;
      D(str10, bool5);
      paramParcel2.writeNoException();
      return true;
    case 27:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool4 = aH(paramParcel1.readString());
      paramParcel2.writeNoException();
      int n = 0;
      if (bool4)
        n = 1;
      paramParcel2.writeInt(n);
      return true;
    case 28:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      pZ(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 29:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      Bundle localBundle5 = aoZ();
      paramParcel2.writeNoException();
      if (localBundle5 != null)
      {
        paramParcel2.writeInt(1);
        localBundle5.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 30:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool3 = isBusy();
      paramParcel2.writeNoException();
      int m = 0;
      if (bool3)
        m = 1;
      paramParcel2.writeInt(m);
      return true;
    case 31:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str7 = paramParcel1.readString();
      String str8 = paramParcel1.readString();
      String str9 = paramParcel1.readString();
      Bundle localBundle2;
      if (paramParcel1.readInt() != 0)
      {
        localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label1660;
      }
      for (Bundle localBundle3 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle3 = null)
      {
        int j = paramParcel1.readInt();
        Bundle localBundle4 = null;
        if (j != 0)
          localBundle4 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        boolean bool2 = a(str7, str8, str9, localBundle2, localBundle3, localBundle4);
        paramParcel2.writeNoException();
        int k = 0;
        if (bool2)
          k = 1;
        paramParcel2.writeInt(k);
        return true;
        localBundle2 = null;
        break;
      }
    case 32:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      apa();
      paramParcel2.writeNoException();
      return true;
    case 33:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      aF(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 34:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str6 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle1 = null)
      {
        a(str6, localBundle1);
        paramParcel2.writeNoException();
        return true;
      }
    case 35:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      qa(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 36:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str5 = qb(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str5);
      return true;
    case 37:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str4 = jR(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str4);
      return true;
    case 38:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      boolean bool1 = jS(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int i = 0;
      if (bool1)
        i = 1;
      paramParcel2.writeInt(i);
      return true;
    case 39:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      r(paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 40:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      aL(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 41:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      a(ap.r(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 42:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      jT(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 43:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String[] arrayOfString = qu();
      paramParcel2.writeNoException();
      paramParcel2.writeStringArray(arrayOfString);
      return true;
    case 44:
      paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str3 = apb();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      return true;
    case 45:
      label1660: paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
      String str2 = pT(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 46:
    }
    paramParcel1.enforceInterface("com.tencent.mm.plugin.webview.stub.WebViewStub_AIDL");
    String str1 = apc();
    paramParcel2.writeNoException();
    paramParcel2.writeString(str1);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.am
 * JD-Core Version:    0.6.2
 */