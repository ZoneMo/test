.class final Lcom/tencent/mm/ui/qrcode/k;
.super Lcom/tencent/mm/k/a;
.source "SourceFile"


# instance fields
.field final synthetic hdA:Lcom/tencent/mm/ui/qrcode/j;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/j;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/k;->hdA:Lcom/tencent/mm/ui/qrcode/j;

    invoke-direct {p0}, Lcom/tencent/mm/k/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/tencent/mm/k/a;->e(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/k/a;->onError(ILjava/lang/String;)V

    .line 129
    return-void
.end method
