.class public Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private hmP:Lcom/tencent/mm/plugin/webview/stub/ao;

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/tencent/mm/ui/tools/gd;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/gd;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/tencent/mm/plugin/webview/stub/ap;->r(Landroid/os/IBinder;)Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->hmP:Lcom/tencent/mm/plugin/webview/stub/ao;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/plugin/webview/stub/ao;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->hmP:Lcom/tencent/mm/plugin/webview/stub/ao;

    .line 21
    iput p2, p0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->id:I

    .line 22
    return-void
.end method


# virtual methods
.method public final aNT()Lcom/tencent/mm/plugin/webview/stub/ao;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->hmP:Lcom/tencent/mm/plugin/webview/stub/ao;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    instance-of v1, p1, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    check-cast p1, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    .line 71
    iget v1, p1, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->id:I

    iget v2, p0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->id:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->hmP:Lcom/tencent/mm/plugin/webview/stub/ao;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/ao;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 32
    return-void
.end method
